using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;

using System.Collections.Generic;
using System.Text;
using System.Globalization;
using System.Text.RegularExpressions;

/// <summary>
/// FtpAndHttpUpload 的摘要说明 NNLL 2007-8-11 本地上传和异地上传的类
/// 17:13 2007-8-13完成，这里面带所有方法，异地上传和本地上传各有两种方法，备份，准备整理
/// </summary>
public class FtpAndHttpUpload
{
    #region 公共属性和公共方法

    #region 定义两个枚举和八个类属性，包含构造函数、ftp信息、缩略图大小
    //定义命名方式
    public enum fileNameType
    {
        Time,
        originalName
    }
    //定义目录命名方式
    public enum nowFolderType
    {
        noFolder,
        yyyyMM,
        yyyy_MM,
        yyyy_MM_dd
    }
    //定义一个Label，这个Label对应在aspx页面中显示错误信息Label
    private Label LabelMsg;

    //六个类属性，值是设置在web.config里的，在构造函数中取
    private string ftpHttp;     //ftp服务器对应的http地址
    private string ftpIP;       //ftp服务器的ip
    private string ftpUserName; //连接ftp服务器的用户名
    private string ftpPassword; //连接ftp服务器的密码
    private string allowedFile; //允许上传的文件类型
    private decimal limitSize;  //上传文件的大小的最大限制

    //三个水印和缩略图有关的属性
    private System.Drawing.Color waterColor;
    private bool needWater;
    private bool needSmall;

    //三个属性，是否要限制文件大小、命名方式、中间文件夹命名方式
    private bool needLimitSize;
    private fileNameType ft;
    private nowFolderType nt;

    //两个属性，用在缩略图中，就是大图按比例绽放后，不越过minW * minH
    private int minW = 120;
    private int minH = 80;

    public FtpAndHttpUpload(bool NeedSmall, bool NeedWater, System.Drawing.Color WaterColor, bool NeedLimitSize, fileNameType FT, nowFolderType NT, Label LabelMsgAspx)
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
        LabelMsg = LabelMsgAspx;
        if (LabelMsg != null)
        {
            LabelMsg.Text = "";
        }
        //设置ftp信息
        ftpHttp = GetAppSettings("ftpHttp", "/");
        ftpIP = GetAppSettings("ftpIP", "/");
        ftpUserName = GetAppSettings("ftpUserName", "");
        ftpPassword = GetAppSettings("ftpPassword", "");
        allowedFile = GetAppSettings("allowedFile", "");
        try
        {
            limitSize = Convert.ToDecimal(GetAppSettings("maxFileSize", ""));
        }
        catch(FormatException)
        {
            limitSize=5120M;
        }
        //设置水印和缩略图属性
        needSmall = NeedSmall;
        needWater = NeedWater;
        waterColor = WaterColor;
        //三个属性
        needLimitSize = NeedLimitSize;
        ft = FT;
        nt = NT;
    }
    private string GetAppSettings(string key,string affix)
    {
        string value;
        try
        {
            value = ConfigurationManager.AppSettings[key].ToString();
            if (affix.Length > 0)
            {
                if (!value[value.Length - 1].Equals(affix))
                {
                    value = value + affix;
                }
            }
        }
        catch (NullReferenceException)
        {
            value = affix;
        }
        return value;
    }
    #endregion

    #region 检查文件有效性：bool CheckSize(decimal size)和bool CheckType(string fileExtension)

    #region 判断文件扩展名和文件大小：bool CheckSize(decimal size)
    private bool CheckSize(decimal size)
    {
        if (size > limitSize)
        {
            if (LabelMsg != null)
            {
                LabelMsg.Text += "上传失败：文件大小不允许超过" + limitSize.ToString() + "KB";
            }
            return false;
        }
        return true;
    }
    #endregion

    #region 判断文件扩展名的有效性：bool CheckType(string fileExtension)
    private bool CheckType(string fileExtension)
    {
        bool fileok = false;
        string[] allowedExtension = allowedFile.Split(',');
        int i;
        for (i = 0; i < allowedExtension.Length; i++)
        {
            if (fileExtension == allowedExtension[i])
            {
                fileok = true;
                break;
            }
        }
        if (!fileok)
        {
            if (LabelMsg != null)
            {
                LabelMsg.Text += "本系统不支持上传" + fileExtension + "文件";
            }
            return false;
        }
        return true;
    }
    #endregion

    #endregion

    #region 按不同的方式取新的文件名：string GetFileName(fileNameType ft, string fna, string fileExtension)
    private string GetFileName(fileNameType ft, string fna, string fileExtension)
    {
        switch (ft)
        {
            case fileNameType.Time:
                fna = DateTime.Now.Year.ToString().PadLeft(2, '0');
                fna += DateTime.Now.Month.ToString().PadLeft(2, '0');
                fna += DateTime.Now.Day.ToString().PadLeft(2, '0');
                fna += DateTime.Now.Hour.ToString().PadLeft(2, '0');
                fna += DateTime.Now.Minute.ToString().PadLeft(2, '0');
                fna += DateTime.Now.Second.ToString().PadLeft(2, '0');
                fna += DateTime.Now.Millisecond.ToString().PadLeft(3, '0');
                fna += fileExtension;
                break;
            case fileNameType.originalName:
                //用原来的文件名，不变
                break;
        }
        return fna;
    }
    #endregion

    #region 生成缩略图时按原图取minW和minH内的尺寸
    private void SetNewSize(int width, int height, out int nW, out int nH)
    {
        //取缩略图的大小
        int zoomWay = 0;
        nW = 1;
        nH = 1;
        if (width > height)
        {
            //图片打横
            if (width / height > minW / minH)
            {
                zoomWay = 1;  //按width缩放
            }
            else
            {
                zoomWay = 2;//按height缩放
            }
        }
        else
        {
            //图片打坚
            if (height / width > minH / minW)
            {
                zoomWay = 2;//按height缩放
            }
            else
            {
                zoomWay = 1;//按width缩放
            }
        }
        if (zoomWay == 1)
        {
            //按width缩放
            nW = minW;
            nH = Convert.ToInt32(nW * minH / minW);
            if (nH == 0)
            {
                nH = 1;
            }
        }
        else if (zoomWay == 2)
        {
            //按height缩放
            nH = minH;
            nW = Convert.ToInt32(nH * minW / minH);
            if (nW == 0)
            {
                nW = 1;
            }
        }
        else
        {
            nW = minW;
            nH = minH;
        }
    }
    #endregion

    #region 判断图片有效性：bool CheckPic(FileUpload fu, ref string fileExtension)
    private bool CheckPic(FileUpload fu, ref string fileExtension)
    {
        string picExtension = "|.jpg|.jpeg|.gif|.png|.bmp|";
        if (!fu.HasFile)
        {
            LabelMsg.Text += "请先选择文件";
            return false;
        }
        fileExtension = System.IO.Path.GetExtension(fu.FileName).ToLower();
        if (picExtension.IndexOf("|" + fileExtension + "|") == -1)
        {
            LabelMsg.Text += "请选择图片文件后再上传";
            return false;
        }
        return true;
    }
    #endregion

    #endregion

    #region 异地上传两种方法

    #region 创建FtpWebRequest连接：FtpWebResponse OpenFtp(Uri uri, string FtpMathod)
    private FtpWebResponse OpenFtp(Uri uri, string FtpMathod)
    {
        try
        {
            FtpWebRequest ftpWebRequest = (FtpWebRequest)WebRequest.Create(uri);
            ftpWebRequest.Method = FtpMathod;
            ftpWebRequest.KeepAlive = false;
            ftpWebRequest.UseBinary = true;
            ftpWebRequest.Credentials = new NetworkCredential(ftpUserName, ftpPassword);
            return (FtpWebResponse)ftpWebRequest.GetResponse();
        }
        catch (Exception e)
        {
            if (LabelMsg != null)
            {
                LabelMsg.Text += "<p>连接" + uri + "出错：" + e.Message;
            }
        }
        return null;
    }
    #endregion

    #region 建立FtpWebRequest连接，用于上传文件，打开一个指向ftp服务器上的文件流
    private Stream SetStreamFtp(string uri, long fileSize)
    {
        try
        {
            //根据目录创建FtpWebRequest对象
            FtpWebRequest ftp;
            ftp = (FtpWebRequest)FtpWebRequest.Create(new Uri(uri));
            //ftp的用户名和密码
            ftp.Credentials = new NetworkCredential(ftpUserName, ftpPassword);

            //设置请求完成后，自动关闭连接
            ftp.KeepAlive = false;
            //执行上传命令
            ftp.Method = WebRequestMethods.Ftp.UploadFile;
            //数据传输类型
            ftp.UseBinary = true;
            //上传文件时通知服务器文件的大小
            ftp.ContentLength = fileSize;

            //打开一个指向ftp服务器上的文件的流
            Stream streamFtp = ftp.GetRequestStream();
            return streamFtp;
        }
        catch(Exception e)
        {
            if (LabelMsg != null)
            {
                LabelMsg.Text = "<p>连接ftp服务器失败：" + e.Message;
            }
        }
        return null;
    }
    #endregion

    #region 返回ftp服务器上面uri下的所有文件夹名称：string ListAllDic(string uri)
    private string ListAllDic(string uri)
    {
        FtpWebResponse ftpWebResponse;
        //建立ftp连接
        ftpWebResponse = OpenFtp(new Uri(uri), WebRequestMethods.Ftp.ListDirectoryDetails);
        if (ftpWebResponse == null)
        {
            return "";
        }
        //ftpWebResponse = OpenFtp(new Uri(uri), WebRequestMethods.Ftp.ListDirectory);  //这个是列出所有文件的名称，不带文件夹
        //读取目录信息
        StringBuilder sb = new StringBuilder();
        StreamReader stream = new StreamReader(ftpWebResponse.GetResponseStream(), Encoding.Default);
        //循环读取每一行
        string line = "";
        string[] temp;
        line = stream.ReadLine();
        while (line != null)
        {
            temp = line.Split(' ');
            if (temp[0].Equals("drw-rw-rw-"))
            {
                if (!temp[temp.Length - 1].Equals(".") && !temp[temp.Length - 1].Equals(".."))
                {
                    line = temp[temp.Length - 1];
                    sb.Append(line);
                    sb.Append("|");
                }
            }
            line = stream.ReadLine();
        }
        line = sb.ToString();
        //释放资源
        ftpWebResponse.Close();
        //返回当前目录下的所有文件夹名称
        return "|" + line;
    }
    #endregion

    #region 在ftp服务器上，在指定的uri下，创建目录dicName：bool CreateDic(string uri, string dicName)
    private bool CreateDic(string uri, string dicName)
    {
        try
        {
            FtpWebResponse ftpWebResponse;
            ftpWebResponse = OpenFtp(new Uri(uri + dicName + "/"), WebRequestMethods.Ftp.MakeDirectory);
            return true;
        }
        catch (System.Net.WebException)// e)
        {
            /*
            if (LabelMsg != null)
            {
                LabelMsg.Text += "<br>创建文件夹：" + dicName + "，失败：" + e.Message;
            }
            */
        }
        return false;
    }
    #endregion

    #region 检查ftp服务器有没有uri指向的目录，如果ftpIP可以连接，目录不存在就创建目录：bool CheckDicExistAndCreateDic(string uri)
    private bool CheckDicExistAndCreateDic(string uri)
    {
        bool dicExist = true;
        int i, n;
        string tDic, nowDic = "";
        string[] dic;
        //保证uri以/结尾
        if (!uri[uri.Length - 1].Equals('/'))
        {
            uri += "/";
        }
        //把每一级目录取到数组里
        tDic = uri.Replace(ftpIP, "");
        dic = tDic.Split('/');
        n = dic.Length - 1;
        if (n == 0)
        {
            //给出的uri就是ftpIP，如果可以连接，就是存在目录
            FtpWebResponse ftpWebResponse;
            ftpWebResponse = OpenFtp(new Uri(ftpIP), WebRequestMethods.Ftp.ListDirectory);
        }
        else
        {
            for (i = 0; i < n; i++)
            {
                //设置当前目录
                if (i == 0)
                {
                    nowDic = ftpIP;
                }
                else
                {
                    nowDic = nowDic + dic[i - 1] + "/";
                }
                //取当前目录下的所有文件夹名称
                tDic = ListAllDic(nowDic);
                if (tDic.IndexOf("|" + dic[i] + "|") > -1)
                {
                }
                else
                {
                    dicExist = false;
                    //创建文件夹
                    dicExist = CreateDic(nowDic, dic[i]);
                    if (dicExist)
                    {
                    }
                    else
                    {
                        //这一级的文件夹创建失败，跳出，不用再往下创建了
                        dicExist = false;
                        break;
                    }
                }
            }
        }
        return dicExist;
    }
    #endregion

    #region 根据目录命名方式取出中间目录，调用CheckDicExistAndCreateDic方法检查目录有效性并创建目录
    //参数fileFtpName：传入ftpIP+folder，传出ftpIP+folder+根据目录命名方式取的中间目录
    //参数fileHttpName：ftpIP+folder对应的http路径
    private bool GetFtpAllUri(ref string fileFtpName, ref string fileHttpName)
    {
        bool ok;
        string tempFolder = "";
        switch (nt)
        {
            case nowFolderType.noFolder:
                break;
            case nowFolderType.yyyyMM:
                tempFolder = DateTime.Now.Year.ToString().PadLeft(4, '0') + DateTime.Now.Month.ToString().PadLeft(2, '0');
                break;
            case nowFolderType.yyyy_MM:
                tempFolder = DateTime.Now.Year.ToString().PadLeft(4, '0') + "/" + DateTime.Now.Month.ToString().PadLeft(2, '0');
                break;
            case nowFolderType.yyyy_MM_dd:
                tempFolder = DateTime.Now.Year.ToString().PadLeft(4, '0') + "/" + DateTime.Now.Month.ToString().PadLeft(2, '0') + "/" + DateTime.Now.Day.ToString().PadLeft(2, '0');
                break;
        }
        fileFtpName = fileFtpName + tempFolder;
        //如果检查目录和生成目录成功
        ok = CheckDicExistAndCreateDic(fileFtpName);
        if (ok)
        {
            fileHttpName = fileHttpName + tempFolder;
        }
        else
        {
            fileFtpName = "";
            fileHttpName = "";
        }
        return ok;
    }
    #endregion

    #region 把文件流写入用uri打开的另一个文件流中：bool StreamToUri(string uri, long fileSize, FileStream fs, bool AutoCloseFileStream)
    private bool StreamToUri(string uri, long fileSize, FileStream fs, bool AutoCloseFileStream)
    {
        bool fileok = true;
        //根据目录创建FtpWebRequest对象
        FtpWebRequest ftp;
        ftp = (FtpWebRequest)FtpWebRequest.Create(new Uri(uri));
        //ftp的用户名和密码
        ftp.Credentials = new NetworkCredential(ftpUserName, ftpPassword);

        //设置请求完成后，自动关闭连接
        ftp.KeepAlive = false;
        //执行上传命令
        ftp.Method = WebRequestMethods.Ftp.UploadFile;
        //数据传输类型
        ftp.UseBinary = true;
        //上传文件时通知服务器文件的大小
        ftp.ContentLength = fileSize;
        //设置缓冲大小为2KB
        int bufferLength = 2048;

        byte[] buffer = new byte[bufferLength];
        int contentLength;
        
        //打开一个文件流读取准备上传的文件
        //FileStream fs = fileinfo.OpenRead();
        try
        {
            //开一个指向ftp上的文件流，把fs写入这个文件流就是上传了
            Stream stream = ftp.GetRequestStream();
            //每次读文件流的2kb
            contentLength = fs.Read(buffer, 0, bufferLength);
            //流内容没有结束
            while (contentLength != 0)
            {
                //把内容从file stream 写入 upload stream
                stream.Write(buffer, 0, contentLength);
                contentLength = fs.Read(buffer, 0, bufferLength);
            }
            //闭两个流
            stream.Close();
            if (AutoCloseFileStream)
            {
                fs.Close();
            }

            if (LabelMsg != null)
            {
                LabelMsg.Text += "<p>上传成功";
            }
        }
        catch (Exception ex)
        {
            if (LabelMsg != null)
            {
                LabelMsg.Text += "<p>上传失败：" + ex.Message;
            }
            fileok = false;
        }
        return fileok;
    }
    #endregion

    #region 异地上传，带水印和缩略图：bool UploadByFtpWithWaterAndSmall(FileUpload fu, bool needLimitSize, string folder, fileNameType ft, nowFolderType nt, out decimal fileSize, out string fileHttpName, out string fileFtpName, out string fileHttpSmallName, out string fileFtpSmallName)
    public bool UploadByFtp(FileUpload fu, string folder, out decimal fileSize, out string fileHttpName, out string fileFtpName, out string fileHttpSmallName, out string fileFtpSmallName)
    {
        #region 初始化五个out参数，判断图片有效性
        fileSize = 0.00M;
        fileHttpName = "";
        fileFtpName = "";
        fileHttpSmallName = "";
        fileFtpSmallName = "";
        
        string fileExtension = "";
        if (!CheckPic(fu,ref fileExtension))
        {
            return false;
        }
        //控制folder是“目录/”的格式
        if (folder.Length > 0)
        {
            if (folder[0].Equals('/'))
            {
                folder = folder.Remove(0, 1);
            }
            if (!folder[folder.Length - 1].Equals('/'))
            {
                folder = folder + "/";
            }
        }
        //取要上传的文件信息
        FileInfo fileinfo = new FileInfo(fu.PostedFile.FileName);
        fileSize = fileinfo.Length / 1024;
        #endregion

        #region 取原图和缩略图的文件名：fileFtpName,fileHttpName和fileFtpSmallName,fileHttpSmallName
        string fileName;
        fileName = GetFileName(ft, fileinfo.Name, fileExtension);
        //folder + 中间目录 + fileName，中间目录要另外写一个方法，取到中间目录后，要检查目录存在性，如果不存在，就创建目录
        fileFtpName = ftpIP + folder;
        fileHttpName = ftpHttp + folder;
        if (GetFtpAllUri(ref fileFtpName, ref fileHttpName))
        {
            if (!fileFtpName[fileFtpName.Length - 1].Equals('/'))
            {
                fileFtpName += "/";
            }
            fileFtpName += fileName;
            if (!fileHttpName[fileHttpName.Length - 1].Equals('/'))
            {
                fileHttpName += "/";
            }
            fileHttpName += fileName;
        }
        else
        {
            //目录不存在，或者是目录创建失败
            LabelMsg.Text += "<p>文件上传失败：目录不存在，或者是目录创建失败";
            return false;
        }
        fileFtpSmallName = fileFtpName.Remove(fileFtpName.LastIndexOf('.')) + "_s" + fileExtension;
        fileHttpSmallName = fileHttpName.Remove(fileHttpName.LastIndexOf('.')) + "_s" + fileExtension;
        #endregion

        //LabelMsg.Text += "<p>开始上传：<br>fileFtpName=" + fileFtpName + "<br>fileHttpName=" + fileHttpName + "<br>fileFtpSmallName=" + fileFtpSmallName + "<br>fileHttpSmallName=" + fileHttpSmallName;

        bool fileok = true;
        FileStream fs = fileinfo.OpenRead();

        #region 上传原图
        if (needWater)
        {
            //要打水印
            try
            {
                Stream streamFtp = SetStreamFtp(fileFtpName, fs.Length);
                System.Drawing.Image imageWater = System.Drawing.Image.FromStream(fs);
                Graphics g = Graphics.FromImage(imageWater);
                g.DrawImage(imageWater, 0, 0, imageWater.Width, imageWater.Height);
                Font font = new Font("Fixedsys", 20);
                System.Drawing.SolidBrush brush = new System.Drawing.SolidBrush(waterColor);
                string imageText;
                imageText = GetAppSettings("imageText", "");// ConfigurationManager.AppSettings["imageText"].ToString();
                //g.DrawString(要加的文字,字体及大小,笔触及颜色,起笔时离图片左边的距离也就是X轴,起笔时离图片顶部的距离也就是Y轴但是向下算的);
                g.DrawString(imageText, font, brush, 20, 10);
                g.Dispose();
                //用保存图片
                imageWater.Save(streamFtp, ImageFormat.Jpeg);
                streamFtp.Close();
                //LabelMsg.Text += "<p>上传打了水印的图片成功";
            }
            catch (Exception)// ew)
            {
                //LabelMsg.Text += "加水印失败：" + ew.Message;
                fileok = false;
            }
        }
        else
        {
            //直接上传
            fileok = StreamToUri(fileFtpName, fs.Length, fs, true);
            /*
            if (fileok)
            {
                LabelMsg.Text += "<p>上传原图成功";
            }
            */
        }
        #endregion

        #region 上传缩略图
        if (fileok && needSmall)
        {
            try
            {
                //生成缩略图
                System.Drawing.Image.GetThumbnailImageAbort myCallback = new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback);
                //使用FileStream生成图像，使用了颜色校正
                System.Drawing.Bitmap bitmap = new System.Drawing.Bitmap(fs, true);
                //取缩略图大小
                int nW, nH;
                SetNewSize(bitmap.Width, bitmap.Height, out nW, out nH);
                System.Drawing.Image newImage = bitmap.GetThumbnailImage(nW, nH, myCallback, System.IntPtr.Zero);
                //保存缩略图到ftp服务器上
                Stream streamSmall = SetStreamFtp(fileFtpSmallName, fs.Length);
                newImage.Save(streamSmall, ImageFormat.Jpeg);
                streamSmall.Close();
            }
            catch (Exception)// ew)
            {
                fileok = false;
                /*
                if (LabelMsg != null)
                {
                    LabelMsg.Text += "<p>生成缩略图失败：" + ew.Message;
                }
                */
            }
        }
        else
        {
            //不用上传缩略图
            fileFtpSmallName = "";
            fileHttpSmallName = "";
        }
        #endregion

        fs.Close();
        if (!fileok)
        {
            fileSize = 0.00M;
            fileHttpName = "";
            fileFtpName = "";
            fileHttpSmallName = "";
            fileFtpSmallName = "";
        }
        return fileok;
    }
    #endregion

    #endregion

    #region 本地上传，两种方法

    #region 设置当前目录：bool SetNowFolder，path：放置文件的绝对路径，nowFolder：放置文件的虚拟路径
    private bool SetNowFolder(Page aPage, ref string path, ref string nowFolder)
    {
        bool create = true;
        string tempFolder = "";
        //一开始，文件目录就是path
        nowFolder = path;
        //按枚举值取在path指向的文件夹中，文件存储的目录
        switch (nt)
        {
            case nowFolderType.noFolder:
                create = false;
                break;
            case nowFolderType.yyyyMM:
                tempFolder = DateTime.Now.Year.ToString().PadLeft(4, '0') + DateTime.Now.Month.ToString().PadLeft(2, '0');
                break;
            case nowFolderType.yyyy_MM:
                tempFolder = DateTime.Now.Year.ToString().PadLeft(4, '0') + "\\" + DateTime.Now.Month.ToString().PadLeft(2, '0');
                break;
            case nowFolderType.yyyy_MM_dd:
                tempFolder = DateTime.Now.Year.ToString().PadLeft(4, '0') + "\\" + DateTime.Now.Month.ToString().PadLeft(2, '0') + "\\" + DateTime.Now.Day.ToString().PadLeft(2, '0');
                break;
        }
        if (create)
        {
            //当目录不存在时，要生成目录
            path = path + tempFolder + "\\";
            path = aPage.Server.MapPath(path);
            try
            {
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }
            }
            catch (Exception)
            {
                return false;
            }
        }
        else
        {
            //不需要生成目录，文件是直接存在外部设置的文件夹里，不分类存储的
            path = aPage.Server.MapPath(path);
        }
        //生成现在的虚拟路径
        //替换\\成/，用于返回http路径
        if (tempFolder.Equals(""))
        {
            if (nowFolder[nowFolder.Length - 1].Equals('/'))
            {
                nowFolder = nowFolder.Remove(nowFolder.LastIndexOf('/')) + "/";
            }
        }
        else
        {
            tempFolder = tempFolder.Replace("\\", "/");
            nowFolder = nowFolder + tempFolder + "/";
        }
        //tempFolder = tempFolder.Replace("\\", "/");

        return true;
    }
    #endregion

    #region 本地上传文件，不带缩略图和水印：bool UploadToLocal(Page aPage, FileUpload fu, bool needLimitSize, string folder, fileNameType ft, nowFolderType nt, out decimal fileSize, out string fileHttpName)
    private bool UploadToLocal(Page aPage, FileUpload fu, string folder, out decimal fileSize, out string fileHttpName)
    {
        #region 上传前的初始化、检查文件有效性
        //初始化两个out参数
        fileHttpName = "";
        fileSize = 0.00M;

        //控制folder是“目录/”的格式
        if (folder.Length > 0)
        {
            if (folder[0].Equals('/'))
            {
                folder = folder.Remove(0, 1);
            }
            if (!folder[folder.Length - 1].Equals('/'))
            {
                folder = folder + "/";
            }
        }

        if (!fu.HasFile)
        {
            LabelMsg.Text += "请先选择文件";
            return false;
        }

        //取要上传的文件信息
        FileInfo fileinfo = new FileInfo(fu.PostedFile.FileName);
        fileSize = fileinfo.Length;
        fileSize = fileSize / 1024;

        //判断文件大小
        if (needLimitSize)
        {
            if (!CheckSize(fileSize))
            {
                return false;
            }
        }
        //判断文件扩展名
        if (!CheckType(fileinfo.Extension))
        {
            return false;
        }
        #endregion

        #region 取新的文件名
        string fileName;
        string nowFolder = "", path = "";
        fileName = GetFileName(ft, fileinfo.Name, fileinfo.Extension);

        path = folder;
        if (!SetNowFolder(aPage, ref path, ref nowFolder))
        {
            if (LabelMsg != null)
            {
                LabelMsg.Text += "上传文件失败：创建目录失败";
            }
            return false;
        }
        fileHttpName = nowFolder + fileName;
        #endregion

        //上传
        bool fileok;
        try
        {
            path = path + fileName;
            fu.SaveAs(path);
            fileok = true;
        }
        catch (Exception ex)
        {
            if (LabelMsg != null)
            {
                LabelMsg.Text += "上传文件失败：" + ex.Message;
            }
            fileok = false;
        }
        return fileok;
    }
    #endregion

    #region 上传图片，同时生成缩略图或水印：UploadSmallWater(Page aPage, FileUpload fu, bool needLimitSize, string folder, fileNameType ft, nowFolderType nt, Label LabelMsg, out decimal fileSize, out string fileHttpName, out string fileSmallName)
    public bool ThumbnailCallback()
    {
        return false;
    }
    public bool UploadByHttp(Page aPage, FileUpload fu, string folder, Label LabelMsg, out decimal fileSize, out string fileHttpName, out string fileSmallName,out bool isPic)
    {

        #region 初始化三个out参数，判断图片有效性
        fileSize = 0.00M;
        fileHttpName = "";
        fileSmallName = "";
        string fileExtension = "";
        isPic = CheckPic(fu, ref fileExtension);
        /*
        if (!CheckPic(fu, ref fileExtension))
        {
            return false;
        }
        */
        #endregion

        //上传原始图片
        if (!UploadToLocal(aPage, fu, folder, out fileSize, out fileHttpName))
        {
            return false;
        }

        if (isPic)
        {
            //取水印图和缩略图名称
            int index;
            string fileWaterName;
            index = fileHttpName.LastIndexOf('/');
            fileSmallName = fileHttpName.Substring(index);
            fileWaterName = fileSmallName;
            fileSmallName = fileSmallName.Replace(fileExtension, "") + "_s" + fileExtension;
            fileSmallName = fileHttpName.Substring(0, index) + fileSmallName;
            fileWaterName = fileWaterName.Replace(fileExtension, "") + "_w" + fileExtension;
            fileWaterName = fileHttpName.Substring(0, index) + fileWaterName;

            bool ok = true;
            #region 生成水印，重新保存原图
            if (needWater)
            {
                try
                {
                    System.Drawing.Image imageWater = System.Drawing.Image.FromFile(aPage.Server.MapPath(fileHttpName));
                    Graphics g = Graphics.FromImage(imageWater);
                    g.DrawImage(imageWater, 0, 0, imageWater.Width, imageWater.Height);
                    Font font = new Font("Fixedsys", 20);
                    System.Drawing.SolidBrush brush = new System.Drawing.SolidBrush(waterColor);
                    string imageText;
                    imageText = ConfigurationManager.AppSettings["imageText"].ToString();
                    //g.DrawString(要加的文字,字体及大小,笔触及颜色,起笔时离图片左边的距离也就是X轴,起笔时离图片顶部的距离也就是Y轴但是向下算的);
                    g.DrawString(imageText, font, brush, 20, 10);
                    g.Dispose();
                    //用保存图片
                    imageWater.Save(aPage.Server.MapPath(fileWaterName));
                    imageWater.Dispose();
                    //删除原图
                    File.Delete(aPage.Server.MapPath(fileHttpName));
                    //记录现在的文件名
                    fileHttpName = fileWaterName;
                }
                catch (Exception ew)
                {
                    LabelMsg.Text += "加水印失败：" + ew.Message;
                    return false;
                }
            }
            #endregion

            #region 根据原始图片生成缩略图
            if (needSmall)
            {
                //取原图
                try
                {
                    System.Drawing.Image.GetThumbnailImageAbort myCallback = new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback);
                    System.Drawing.Bitmap bitmap = new System.Drawing.Bitmap(aPage.Server.MapPath(fileHttpName));
                    //取缩略图的大小
                    int nW, nH;
                    SetNewSize(bitmap.Width, bitmap.Height, out nW, out nH);
                    System.Drawing.Image newImage = bitmap.GetThumbnailImage(nW, nH, myCallback, System.IntPtr.Zero);
                    newImage.Save(aPage.Server.MapPath(fileSmallName));
                }
                catch (Exception ex)
                {
                    LabelMsg.Text += "生成缩略图失败：" + ex.Message;
                    return false;
                }
            }
            else
            {
                //不用生成缩略图
                fileSmallName = "";
            }
            #endregion
            return ok;
        }
        return true;
    }
    #endregion
    
    #endregion
}