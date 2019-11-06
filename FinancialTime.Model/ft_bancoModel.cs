using System;
using System.Collections.Generic;
using System.Text;

namespace FinancialTime.Model
{
    public class ft_bancoModel
    {
        public int ban_id { get; set; }
        public int usu_id { get; set; } 
        public string ban_nombre { get; set; }
        public decimal ban_saldo { get; set; }
        public string notSortColumn { get; set; }
        public string notSortDir { get; set; }
    }
}
