using com.igetui.api.openservice;
using com.igetui.api.openservice.igetui;
using com.igetui.api.openservice.igetui.template;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ZiDiv.Base.Common
{
    public class GeTuiMessage
    {
        //参数设置 <-----瑞祥商联卡参数设置----->
        //private static String ALIAS = "瑞祥商联卡";
        //private static String APPID = "gnu5zFESZe6HcsUqxsEIC2";                     //您应用的AppId
        //private static String APPKEY = "G8udEIWmPi6sIfNqnFzCF2";                    //您应用的AppKey
        //private static String MASTERSECRET = "09v4DVt10j6FwKWfPpRfh7";              //您应用的MasterSecret 
        //private static String HOST = "http://sdk.open.api.igexin.com/apiex.htm";    //HOST：OpenService接口地址


        //参数设置 <-----新联商务酒店生产证书参数设置----->
        //private static String ALIAS = "新联商务酒店";
        private static String APPID = "YssjsgZgBC7rDqu8r3S22";                     //您应用的AppId
        private static String APPKEY = "4JaHA6REdY5AtwokBJcoY9";                    //您应用的AppKey
        private static String MASTERSECRET = "FcoR6rKFrA77RPybpKr8v5";              //您应用的MasterSecret 
        private static String HOST = "http://sdk.open.api.igexin.com/apiex.htm";    //HOST：OpenService接口地址
        
        //参数设置 <-----新联商务酒店开发证书参数设置----->
        //private static String APPID = "uN4G6Ham0h9bTAap350GG1";                     //您应用的AppId
        //private static String APPKEY = "HqVM4918hw7fwDAtkjZub8";                    //您应用的AppKey
        //private static String MASTERSECRET = "aJ1kfn4gYo8PojoqfMmv9";              //您应用的MasterSecret 
        //private static String HOST = "http://sdk.open.api.igexin.com/apiex.htm";    //HOST：OpenService接口地址

        /// <summary>
        /// 苹果IOS的APN简化推送
        /// </summary>
        /// <param name="deviceToken">iphone的推送识别号</param>
        /// <param name="message">要透传的消息</param>
        public void APNPush(string deviceToken, string message)
        {
            APNTemplate template = new APNTemplate();
            template.setPushInfo("单信息穿透按钮", 1, message, "", "单透传内容", "", "", "");
            IGtPush push = new IGtPush(HOST, "HqVM4918hw7fwDAtkjZub8", "aJ1kfn4gYo8PojoqfMmv9");

            /*单个用户推送接口*/
            SingleMessage Singlemessage = new SingleMessage();
            Singlemessage.Data = template;
            String pushResult = push.pushAPNMessageToSingle("uN4G6Ham0h9bTAap350GG1", deviceToken, Singlemessage);
            //Console.Write(pushResult);
        }

        /// <summary>
        /// 个推消息推送
        /// </summary>
        /// <param name="clientID">安卓设备的推送识别号</param>
        /// <param name="deviceToken">iphone的推送识别号</param>
        /// <param name="message">要透传的消息</param>
        /// <returns>是否成功</returns>
        public bool SendMessage(string clientID, string deviceToken, string message)
        {
            Environment.SetEnvironmentVariable("needDetails", "true");
            if (!string.IsNullOrEmpty(deviceToken))
            {
                APNPushToSingle(deviceToken, message);
            }
            if (!string.IsNullOrEmpty(clientID))
            {
                PushMessageToSingle(clientID, message);
            }
            return true;
        }

        /// <summary>
        /// 个推消息推送(批量)
        /// </summary>
        /// <param name="clientID">安卓设备的推送识别号列表</param>
        /// <param name="deviceToken">iphone的推送识别号列表</param>
        /// <param name="message">要透传的消息</param>
        /// <returns>是否成功</returns>
        public bool SendMessageToList(List<string> listClientID, List<string> listDeviceToken, string message)
        {
            Environment.SetEnvironmentVariable("needDetails", "true");
            if (listDeviceToken != null && listDeviceToken.Count > 0)
            {
                APNPushToList(listDeviceToken, message);
            }
            if (listClientID != null && listClientID.Count > 0)
            {
                PushMessageToList(listClientID, message);
            }
            return true;
        }

        #region 封装方法受保护，外部不可以调用

        /// <summary>
        /// 苹果IOS的APN简化推送
        /// </summary>
        /// <param name="deviceToken">iphone的推送识别号</param>
        /// <param name="message">要透传的消息</param>
        protected void APNPushToSingle(string deviceToken, string message)
        {
            APNTemplate template = new APNTemplate();
            template.setPushInfo("单信息穿透按钮", 1, message, "", "单透传内容", "", "", "");
            IGtPush push = new IGtPush(HOST, APPKEY, MASTERSECRET);

            /*单个用户推送接口*/
            SingleMessage Singlemessage = new SingleMessage();
            Singlemessage.Data = template;
            String pushResult = push.pushAPNMessageToSingle(APPID, deviceToken, Singlemessage);
            //Console.Write(pushResult);
        }

        /// <summary>
        /// 苹果IOS的APN简化推送(批量)
        /// </summary>
        /// <param name="listDeviceToken">iphone的推送识别号列表</param>
        /// <param name="message">要透传的消息</param>
        protected void APNPushToList(List<string> listDeviceToken, string message)
        {
            APNTemplate template = new APNTemplate();
            template.setPushInfo("多信息穿透按钮", 1, message, "", "多透传内容", "", "", "");
            IGtPush push = new IGtPush(HOST, APPKEY, MASTERSECRET);

            /*多个用户推送接口*/
            ListMessage listmessage = new ListMessage();
            listmessage.Data = template;
            String contentId = push.getAPNContentId(APPID, listmessage);
            String ret = push.pushAPNMessageToList(APPID, contentId, listDeviceToken);
            Console.Out.WriteLine(ret);
        }

        /// <summary>
        /// 安卓的透传推送
        /// </summary>
        /// <param name="clientID">安卓设备的推送识别号</param>
        /// <param name="message">要透传的消息</param>
        protected void PushMessageToSingle(string clientID, string message)
        {
            // 推送主类
            IGtPush push = new IGtPush(HOST, APPKEY, MASTERSECRET);

            //透传模板
            TransmissionTemplate template = TransmissionTemplateDemo(message);

            // 单推消息模型
            SingleMessage singleMessage = new SingleMessage();
            singleMessage.IsOffline = false;                         // 用户当前不在线时，是否离线存储,可选
            singleMessage.OfflineExpireTime = 1000 * 3600 * 12;            // 离线有效时间，单位为毫秒，可选
            singleMessage.Data = template;
            //message.PushNetWorkType = 1;        //判断是否客户端是否wifi环境下推送，1为在WIFI环境下，0为非WIFI环境

            Target target = new Target();
            target.appId = APPID;
            target.clientId = clientID;
            //target.alias = ALIAS;

            String pushResult = push.pushMessageToSingle(singleMessage, target);
            Console.Write(pushResult);
        }

        /// <summary>
        ///  安卓的透传推送（批量）
        /// </summary>
        /// <param name="listClientID">安卓设备的推送识别号（列表）</param>
        /// <param name="message">要透传的消息</param>
        protected void PushMessageToList(List<string> listClientID, string message)
        {
            IGtPush push = new IGtPush(HOST, APPKEY, MASTERSECRET);

            ListMessage ListMessage = new ListMessage();

            //透传功能模板
            TransmissionTemplate template = TransmissionTemplateDemo(message);

            ListMessage.IsOffline = true;                         // 用户当前不在线时，是否离线存储,可选
            ListMessage.OfflineExpireTime = 1000 * 3600 * 12;            // 离线有效时间，单位为毫秒，可选
            ListMessage.Data = template;
            //message.PushNetWorkType = 0;             //判断是否客户端是否wifi环境下推送，1为在WIFI环境下，0为非WIFI环境

            //设置接收者
            List<Target> targetList = new List<Target>();

            foreach (var item in listClientID)
            {
                if (string.IsNullOrEmpty(item)) { continue; }
                Target target = new Target();
                target.appId = APPID;
                target.clientId = item;
                targetList.Add(target);
            }

            String contentId = push.getContentId(ListMessage, "ToList_任务组名");
            String pushResult = push.pushMessageToList(contentId, targetList);
        }

        /// <summary>
        /// 透传模板动作内容
        /// </summary>
        /// <param name="message">透传的消息</param>
        /// <returns>透传实例模板</returns>
        protected static TransmissionTemplate TransmissionTemplateDemo(string message)
        {
            TransmissionTemplate template = new TransmissionTemplate();
            template.AppId = APPID;
            template.AppKey = APPKEY;
            //应用启动类型，1：强制应用启动 2：等待应用启动
            template.TransmissionType = "1";
            //透传内容
            template.TransmissionContent = message;
            //iOS推送需要的pushInfo字段
            //template.setPushInfo("按钮名称", 1, message, "", "透传内容", "", "", "");
            //设置客户端展示时间
            String begin = DateTime.Now.ToString();
            String end = DateTime.Now.AddHours(2).ToString();
            template.setDuration(begin, end);
            return template;
        }

        #endregion
    }
}
