using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace LINQ_DataDisplay
{
    public partial class mzUsers1 : System.Web.UI.Page
    {
        List<mzUsers> user = new List<mzUsers>();
        List<mzUserDetail> userDetail = new List<mzUserDetail>();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               
            }

        }

        protected void Insert_Data(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into mzUsers values (@Email, @FirstName, @LastName, @Password, @RoleID,@IsActive)", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("email", Email.Value);
            cmd.Parameters.AddWithValue("FirstName", FirstName.Value);
            cmd.Parameters.AddWithValue("LastName", LastName.Value);
            cmd.Parameters.AddWithValue("Password", Password.Value);
            cmd.Parameters.AddWithValue("RoleID", RoleID.Value);
            string IsActive = string.Empty;
            cmd.Parameters.AddWithValue("IsActive", IsActive).Value=1;
            con.Open();
            
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                //lblmsg.Value = "Record Inserted Succesfully into the Database";
            }
            con.Close();
        }
    }
}