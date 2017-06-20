using System.Web;
using System.Text;
using System.IO;
using System.Net;
using System;
using System.Collections.Generic;

namespace ZiDiv.Base.Common
{
    /// <summary>
    /// 类名：Config
    /// 功能：基础配置类
    /// 详细：设置帐户有关信息及返回路径
    /// 版本：3.3
    /// 日期：2012-07-05
    /// 说明：
    /// 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
    /// 该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
    /// 
    /// 如何获取安全校验码和合作身份者ID
    /// 1.用您的签约支付宝账号登录支付宝网站(www.alipay.com)
    /// 2.点击“商家服务”(https://b.alipay.com/order/myOrder.htm)
    /// 3.点击“查询合作者身份(PID)”、“查询安全校验码(Key)”
    /// </summary>
    public class Config
    {
        #region 字段
        private static string partner = "";
        private static string private_key = "";
        private static string public_key = "";
        private static string input_charset = "";
        private static string sign_type = "";
        #endregion

        static Config()
        {
            //↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

            //合作身份者ID，以2088开头由16位纯数字组成的字符串
            partner = "2088911779291354";

            //商户的私钥
            private_key = @"MIICXQIBAAKBgQC2zKVQzOJYolISC+XCWVvSq8eOzXH0ldPL2EvZC99TD6dBaLxL0bUnCMGsvRuJ7EPxReQ8avuJRzCyLOKvQsofq+7AbNUmUiHFFZC0umQOYEeZyQvJHZ5FZM95j0ZvcGWp6oWWNQGCFNinETll6Tbw8RG488IQFba3Xrce5/GmEwIDAQABAoGAWDXOvHvx6cWChxTYrX1DcxjTtpRrHhTC3IYmq7kv7jwKgOTSoF+04/40v2+N/3NUofQRHBqgAPGqjQBd7ybys58RSr7zwzinxCIIzBFPsdOPvziqHzg1z5Hnfq2nHDmo6xM8PTR/QSmYVXcvSkQFYa8/06ZmrzcpwQx6FuZCr0ECQQDaUS0DeJK2hjikimdLN66Eq5Nyz+rg5CJGzgkrsj+6APSQ7AsRd1Vx0QaQ3YxBX+nBRVPNoojCvmuhSSsTApUzAkEA1loKulSV50U39xN65vibUAJJ9T8ddqdXul+gSPsY61EB9WICWp8eV6/YhZDV5ae5XZ6J3Yio4OfL/CfMojTroQJBAIAZHWZp+vvqKZYyN4Wk+FuUKQI3CURH1+zfu/XNsyK6qMXYGm53LMWJtmaN+FvroUbsHM4Nzl0mShTqz8FpxI0CQHdE7sczHZ3rw/I04qP2HOVuAJz3m3tULdpELzmsjfcRwhc5i7nE4+tCqyXWq033/4p6Fpgv3FgYYkZSFukCrUECQQCxZc9xV8pkmbpL/RGK2/fjPJaOnrblk0OPEgxE8FjNujC+54b0fU71rhiyajninROujithRuDWbV3u2BVFPJjP";

            //支付宝的公钥，无需修改该值
            public_key = @"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB";

            //↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑



            //字符编码格式 目前支持 gbk 或 utf-8
            input_charset = "utf-8";

            //签名方式，选择项：RSA、DSA、MD5
            sign_type = "RSA";
        }

        #region 属性
        /// <summary>
        /// 获取或设置合作者身份ID
        /// </summary>
        public static string Partner
        {
            get { return partner; }
            set { partner = value; }
        }

        /// <summary>
        /// 获取或设置商户的私钥
        /// </summary>
        public static string Private_key
        {
            get { return private_key; }
            set { private_key = value; }
        }

        /// <summary>
        /// 获取或设置支付宝的公钥
        /// </summary>
        public static string Public_key
        {
            get { return public_key; }
            set { public_key = value; }
        }

        /// <summary>
        /// 获取字符编码格式
        /// </summary>
        public static string Input_charset
        {
            get { return input_charset; }
        }

        /// <summary>
        /// 获取签名方式
        /// </summary>
        public static string Sign_type
        {
            get { return sign_type; }
        }
        #endregion
    }
}