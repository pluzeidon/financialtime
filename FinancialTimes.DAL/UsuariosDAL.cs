using FinancialTime.Model;
using FinancialTime.Utils;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;


namespace FinancialTimes.DAL
{
    public class UsuariosDAL : PersBase
    {
        public List<ft_usuarioModel> ValidateLogin(ft_usuarioModel _Entidad)
        {
            List<ft_usuarioModel> _list = new List<ft_usuarioModel>();
            SqlParameter[] parametros =
               {
                    new SqlParameter("@usu_mail", SqlDbType.VarChar,100){ Value = _Entidad.usu_mail},
                    new SqlParameter("@usu_password", SqlDbType.VarChar,50){ Value = _Entidad.usu_password}
               };
            try
            {
                using (var reader = base.ExecuteReader(CommandType.StoredProcedure, "ObtLogin", parametros))
                {
                    var dataTable = new DataTable();
                    dataTable.Load(reader);
                    _list = dataTable.ToList<ft_usuarioModel>();
                }
                return _list;
            }
            catch
            { throw; }
            finally { parametros = null; }
        }

        public List<ft_usuarioModel> GetUsuarios(ft_usuarioModel _Entidad)
        {
            List<ft_usuarioModel> _list = new List<ft_usuarioModel>();
            SqlParameter[] parametros =
               {
                    new SqlParameter("@usu_mail", SqlDbType.VarChar,100){ Value = _Entidad.usu_mail}
               };
            try
            {
                using (var reader = base.ExecuteReader(CommandType.StoredProcedure, "ObtUsuario", parametros))
                {
                    var dataTable = new DataTable();
                    dataTable.Load(reader);
                    _list = dataTable.ToList<ft_usuarioModel>();
                }
                return _list;
            }
            catch
            { throw; }
            finally { parametros = null; }
        }

        public List<ft_usuarioModel> insUsuario(ft_usuarioModel _Entidad)
        {
            List<ft_usuarioModel> _list = new List<ft_usuarioModel>();
            SqlParameter[] parametros =
               {
                    new SqlParameter("@usu_mail", SqlDbType.VarChar,100){ Value = _Entidad.usu_mail},
                    new SqlParameter("@usu_nombre", SqlDbType.VarChar,200){ Value = _Entidad.usu_nombre},
                    new SqlParameter("@usu_password", SqlDbType.VarChar,50){ Value = _Entidad.usu_password}
               };
            try
            {
                using (var reader = base.ExecuteReader(CommandType.StoredProcedure, "InsUsuario", parametros))
                {
                    var dataTable = new DataTable();
                    dataTable.Load(reader);
                    _list = dataTable.ToList<ft_usuarioModel>();
                }
                return _list;
            }
            catch
            { throw; }
            finally { parametros = null; }
        }


    }
}