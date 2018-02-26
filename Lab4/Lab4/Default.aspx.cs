using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Default : System.Web.UI.Page
{
    public string currentEmpID;
    protected void Page_Load(object sender, EventArgs e)
    {


        Menu Menu1 = (Menu)Master.FindControl("Menu1");
        Menu1.Visible = false;
        


    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {


    }


    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {



    }

    protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
    {
        // the Login object has both UserName and Password properties
        string userName = Login1.UserName;
        string password = Login1.Password;

        // the Authenticated property of the AuthenitaceEventArgs object is what
        // determines whether to authenticate the login or not...here we assume no
        e.Authenticated = false;


        // setting up SqlConnection and SqlCommand

        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
        con.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";
        con.Open();
        System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand();
        command.Connection = con;

        // performing the query to get the person with the entered firstname
        command.CommandText = "select top 1 UserName, PasswordHash, PasswordSalt from dbo.login where UserName = @userName";
        command.Parameters.AddWithValue("@userName", userName);
        System.Data.SqlClient.SqlDataReader reader = command.ExecuteReader();

        // if there is such a record, read it
        if (reader.HasRows)
        {
            reader.Read();
            String pwHash = reader["PasswordHash"].ToString();  // retrieve the password hash

            // use the SimpleHash object to verify the user's entered password
            bool verify = Login_Class.VerifyHash(password, "MD5", pwHash);

            // the result of the VerifyHash is a boolean; we use this to determine authentication 
            e.Authenticated = verify;

            reader.Close();
            

            if (e.Authenticated = verify)
            {
                System.Data.SqlClient.SqlConnection con1 = new System.Data.SqlClient.SqlConnection();
                con1.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";
                con1.Open();
                System.Data.SqlClient.SqlCommand command1 = new System.Data.SqlClient.SqlCommand();
                command1.Connection = con1;
                command1.CommandText = "select top 1 EmployeeID from dbo.login where UserName = '" + userName + "' ";
                System.Data.SqlClient.SqlDataReader reader1 = command1.ExecuteReader();

                if (reader1.HasRows)
                {
                    reader1.Read();
                    currentEmpID = reader1["EmployeeID"].ToString();
                    int EmpID = Int32.Parse(currentEmpID);
                    Session.Add("EmployeeID", EmpID);
                    
                    reader1.Close();
                    
                }
                con1.Close();

                System.Data.SqlClient.SqlConnection con2 = new System.Data.SqlClient.SqlConnection();
                con2.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";
                con2.Open();
                System.Data.SqlClient.SqlCommand command2 = new System.Data.SqlClient.SqlCommand();
                command2.Connection = con2;
                command2.CommandText = "select top 1 ProfilePicture from dbo.Account where EmployeeID = " + Session["EmployeeID"];
                System.Data.SqlClient.SqlDataReader reader2 = command2.ExecuteReader();

                if (reader2.HasRows)
                {
                    reader2.Read();
                    string UserPic = reader2["ProfilePicture"].ToString();
                    Session.Add("UserPic", UserPic);    // creating session variable for user profile pic 

                    reader2.Close();

                }
                con2.Close();

                



            }

            // at this point the authentication has been determined
            // We will put the result in a Session variable so that other pages in the application can
            // see the value
            Session["loggedIn"] = e.Authenticated.ToString();

            if (Session["loggedIn"].ToString() == "True")
            {
                int EmpId = (int)Session["EmployeeID"];

                //if (EmpId == 1)
                //{
                    //Response.Redirect("~/Admin_Dashboard.Aspx");
                //}
                //else
                    Response.Redirect("~/Dashboard.Aspx");
            }


        }
        con.Close();
        
    }
}