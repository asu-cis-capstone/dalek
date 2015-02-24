using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(tabler.Startup))]
namespace tabler
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
