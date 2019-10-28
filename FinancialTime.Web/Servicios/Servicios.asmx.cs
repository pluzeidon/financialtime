using FinancialTime.Model;
using FinancialTimes.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace FinancialTime.Web.Servicios
{
    /// <summary>
    /// Summary description for Servicios
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class Servicios : System.Web.Services.WebService
    {

        [WebMethod]
        public List<ft_bancoModel> GetBancos(int nusu_id)
        {
            try
            {
                BancosDAL _DAL = new BancosDAL();
                ft_bancoModel ft_BancoModel = new ft_bancoModel();
                ft_BancoModel.usu_id = nusu_id;
                return _DAL.GETBancos(ft_BancoModel);
            }
            catch
            { throw; }
        }

        [WebMethod]
        public List<ft_categoriaModel> GetCategorias(int nusu_id)
        {
            try
            {
                CategoriasDAL _DAL = new CategoriasDAL();
                ft_categoriaModel ft_CategoriaModel = new ft_categoriaModel();
                ft_CategoriaModel.usu_id = nusu_id;
                return _DAL.GETCategorias(ft_CategoriaModel);
            }
            catch
            { throw; }
        }
    }
}
