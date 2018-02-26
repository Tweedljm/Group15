using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GiftCatalog : System.Web.UI.Page
{
    string giftname, giftdescription;
    double giftcost = 0.00;
    int giftquantity, count;
    double giftTotal = 0.00;
    protected void Page_Load(object sender, EventArgs e)
    {
        // verify that the user is logged in...if not redirect
        // the user to the login screen
        
        if (Session["loggedIn"] == null)
            Response.Redirect("Default.aspx");

        if (Session["loggedIn"].ToString() != "True")
            Response.Redirect("Default.aspx");


        // gift images 

        // if admin is logged in 
        int CurrentEmpId = (int)Session["EmployeeID"];
        if (CurrentEmpId == 1)
        {
            txtEnterGiftName.Visible = true;
            txtDescription.Visible = true;
            txtPrice.Visible = true;
            txtQuantity.Visible = true;
            listGiftProviderID.Visible = true;
            Label14.Visible = true;
            Label15.Visible = true;
            Label16.Visible = true;
            Label17.Visible = true;
            Label18.Visible = true;
            Label19.Visible = true;
            btnAddGift.Visible = true;
        }
        else
        {
            txtEnterGiftName.Visible = false;
            txtDescription.Visible = false;
            txtPrice.Visible = false;
            txtQuantity.Visible = false;
            listGiftProviderID.Visible = false;
            Label14.Visible = false;
            Label15.Visible = false;
            Label16.Visible = false;
            Label17.Visible = false;
            Label18.Visible = false;
            Label19.Visible = false;
            btnAddGift.Visible = false;
            
        }




        //Populate labels with the appropiate information
        
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

    protected void btnPurchaseItem_Click(object sender, EventArgs e)
    {
        //Opens data connection
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";
        sc.Open();
        System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand();
        command.Connection = sc;

        //getting data from textboxes
        int EmpId = (int)Session["EmployeeID"];
        int GiftId = Convert.ToInt32(txtGiftID.Text);
        giftquantity = Convert.ToInt32(listGiftQuantity.SelectedValue);

        //get employee reward balance
        command.CommandText = "select top 1 RewardBalance from dbo.Account where EmployeeID = " + EmpId;
        System.Data.SqlClient.SqlDataReader reader2 = command.ExecuteReader();
        reader2.Read();

        string rewardBal = reader2["RewardBalance"].ToString();
        double rewardBalance = Double.Parse(rewardBal);
        reader2.Close();

        //get gift cost of certain gift
        command.CommandText = "select top 1 GiftCost from dbo.Gift where GiftID = " + GiftId;
        System.Data.SqlClient.SqlDataReader reader = command.ExecuteReader();
        reader.Read();

        string giftC = reader["GiftCost"].ToString();
        double thisgiftcost = Double.Parse(giftC);
        reader.Close();

        //gets total giftquantity of gift 
        command.CommandText = "select top 1 GiftQuantity from dbo.Gift where GiftID = " + GiftId;
        System.Data.SqlClient.SqlDataReader reader3 = command.ExecuteReader();
        reader3.Read();

        string giftQ = reader3["GiftQuantity"].ToString();
        int totalGiftQuantity = Int32.Parse(giftQ);
        reader3.Close();


        //creates total purchase order
        double total = giftquantity * thisgiftcost;

        //checking to see if rewardbalance is less than the gift cost
        if (rewardBalance < total)
        {
            errorMsg.Text = "You don't have enough money to purchase this gift.";
        }
        //checks to see if total giftquantity in stock is lower than requested giftquantity
        else if (totalGiftQuantity < giftquantity)
        {
            errorMsg.Text = "There is not enough quantity in stock.";
        }
        else
        {
            GiftTransaction_Class giftTransaction = new GiftTransaction_Class(EmpId, GiftId, giftquantity);

            DataList1.DataBind();
            lblCurrentBalance.DataBind();
        }

    }


    protected void btnAddGift_Click1(object sender, EventArgs e)
    {
        string giftname, giftdescription;
        double giftprice = 0.00;
        int giftquantity, count;
        double giftTotal = 0.00;

         giftname = txtEnterGiftName.Text;
        giftdescription = txtDescription.Text;
        giftquantity = Convert.ToInt32(txtQuantity.Text);
        giftprice = Convert.ToDouble(txtPrice.Text);
        int giftproviderID;
        giftproviderID = Convert.ToInt32(listGiftProviderID.Text);
        Gift_Class gift = new Gift_Class(giftname, giftdescription, giftprice, giftquantity, giftproviderID);
        DataList1.DataBind();
    }
}