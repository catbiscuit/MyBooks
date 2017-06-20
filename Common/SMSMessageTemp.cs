using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using web.Common;

namespace ZiDiv.Base.Common
{

    public class SMSMessagesTemp
    {
        /// <summary>
        /// 云通信短信发送接口
        /// </summary>
        /// <param name="strArray">短信模板内的标示参数如：验证码、分钟数</param>
        /// <param name="phone">要发送的手机号,如15255131592</param>
        /// <param name="templateNo">发送的模板编号，如23355</param>
        public bool SendiMessage(string[] strArray,string phone,string templateNo)
        {
            string ret = null;

            CCPRestSDK api = new CCPRestSDK();
            //ip格式如下，不带https://
            bool isInit = api.init("app.cloopen.com", "8883");
            api.setAccount("aaf98f894d22eb10014d2807a19a04dd", "143d8493180c4b94bb79c9c32c654caf");
            api.setAppId("8a48b5514d232afc014d280c40f103a2");

            try
            {
                if (isInit)
                {
                    Dictionary<string, object> retData = api.SendTemplateSMS(phone, templateNo, strArray);
                    ret = getDictionaryData(retData);
                    return true;
                }
                else
                {
                    ret = "初始化失败";
                    return false;
                }
            }
            catch (Exception exc)
            {
                ret = exc.Message;
                LogHelper.WriteLog("短信发送异常",exc);
                return false;
            }
            finally
            {
                
            }
        }

        private string getDictionaryData(Dictionary<string, object> data)
        {
            string ret = null;
            foreach (KeyValuePair<string, object> item in data)
            {
                if (item.Value != null && item.Value.GetType() == typeof(Dictionary<string, object>))
                {
                    ret += item.Key.ToString() + "={";
                    ret += getDictionaryData((Dictionary<string, object>)item.Value);
                    ret += "};";
                }
                else
                {
                    ret += item.Key.ToString() + "=" + (item.Value == null ? "null" : item.Value.ToString()) + ";";
                }
            }
            return ret;
        }

        public string SendSMSMessages(string phone, string content)
        {
            StringBuilder sbUrl = new StringBuilder();
            sbUrl.AppendFormat("http://106.ihuyi.cn/webservice/sms.php?method=Submit&account=cf_gzfl&password=GDN7zg&mobile={0}&content={1}", phone, content);
            return CreateGetHttpResponse(sbUrl.ToString());
        }

        /// <summary>  
        /// 创建GET方式的HTTP请求  
        /// </summary>  
        /// <param name="url">请求的URL</param>  
        /// <param name="timeout">请求的超时时间</param>  
        /// <param name="userAgent">请求的客户端浏览器信息，可以为空</param>  
        /// <param name="cookies">随同HTTP请求发送的Cookie信息，如果不需要身份验证可以为空</param>  
        /// <returns></returns>  
        public string CreateGetHttpResponse(string url)
        {
            HttpWebRequest request = WebRequest.Create(url) as HttpWebRequest;
            request.Method = "GET";
            request.UserAgent = null;
            WebResponse response = request.GetResponse();
            StreamReader reader = new StreamReader(stream: response.GetResponseStream(), encoding: Encoding.UTF8);
            return reader.ReadToEnd();
        }
    }

}
