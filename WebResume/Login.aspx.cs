using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using static System.Net.Mime.MediaTypeNames;
using System.Drawing;
using System.Data.Common;
using Microsoft.Ajax.Utilities;

namespace WebResume
{
    public partial class Login2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            var username = Username.Text;
            var password = Password.Text;
            var IsVaid = false;
            //string strPathAndQuery = HttpContext.Current.Request.Url.PathAndQuery;
            //string strUrl = HttpContext.Current.Request.Url.AbsoluteUri.Replace(strPathAndQuery, "/");

            string connectStr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            string store = "GetDataUser";
            using (SqlConnection con = new SqlConnection(connectStr))
            {
                try {
                    con.Open();
                    SqlCommand cmd = new SqlCommand(store, con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@username", username));
                    cmd.Parameters.Add(new SqlParameter("@password", password));

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {        
                        while (reader.Read())
                        {
                            IsVaid = reader.HasRows;
                            //reader.GetSqlValue(0);
                        }
                    }
                }
                catch (Exception ex)
                {
                    throw;
                }
                con.Close();
            }          
            if (IsVaid)
            {
                Response.Redirect("~/Dashboard.aspx");
            }
            else
            {
                LbNotification.Visible = true;
            }
        }
    }
    //public class Login
    //{
    //    public Guid Id { get; set; }
    //    public string Username { get; set; }
    //    public string Password { get; set; }
    //}
}