using System;
using System.Web;

namespace FinancialTime.Utils
{
    public static class SessionCls
    {
        public static bool validaSesion()
        {
            HttpContext ctx = HttpContext.Current;
            // HttpCookie objCookie = ctx.Request.Cookies["ASP.NET_SessionId"];

            if (ctx == null)
                throw new Exception("Este método sólo se puede usar en una aplicación Web");

            //Comprobamos que haya sesión en primer lugar 
            //(por ejemplo si por ejemplo EnableSessionState=false)
            if (ctx.Session.Count == 0)
            {
                if (ctx.Session.IsNewSession)
                {
                    return false;   //Si no hay sesión, no puede caducar
                }
                else
                {
                    return true;
                }
            }
            else
            {
                return true;
            }

        }

        public static void SetFieldSort(string FieldSort)
        {
            System.Web.HttpContext.Current.Session["FieldSort"] = FieldSort;
        }

        public static string GetFieldSort()
        {
            return System.Web.HttpContext.Current.Session["FieldSort"].ToString();
        }

        public static void SetFieldSortDirection(string FieldSortDirection)
        {
            System.Web.HttpContext.Current.Session["FieldSortDirection"] = FieldSortDirection;
        }

        public static string GetFieldSortDirection()
        {
            if (System.Web.HttpContext.Current.Session["FieldSortDirection"] != null)
            {
                return System.Web.HttpContext.Current.Session["FieldSortDirection"].ToString();
            }
            else
            {
                return "ASC";
            }
        }

        public static string Getusu_nombre()
        {
            if (validaSesion())
            {
                return System.Web.HttpContext.Current.Session["usu_nombre"].ToString();
            }
            return "";
        }

    }
}