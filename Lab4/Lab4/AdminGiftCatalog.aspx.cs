using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminGiftCatalog : System.Web.UI.Page
{
    private string giftname, giftdescription;
    private double giftprice = 0.00;
    private int giftquantity, count;
    private double giftTotal = 0.00;
    protected void Page_Load(object sender, EventArgs e)
    {
        // verify that the user is logged in...if not redirect
        // the user to the login screen
        Menu Menu1 = (Menu)Master.FindControl("Menu1");
        Menu1.Visible = false;

        if (Session["loggedIn"] == null)
            Response.Redirect("Default.aspx");

        if (Session["loggedIn"].ToString() != "True")
            Response.Redirect("Default.aspx");






        //Populate labels with the appropiate information
        int CurrentEmpId = (int)Session["EmployeeID"];
        string SessionEmpId = CurrentEmpId.ToString();
        string firstName, MI, lastName;
        double rewardBalance = 0;

        // select name and email address from employee table where account id matches
        //Database Connection
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";


        // SELECT STATEMENT
        sc.Open();

        System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand();
        select.Connection = sc;
        select.CommandText = "SELECT [FirstName] FROM [dbo].[Employee] INNER JOIN [dbo].[Account] ON [dbo].[Employee].EmployeeID = [dbo].[Account].EmployeeID WHERE [dbo].[Account].EmployeeID = @CurrentEmpId";
        select.Parameters.AddWithValue("@CurrentEmpId", CurrentEmpId);
        firstName = (string)select.ExecuteScalar();

        select.Connection = sc;
        select.CommandText = "SELECT [LastName] FROM [dbo].[Employee] INNER JOIN [dbo].[Account] ON [dbo].[Employee].EmployeeID = [dbo].[Account].EmployeeID WHERE [dbo].[Account].EmployeeID = @CurrentEmpId";
        lastName = (string)select.ExecuteScalar();

        select.Connection = sc;
        select.CommandText = "SELECT [RewardBalance] FROM [dbo].[Account] WHERE [EmployeeID] = @CurrentEmpId";
        rewardBalance = Convert.ToDouble(select.ExecuteScalar());


        lblFirstName.Text = firstName;
        lblLastName.Text = lastName;
        lblCurrentBalance.Text = "$ " + rewardBalance;

        sc.Close();
        lblCurrentBalance.DataBind();

    }



    protected void btnAddGift_Click(object sender, EventArgs e)
    {
        giftname = txtEnterGiftName.Text;
        giftdescription = txtDescription.Text;
        giftquantity = Convert.ToInt32(txtQuantity.Text);
        giftprice = Convert.ToDouble(txtPrice.Text);
        int giftproviderID;
        giftproviderID = Convert.ToInt32(listGiftProviderID.Text);
        Gift_Class gift = new Gift_Class(giftname, giftdescription, giftprice, giftquantity, giftproviderID);
        DataList1.DataBind();
    }

    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin_Dashboard.aspx");
    }

    protected void btnStats_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminStats.aspx");
    }

    protected void btnAdmin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AddEmployee.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}