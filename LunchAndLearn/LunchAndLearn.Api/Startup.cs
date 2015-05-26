using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http.Formatting;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;
using Owin;

namespace LunchAndLearn.Api
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            var httpCfg = new HttpConfiguration();
            httpCfg.Routes.MapHttpRoute(name: "DefaultApi", routeTemplate: "api/{controller}/{id}",
                defaults: new {id = RouteParameter.Optional});
            httpCfg.Formatters.Clear();
            httpCfg.Formatters.Add(new JsonMediaTypeFormatter());
            app.UseWebApi(httpCfg);
        }
    }
}
