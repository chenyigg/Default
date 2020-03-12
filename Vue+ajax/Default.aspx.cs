using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vue_ajax
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["Method"] == "show")
            {
                show();
            }
        }

        private void show()
        {
            Stu s1 = new Stu("东方曜", 18, "男");
            Stu s2 = new Stu("李白", 21, "男");
            Stu s3 = new Stu("裴擒虎", 17, "男");

            List<Stu> ls = new List<Stu>();
            ls.Add(s1);
            ls.Add(s2);
            ls.Add(s3);

            var jsondata = JsonConvert.SerializeObject(ls);

            Response.Write(jsondata);
            Response.End();
        }
    }
}