using FinancialTime.Model;
using FinancialTimes.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Security;
using System.Web.UI;

namespace FinancialTime.Web
{
    public partial class frmLogin : System.Web.UI.Page
    {
        int nusu_id = 0;
        string susu_nombre = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            try
            {
                UsuariosDAL _DAL = new UsuariosDAL();
                ft_usuarioModel ft_UsuarioModel = new ft_usuarioModel();
                ft_UsuarioModel.usu_mail = dfusu_mail.Value;
                ft_UsuarioModel.usu_password = dfusu_password.Value;
                List<ft_usuarioModel> lista = null;
                lista = _DAL.ValidateLogin(ft_UsuarioModel);
                if (lista.Count > 0)
                {
                    susu_nombre = lista.FirstOrDefault().usu_nombre;
                    Session["usu_nombre"] = lista.FirstOrDefault().usu_nombre;
                    nusu_id = Convert.ToInt32(lista.FirstOrDefault().usu_id);
                    Session["usu_id"] = lista.FirstOrDefault().usu_id;

                    FormsAuthentication.SetAuthCookie(susu_nombre, true);
                    Response.Redirect(FormsAuthentication.DefaultUrl);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "Close Modal Popup", "alert('Usuario o Password, erroneo, Verifique !!!');", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "Error", "alert('" + FormateaError(ex.Message) + "');", true);
            }
        }

        public string FormateaError(string msg)
        {
            string sMensaje = string.Empty;
            if (msg.Length >= 200)
            {
                sMensaje = msg.Substring(0, 200);
            }
            else
            {
                sMensaje = msg;
            }
            string mesError = sMensaje.Replace('"', ' ').Trim();
            mesError = mesError.Replace("'", " ");
            return mesError;
        }
    }
}