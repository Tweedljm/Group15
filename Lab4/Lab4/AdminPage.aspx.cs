using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["loggedIn"] == null)
            Response.Redirect("Default.aspx");

        if (Session["loggedIn"].ToString() != "True")
            Response.Redirect("Default.aspx");

        //employeeLogin.DataBind();
        //employeeAccounts.DataBind();
    }
    protected void btnAddEmployee_Click(object sender, EventArgs e)
    {
        try
        {


            int employeeID = 0;
            string username = "";
            string password = "";
            string passwordSalt = "";
            string passwordHash = "";

            //get data from textboxes
            employeeID = Convert.ToInt32(txtEmployeeID.Text);
            username = txtUsername.Text;
            password = txtPassword.Text;

            System.Data.SqlClient.SqlConnection con2 = new System.Data.SqlClient.SqlConnection();
            con2.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";
            con2.Open();
            System.Data.SqlClient.SqlCommand command2 = new System.Data.SqlClient.SqlCommand();
            command2.Connection = con2;
            command2.CommandText = "select top 1 UserName from dbo.Login where UserName = @UserName";
            command2.Parameters.AddWithValue("@UserName", username);
            System.Data.SqlClient.SqlDataReader reader = command2.ExecuteReader();


            if (!reader.Read())
            {
                reader.Close();
                //Make the password hash 
                passwordHash = Login_Class.ComputeHash(password, "MD5", null);
                passwordSalt = "trial";

                //Create login class object & save to login table 
                Login_Class newLoginCreds = new Login_Class(employeeID, username, password, passwordHash, passwordSalt);
                errorMsgTxt.Text = "Login Created for EmployeeID: " + employeeID;
                txtUsername.Text = "";
                txtPassword.Text = "";
                txtEmployeeID.Text = "";

                con2.Close();
            }
            else
            {
                errorMsgTxt.Text = "Username Already Exists.";
            }


        }
        catch (Exception)
        {
            errorMsgTxt.Text = "Employee Already Has Login Information.";
        }

    }




    protected void btnCreateEmployee_Click(object sender, EventArgs e)
    {
        //checks to see if employee account already exists
        try
        {
            int EmployeeID;
            int rewardbalance = 0;
            EmployeeID = Convert.ToInt32(EmployeeIDList.Text);
            Account_Class Account = new Account_Class(EmployeeID, rewardbalance);
            errorMsgTxt2.Text = "Employee Account Created for EmployeeID: " + EmployeeID;

        }
        catch (Exception)
        {
            errorMsgTxt2.Text = "Employee Account Already Exists.";
        }




    }

    protected void btnAddOrgValue_Click(object sender, EventArgs e)
    {
        string ValueName = "";
        string ValueDescription = "";

        ValueName = txtValueName.Text;
        ValueDescription = txtValueDescription.Text;

        System.Data.SqlClient.SqlConnection con2 = new System.Data.SqlClient.SqlConnection();
        con2.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";
        con2.Open();
        System.Data.SqlClient.SqlCommand command2 = new System.Data.SqlClient.SqlCommand();
        command2.Connection = con2;
        command2.CommandText = "select top 1 ValueName from dbo.Organization_Values where ValueName = @ValueName"; //+ ValueName + "'";
        command2.Parameters.AddWithValue("@ValueName", ValueName);
        System.Data.SqlClient.SqlDataReader reader2 = command2.ExecuteReader();

        reader2.Read();

        //checks to see if valuename already exists
        string orgValueName = reader2["ValueName"].ToString();
        if (ValueName.Equals(ValueName))
        {
            errorMsgTxt1.Text = "Value Name Already Exists";
        }
        else
        {
            OrgValues_Class OrgValue = new OrgValues_Class(ValueName, ValueDescription);
            errorMsgTxt1.Text = "Value Created";
            txtValueName.Text = "";
            txtValueDescription.Text = "";
        }
        con2.Close();
    }


    protected void addGiftProviderbtn_Click(object sender, EventArgs e)
    {
        string providerName = "";
        string buildingNumber = "";
        string street = "";
        string cityCounty = "";
        string zip = "";
        string email = "";
        string phoneNumber = "";
        string description = "";
        string state = "";

        providerName = providerNameTxt.Text;
        buildingNumber = buildingNumberTxt.Text;
        street = streetTxt.Text;
        cityCounty = cityCountyTxt.Text;
        zip = zipTxt.Text;
        email = emailTxt.Text;
        phoneNumber = phoneNumbertxt.Text;
        description = descriptionTxt.Text;
        state = stateTxt.Text;

        GiftProvider_Class GiftProvider = new GiftProvider_Class(providerName, description, buildingNumber, street, cityCounty, state, zip, email, phoneNumber);
        providerlbl.Text = "Provider: " + providerName + " Created";

        providerNameTxt.Text = "";
        buildingNumberTxt.Text = "";
        streetTxt.Text = "";
        cityCountyTxt.Text = "";
        zipTxt.Text = "";
        emailTxt.Text = "";
        phoneNumbertxt.Text = "";
        descriptionTxt.Text = "";
        stateTxt.Text = "";

    }

}