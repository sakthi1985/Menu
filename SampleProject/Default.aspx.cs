using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace SampleProject
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblsetcookie.Attributes.Add("onclick", string.Format("SetCookie('{0}','{1}','{2}');", "10000", 3));
            }
        }
        protected void CheckCookieName(object sender,EventArgs e)
        {
            string name = "";
            if (Request.Cookies["10000"] != null)
            {
                name = Server.HtmlEncode(Request.Cookies["10000"].Value).ToString();
            }
        }
    }
}
