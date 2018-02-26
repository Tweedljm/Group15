using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchBar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblPageLoad.Text = "Search For Someone's Page";
        // verify that the user is logged in...if not redirect
        // the user to the login screen

       if (Session["loggedIn"] == null)
            Response.Redirect("Default.aspx");

        if (Session["loggedIn"].ToString() != "True")
            Response.Redirect("Default.aspx");
            
    }
    protected void searchButton_Click(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblPageLoad.Visible = false;

        //Gets ID, firstname and lastname from selected row
        GridViewRow selectedRow = GridView1.SelectedRow;
        string empID = selectedRow.Cells[1].Text;
        string fName, lName;
        fName = selectedRow.Cells[2].Text;
        lName = selectedRow.Cells[4].Text;

        //Sets searchbar text to the user selected
        searchBarTxt.Text = fName + " " + lName;

        string firstName, lastName, emailAddress;
        double rewardBalance = 0;

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";


        // SELECT STATEMENT
        sc.Open();

        System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand();
        select.Connection = sc;
        select.CommandText = "SELECT [FirstName] FROM [dbo].[Employee] INNER JOIN [dbo].[Account] ON [dbo].[Employee].EmployeeID = [dbo].[Account].EmployeeID WHERE [dbo].[Account].EmployeeID = @CurrentEmpId"; //+ CurrentEmpId;
        select.Parameters.AddWithValue("@CurrentEmpId", empID);
        firstName = (string)select.ExecuteScalar();

        select.Connection = sc;
        select.CommandText = "SELECT [LastName] FROM [dbo].[Employee] INNER JOIN [dbo].[Account] ON [dbo].[Employee].EmployeeID = [dbo].[Account].EmployeeID WHERE [dbo].[Account].EmployeeID = @CurrentEmpId"; //+ CurrentEmpId;
        lastName = (string)select.ExecuteScalar();

        select.Connection = sc;
        select.CommandText = "SELECT [Email] FROM [dbo].[Employee] INNER JOIN [dbo].[Account] ON [dbo].[Employee].EmployeeID = [dbo].[Account].EmployeeID WHERE [dbo].[Account].EmployeeID = @CurrentEmpId"; //+ CurrentEmpId;
        emailAddress = (string)select.ExecuteScalar();

        select.Connection = sc;
        select.CommandText = "SELECT [RewardBalance] FROM [dbo].[Account] WHERE [EmployeeID] = @CurrentEmpId"; // CurrentEmpId;
        rewardBalance = Convert.ToDouble(select.ExecuteScalar());


        select.Connection = sc;
        select.CommandText = "SELECT ProfilePicture FROM Account WHERE EmployeeID = @EmpID";
        select.Parameters.AddWithValue("EmpID", empID);
        string propic = Convert.ToString(select.ExecuteScalar());

        sc.Close();

        lblFirstName.Text = firstName;
        lblLastName.Text = lastName;
        lblEmail.Text = emailAddress;
        

        System.Data.SqlClient.SqlConnection myConnection = new System.Data.SqlClient.SqlConnection();
        myConnection.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";


        // SELECT STATEMENT


        System.Data.SqlClient.SqlDataAdapter myCommand = new System.Data.SqlClient.SqlDataAdapter("SELECT CONVERT(CHAR(10), RT.RewardDate, 101) AS Date, E.FirstName + ' ' + E.LastName AS Rewardee, S.FirstName + ' ' + S.LastName AS Rewarder, V.ValueName AS Value, RT.RewardType AS [Reward Category], RT.RewardDescription AS Description, CAST(RT.RewardAmount AS decimal(18 , 2)) AS [Reward Amount] FROM Reward_Transactions AS RT INNER JOIN Employee AS E ON RT.ReceiverID = E.EmployeeID INNER JOIN Employee AS S ON RT.SenderID = S.EmployeeID INNER JOIN Organization_Values AS V ON RT.ValueID = V.ValueID WHERE RT.ReceiverID = @EmployeeID OR RT.SenderID = @EmployeeID ORDER BY RT.RewardID DESC", myConnection);
        myCommand.SelectCommand.Parameters.AddWithValue("@EmployeeID", empID);      
        // Connect to the SQL database using a SQL SELECT query to get all 
        // the data from the "Titles" table.

        // Create and fill a DataSet.
        System.Data.DataSet ds = new System.Data.DataSet();
        myCommand.Fill(ds);

        // Bind MyDataList to the DataSet. MyDataList is the ID for 
        // the DataList control in the HTML section of the page.
        DataList1.DataSource = ds;
        DataList1.DataBind();

        //Checks to see if user has a userpic or not
        if (propic == "")
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
}