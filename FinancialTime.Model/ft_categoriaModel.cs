using System;
using System.Collections.Generic;
using System.Text;

namespace FinancialTime.Model
{
    public class ft_categoriaModel
    {
        public int cat_id { get; set; }
        public int usu_id { get; set; }
        public int cat_cargo_abono { get; set; }
        public int cat_signo { get; set; }
        public string cat_descripcion { get; set; }
        public string notSortColumn { get; set; }
        public string notSortDir { get; set; }
    }
}
