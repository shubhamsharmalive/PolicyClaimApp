using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PolicyClaimApp.Startup))]
namespace PolicyClaimApp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
