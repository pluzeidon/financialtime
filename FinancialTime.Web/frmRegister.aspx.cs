using FinancialTime.Model;
using FinancialTimes.DAL;
using System;
using System.Collections.Generic;
using System.Web.Security;
using System.Web.UI;

namespace FinancialTime.Web
{
    public partial class frmRegister : System.Web.UI.Page
    {
        string susu_mail = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            try
            {
                UsuariosDAL _DAL = new UsuariosDAL();
                ft_usuarioModel ft_UsuarioModel = new ft_usuarioModel();
                ft_UsuarioModel.usu_mail = dfnewusu_mail.Value;
                ft_UsuarioModel.usu_password = dfnewusu_password.Value;
                ft_UsuarioModel.usu_nombre = dfnewusu_nombre.Value;
                List<ft_usuarioModel> lista = null;
                lista = _DAL.GetUsuarios(ft_UsuarioModel);
                if (lista.Count > 0)
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "Close Modal Popup", "alert('El usuario existe, Verifique !!!');", true);
                }
                else
                {
                    _DAL.insUsuario(ft_UsuarioModel);
                    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "Close Modal Popup", "alert('Registro, conlcuido !!!');", true);
                    FormsAuthentication.RedirectToLoginPage();
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