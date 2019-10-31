using System;
using System.Collections.Generic;
using System.Text;

namespace FinancialTime.Model
{
    public class ft_movimientoModel
    {
        public int mov_id { get; set; }
        public int usu_id { get; set; }
        public int ban_id { get; set; }
        public int cat_id { get; set; }
        public int cat_signo { get; set; }
        public string mov_descripcion { get; set; }
        public string cat_descripcion { get; set; }
        public string ban_nombre { get; set; }
        public decimal mov_importe { get; set; }
        public DateTime? mov_fecha { get; set; }
        public DateTime? notmov_fecha_hasta { get; set; }
        public string notSortColumn { get; set; }
        public string notSortDir { get; set; }

    }
}
