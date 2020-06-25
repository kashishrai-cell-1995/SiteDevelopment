using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LINQ_DataDisplay
{
    public partial class Details : System.Web.UI.Page
    {
        List<employee> emp = new List<employee>();
        List<Department> dept = new List<Department>();   
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindEmpDetails();
            }
        }
        protected void BindEmpDetails()

        {

            emp = GetEmployeeData();
            dept = GetDepartmentData();

            // RepeaterBind.DataSource = emp.Where(xx => xx.salary > 2400);

            RepeaterBind.DataSource = from a in emp
                                      join b in dept on a.id equals b.Emp_Id
                                      select new { a.id, a.name, a.salary, a.age, b.DepartmentName };
            RepeaterBind.DataBind();

            //rptEmpData.DataSource = from a in emp
            //                          join b in dept on a.id equals b.Emp_Id into ab
            //                        from b in ab.DefaultIfEmpty()
            //                        select new { a.id, a.name, a.salary, a.age, DepartmentName = b == null ? "(No Department)" : b.DepartmentName };
            //rptEmpData.DataBind();

            

            RepeatersForCount.DataSource= from b in dept 
                                          group b by b.DepartmentName into CountData
                                          select new { Name= CountData.Key,  Count = CountData.Count()};

            RepeatersForCount.DataBind();

            
            //RepearsForTotal.DataSource = from b in dept group b by b.id into CountTotal select new { id = CountTotal.Count()}.ToString(); 
            //RepearsForTotal.DataBind();
        }

        public List<employee> GetEmployeeData()
        {
            var empl_data = new employee();
            con.Open();
            SqlCommand sqlCommand = new SqlCommand("select * from tbl_employeeDetails", con);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                employee empl = new employee();
                empl.id = (int)reader["id"];
                empl.name = (string)reader["name"];
                empl.salary = (int)reader["salary"];
                empl.age = (int)reader["age"];
                emp.Add(empl);

            }
            con.Close();

            return emp;
        }

        public List<Department> GetDepartmentData()
        {
            var dept_data = new employee();
            con.Open();
            SqlCommand sqlCommand = new SqlCommand("select * from tbl_departmentDetail", con);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                Department deptm = new Department();
                deptm.id = (int)reader["id"];
                deptm.Emp_Id = (int)reader["Emp_id"];
                deptm.DepartmentName = (string)reader["DepartmentName"];             
                dept.Add(deptm);

            }
            con.Close();
            return dept;
        }

    }
}