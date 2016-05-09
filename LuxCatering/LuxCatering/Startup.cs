using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LuxCatering.Startup))]
namespace LuxCatering
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
