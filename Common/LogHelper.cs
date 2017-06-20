using log4net;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace web.Common
{
    /// <summary>   
    /// LogHelper的摘要说明。   
    /// </summary>   
    public class LogHelper
    {
        private LogHelper()
        {
        }

        public static readonly ILog loginfo = LogManager.GetLogger("loginfo");   //选择<logger name="loginfo">的配置 

        public static readonly ILog logerror = LogManager.GetLogger("logerror");   //选择<logger name="logerror">的配置 


        /// <summary>
        /// 默认配置。按配置文件
        /// </summary>
        public static void SetConfig()
        {
            log4net.Config.XmlConfigurator.Configure();
        }

        /// <summary>
        /// 手动设置,重新配置信息
        /// </summary>
        /// <param name="configFile"></param>
        public static void SetConfig(FileInfo configFile)
        {
            log4net.Config.XmlConfigurator.Configure(configFile);
        }

        /// <summary>
        /// 写信息。
        /// </summary>
        /// <param name="info"></param>
        public static void WriteLog(string info)
        {
            if (loginfo.IsInfoEnabled)
            {
                loginfo.Info(info);
            }
        }

        /// <summary>
        /// 写日志。出错时会写入
        /// </summary>
        /// <param name="info"></param>
        /// <param name="se"></param>
        public static void WriteLog(string info, Exception se)
        {
            if (logerror.IsErrorEnabled)
            {
                logerror.Error(info, se);
            }
        }
    }
}
