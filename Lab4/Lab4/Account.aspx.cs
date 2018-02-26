using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account : System.Web.UI.Page
{
    int ReceiverId;
    int SenderId;

    protected void Page_Load(object sender, EventArgs e)
    {
        // verify that the user is logged in...if not redirect
        // the user to the login screen

        if (Session["loggedIn"] == null)
            Response.Redirect("Default.aspx");

        if (Session["loggedIn"].ToString() != "True")
            Response.Redirect("Default.aspx");



        // Hide all change password controls 
        lblTitleChangePswd.Visible = false;
        lblNewPassword.Visible = false;
        lblCurrentPswd.Visible = false;
        lblConfirmNew.Visible = false;
        btnCancel.Visible = false;
        btnChangePswd.Visible = false;
        lblChangePswdError.Visible = false;
        txtConfirmNew.Visible = false;
        txtCurrentPswd.Visible = false;
        txtNewPassword.Visible = false;


        //Populate labels with the appropiate information
        int CurrentEmpId = (int)Session["EmployeeID"];

        if (CurrentEmpId == 1)
        {
            btnAdminArea.Visible = true;
        }
        else
        {
            btnAdminArea.Visible = false;
        }
            string SessionEmpId = CurrentEmpId.ToString();
        string firstName, MI, lastName, emailAddress;
        double rewardBalance = 0;

        // select name and email address from employee table where account id matches
        //Database Connection
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";


        // SELECT STATEMENT
        sc.Open();

        System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand();
        select.Connection = sc;
        select.CommandText = "SELECT [FirstName] FROM [dbo].[Employee] INNER JOIN [dbo].[Account] ON [dbo].[Employee].EmployeeID = [dbo].[Account].EmployeeID WHERE [dbo].[Account].EmployeeID = @CurrentEmpId"; //+ CurrentEmpId;
        select.Parameters.AddWithValue("@CurrentEmpId", CurrentEmpId);
        firstName = (string)select.ExecuteScalar();

        select.Connection = sc;
        select.CommandText = "SELECT [LastName] FROM [dbo].[Employee] INNER JOIN [dbo].[Account] ON [dbo].[Employee].EmployeeID = [dbo].[Account].EmployeeID WHERE [dbo].[Account].EmployeeID = @CurrentEmpId"; //+ CurrentEmpId;
        lastName = (string)select.ExecuteScalar();

        select.Connection = sc;
        select.CommandText = "SELECT [Email] FROM [dbo].[Employee] INNER JOIN [dbo].[Account] ON [dbo].[Employee].EmployeeID = [dbo].[Account].EmployeeID WHERE [dbo].[Account].EmployeeID = @CurrentEmpId"; //+ CurrentEmpId;
        emailAddress = (string)select.ExecuteScalar();

        select.Connection = sc;
        select.CommandText = "SELECT [RewardBalance] FROM [dbo].[Account] WHERE [EmployeeID] = @CurrentEmpId"; // + CurrentEmpId;
        rewardBalance = Convert.ToDouble(select.ExecuteScalar());

        
        sc.Close();

        lblChangePswdError.Visible = false;



        lblFirstName.Text = firstName;
        lblLastName.Text = lastName;
        lblEmail.Text = emailAddress;
        lblRewardBalance.Text = "$ " + rewardBalance;



        // Datalist Stuff

        // Create a connection to the "pubs" SQL database located on the local computer.
        System.Data.SqlClient.SqlConnection myConnection = new System.Data.SqlClient.SqlConnection();
        myConnection.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";


        // SELECT STATEMENT
        System.Data.SqlClient.SqlDataAdapter myCommand = new System.Data.SqlClient.SqlDataAdapter("SELECT CONVERT(CHAR(10), RT.RewardDate, 101) AS Date, E.FirstName + ' ' + E.LastName AS Rewardee, S.FirstName + ' ' + S.LastName AS Rewarder, V.ValueName AS Value, RT.RewardType AS [Reward Category], RT.RewardDescription AS Description, CAST(RT.RewardAmount AS decimal(18 , 2)) AS [Reward Amount] FROM Reward_Transactions AS RT INNER JOIN Employee AS E ON RT.ReceiverID = E.EmployeeID INNER JOIN Employee AS S ON RT.SenderID = S.EmployeeID INNER JOIN Organization_Values AS V ON RT.ValueID = V.ValueID WHERE RT.ReceiverID = @CurrentEmpId OR RT.SenderID = @CurrentEmpId ORDER BY RT.RewardID DESC", myConnection);
        myCommand.SelectCommand.Parameters.AddWithValue("@CurrentEmpId", CurrentEmpId);

        // Connect to the SQL database using a SQL SELECT query to get all 
        // the data from the "Titles" table.
        
        // Create and fill a DataSet.
        System.Data.DataSet ds = new System.Data.DataSet();
        myCommand.Fill(ds);
        // Bind MyDataList to the DataSet. MyDataList is the ID for 
        // the DataList control in the HTML section of the page.
        DataList1.DataSource = ds;
        DataList1.DataBind();

        string currentUserPic = Session["UserPic"].ToString();
        if (currentUserPic == "")
        {
            Image1.ImageUrl = "http://www.cdn.innesvienna.net//Content/user-default.png";
        }
        else
        {
            Image1.ImageUrl = "~/ShowProfilePicture.ashx";
        }
       
        
     

    }

    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        
        
    }

        protected void btnSignOut_Click(object sender, EventArgs e)
    {
        // make employeeID null 
        Session.Remove("EmployeeID");
        Session.Remove("UserPic");
        Response.Redirect("~/Default.aspx");
    }

  

    protected void btnChangePassword_Click(object sender, EventArgs e)
    {
        // Unhide all change password controls 
        lblTitleChangePswd.Visible = true;
        lblNewPassword.Visible = true;
        lblCurrentPswd.Visible = true;
        lblConfirmNew.Visible = true;
        btnCancel.Visible = true;
        btnChangePswd.Visible = true;
        lblChangePswdError.Visible = true;
        txtConfirmNew.Visible = true;
        txtCurrentPswd.Visible = true;
        txtNewPassword.Visible = true;

    }

    protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
    {   
        /*
        string passwordHash, passwordInDB;
        string newPassword = ChangePassword1.NewPassword.ToString();
        string passwordEntered = ChangePassword1.CurrentPassword.ToString();
        int CurrentEmpId = (int)Session["EmployeeID"];


        //Database Connection
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";

        // SELECT STATEMENT
        sc.Open();

        System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand();
        select.Connection = sc;
        select.CommandText = "select [Password] from [dbo].[Login] where EmployeeID = @CurrentEmpId"; //+ CurrentEmpId;
        select.Parameters.AddWithValue("@CurrentEmpId", CurrentEmpId);
        passwordInDB = (string)select.ExecuteScalar();
        sc.Close();

        if (passwordEntered.Equals(passwordInDB))
        {
            //Make the password hash 
            passwordHash = Login_Class.ComputeHash(newPassword, "MD5", null);

            //Database Connection
            System.Data.SqlClient.SqlConnection sc2 = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";

            // UPDATE STATEMENT
            sc.Open();

            System.Data.SqlClient.SqlCommand update = new System.Data.SqlClient.SqlCommand();
            update.Connection = sc2;
            update.CommandText = "update [dbo].[Login] set [Password] = @newPassword, [PasswordHash] = @passwordHash where EmployeeID = @CurrentEmpId";
            update.Parameters.AddWithValue("@newPassword", newPassword);
            update.Parameters.AddWithValue("@passwordHash", passwordHash);
            update.Parameters.AddWithValue("@CurrentEmpId", CurrentEmpId);
            update.ExecuteNonQuery();
            sc.Close();
           
            //update password in table 


        }
        */
      
        

        
    }


    protected void btnSubmitPic_Click(object sender, EventArgs e)
    {
        int CurrentEmpId = (int)Session["EmployeeID"];

        if (FileUpload1.PostedFile.FileName != "")
        {
            byte[] profilePicture;
            Stream imageData = FileUpload1.PostedFile.InputStream;
            BinaryReader streamData = new BinaryReader(imageData);
            profilePicture = streamData.ReadBytes((Int32)imageData.Length);

            //Database Connection
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";
            System.Data.SqlClient.SqlCommand update = new System.Data.SqlClient.SqlCommand();
            update.Connection = sc;
            // UPDATE STATEMENT
            sc.Open();
            update.CommandText = "update Account set ProfilePicture = @profilePicture where EmployeeID = @CurrentEmpId";

            update.Parameters.AddWithValue("@profilePicture", profilePicture);
            update.Parameters.AddWithValue("@CurrentEmpId", CurrentEmpId);

            update.ExecuteNonQuery();
            sc.Close();

            // save to new byte to session variable 
            Session["UserPic"] = profilePicture.ToString();

        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        //clear all textbozes and hide change password controls 
        lblTitleChangePswd.Visible = false;
        lblNewPassword.Visible = false;
        lblCurrentPswd.Visible = false;
        lblConfirmNew.Visible = false;
        btnCancel.Visible = false;
        btnChangePswd.Visible = false;
        lblChangePswdError.Text = "";
        lblChangePswdError.Visible = false;
        txtNewPassword.Text = "";
        txtCurrentPswd.Text = "";
        txtConfirmNew.Text = "";
        txtConfirmNew.Visible = false;
        txtCurrentPswd.Visible = false;
        txtNewPassword.Visible = false;
    }

    protected void btnChangePswd_Click(object sender, EventArgs e)
    {
        // need to check if entered password matches password in db then go ahead ahd change password in db

        string currentPswdEntered = txtCurrentPswd.Text;
        string newPassword = txtNewPassword.Text;
        string confirmNewPswd = txtConfirmNew.Text;
        string newPasswordHash;

        // get password has from the database
        string passwordHash = "";

        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
        con.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";
        con.Open();
        System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand();
        command.Connection = con;
        command.CommandText = "select top 1 PasswordHash from dbo.login where EmployeeID = @EmployeeID";
        command.Parameters.AddWithValue("@EmployeeID", Session["EmployeeID"]);
        passwordHash = (string)command.ExecuteScalar();

        bool verify = Login_Class.VerifyHash(currentPswdEntered, "MD5", passwordHash);

        if (verify.ToString().Equals("True"))
        {
            // check if the new password matches the confirm new password 
            if (confirmNewPswd.Equals(newPassword))
            {
                // change password in database
                // create new hash 
                newPasswordHash = Login_Class.ComputeHash(confirmNewPswd, "MD5", null);

                // update table in database 

                //Database Connection
                System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
                sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";
                System.Data.SqlClient.SqlCommand update = new System.Data.SqlClient.SqlCommand();
                update.Connection = sc;
                // UPDATE STATEMENT
                sc.Open();
                update.CommandText = "update Login set Password = @newPassword, PasswordHash = @passwordHash where EmployeeID = @CurrentEmpId";
                update.Parameters.AddWithValue("@newPassword", newPassword);
                update.Parameters.AddWithValue("@passwordHash", newPasswordHash);
                update.Parameters.AddWithValue("@CurrentEmpId", Session["EmployeeID"]);
                update.ExecuteNonQuery();
                sc.Close();

                //clear all textbozes and hide change password controls 
                lblTitleChangePswd.Visible = false;
                lblNewPassword.Visible = false;
                lblCurrentPswd.Visible = false;
                lblConfirmNew.Visible = false;
                btnCancel.Visible = false;
                btnChangePswd.Visible = false;
                lblChangePswdError.Text = "";
                lblChangePswdError.Visible = false;
                txtNewPassword.Text = "";
                txtCurrentPswd.Text = "";
                txtConfirmNew.Text = "";
                txtConfirmNew.Visible = false;
                txtCurrentPswd.Visible = false;
                txtNewPassword.Visible = false;

            }
            else
            {
                lblChangePswdError.Text = "The Confirm New Password must match the New Password entry.";
            }

        }
        else
        {
            lblChangePswdError.Text = "Incorrect password.";
        }





    }

    protected void btnAdminArea_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminPage.aspx");
    }
}


   

