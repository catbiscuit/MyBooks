using System.Web.SessionState;
using System.Web.Routing;
using System.Web.Http.WebHost;

namespace ZiDiv.Base.Common
{
    public class SessionableControlHandler : HttpControllerHandler, IRequiresSessionState
    {

        public SessionableControlHandler(RouteData routeData)
            : base(routeData)
        {
        }

    }
}