using FinancialTime.Utils;
using System;

namespace FinancialTime.Web
{
    public partial class FinancialTime : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUser.Text = SessionCls.Getusu_nombre();
        }
    }
}