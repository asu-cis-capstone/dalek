using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Table4.Startup))]
namespace Table4
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
