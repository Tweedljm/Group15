using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard : System.Web.UI.Page
{
    double totalRewards;
    protected void Page_Load(object sender, EventArgs e)
    {
        

        // verify that the user is logged in...if not redirect
        // the user to the login screen

        if (Session["loggedIn"] == null)
            Response.Redirect("Default.aspx");

        if (Session["loggedIn"].ToString() != "True")
            Response.Redirect("Default.aspx");

        // get total rewards balance 

        //Database Connection
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";


        // SELECT STATEMENT
        sc.Open();

        System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand();
        select.Connection = sc;
        select.CommandText = "Select sum(RewardAmount) from[dbo].[Reward_Transactions]";
        totalRewards = Convert.ToDouble(select.ExecuteScalar());

        lblTotalRewards.Text = "$ " + totalRewards;


        



    }


    protected void btnReward_Click(object sender, EventArgs e)
    {

        messageTxt.Text = "";
        int EmpId = (int)Session["EmployeeID"];
        int SenderId = EmpId;
        string RewardDescription = "";
        double RewardAmount;
        DateTime RewardDate = DateTime.Now;
        string ValueName;
        int ValueID;
        int ReceiverID;
        string rewardType;



        //get data from textboxes
        RewardAmount = Convert.ToDouble(ddAddAmount.Text);
        RewardDescription = txtWritePost.Text;
        string fullName = DropDownList1.Text;
        string FirstName = fullName.Substring(0, fullName.IndexOf(" "));
        string LastName = fullName.Substring(fullName.IndexOf(" ") + 1);
        ValueName = ddAddValue.Text;
        rewardType = DropDownList2.Text;



        //Get receiverID
        System.Data.SqlClient.SqlConnection con2 = new System.Data.SqlClient.SqlConnection();
        con2.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";
        con2.Open();
        System.Data.SqlClient.SqlCommand command2 = new System.Data.SqlClient.SqlCommand();
        command2.Connection = con2;
        command2.CommandText = "select top 1 EmployeeID from dbo.Employee where FirstName = @FirstName AND LastName = @LastName";
        command2.Parameters.AddWithValue("@FirstName", FirstName);
        command2.Parameters.AddWithValue("@LastName", LastName);
        System.Data.SqlClient.SqlDataReader reader2 = command2.ExecuteReader();

        reader2.Read();
        string tempReceiverID = reader2["EmployeeID"].ToString();
        ReceiverID = Int32.Parse(tempReceiverID);
        reader2.Close();
    
        // validation
        if (ReceiverID == SenderId)
        {
            yesButton.Visible = false;
            noButton.Visible = false;
            messageTxt.Text = "Can't send reward to yourself!";
            txtWritePost.Text = String.Empty;
            ddAddAmount.SelectedIndex = -1;
            ddAddValue.SelectedIndex = -1;
            DropDownList1.SelectedIndex = -1;

        }
        else
        {
            messageTxt.Text = "Are you sure you want to send $" + RewardAmount + " to " + fullName + " for " + ddAddValue.Text + "?";
            yesButton.Visible = true;
            noButton.Visible = true;
        }
        
    }

    protected void yesButton_Click(object sender, EventArgs e)
    {
        messageTxt.Text = "";
        int EmpId = (int)Session["EmployeeID"];
        int SenderId = EmpId;
        string RewardDescription = "";
        double RewardAmount;
        DateTime RewardDate = DateTime.Now;
        string ValueName;
        int ValueID;
        int ReceiverID;
        string rewardType;



        //get data from textboxes
        RewardAmount = Convert.ToDouble(ddAddAmount.Text);
        RewardDescription = txtWritePost.Text;
        string fullName = DropDownList1.Text;
        string FirstName = fullName.Substring(0, fullName.IndexOf(" "));
        string LastName = fullName.Substring(fullName.IndexOf(" ") + 1);
        ValueName = ddAddValue.Text;
        rewardType = DropDownList2.Text;


        //Get receiverID
        System.Data.SqlClient.SqlConnection con2 = new System.Data.SqlClient.SqlConnection();
        con2.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";
        con2.Open();
        System.Data.SqlClient.SqlCommand command2 = new System.Data.SqlClient.SqlCommand();
        command2.Connection = con2;
        command2.CommandText = "select top 1 EmployeeID from dbo.Employee where FirstName = @FirstName AND LastName = @LastName";
        command2.Parameters.AddWithValue("@FirstName", FirstName);
        command2.Parameters.AddWithValue("@LastName", LastName);
        System.Data.SqlClient.SqlDataReader reader2 = command2.ExecuteReader();

        reader2.Read();
        string fakeReceiverID = reader2["EmployeeID"].ToString();
        ReceiverID = Int32.Parse(fakeReceiverID);

        reader2.Close();

        //Get ValueID
        System.Data.SqlClient.SqlConnection con3 = new System.Data.SqlClient.SqlConnection();
        con3.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";
        con3.Open();
        System.Data.SqlClient.SqlCommand command3 = new System.Data.SqlClient.SqlCommand();
        command3.Connection = con3;
        command3.CommandText = "select top 1 ValueID from dbo.Organization_Values where ValueName = @ValueName";
        command3.Parameters.AddWithValue("@ValueName", ValueName);
        System.Data.SqlClient.SqlDataReader reader3 = command3.ExecuteReader();


        reader3.Read();
        string tempValueID = reader3["ValueID"].ToString();
        ValueID = Int32.Parse(tempValueID);
        reader3.Close();


        RewardTransaction_Class newRewardTransaction = new RewardTransaction_Class(RewardAmount, RewardDate, ReceiverID, SenderId, ValueID, RewardDescription, rewardType);

        DataList1.DataBind();
        txtWritePost.Text = String.Empty;
        ddAddAmount.SelectedIndex = -1;
        ddAddValue.SelectedIndex = -1;
        DropDownList1.SelectedIndex = -1;
        yesButton.Visible = false;
        noButton.Visible = false;

        // get total rewards balance 
        //Database Connection
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";


        // SELECT STATEMENT
        sc.Open();

        System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand();
        select.Connection = sc;
        select.CommandText = "Select sum(RewardAmount) from[dbo].[Reward_Transactions]";
        totalRewards = Convert.ToDouble(select.ExecuteScalar());

        lblTotalRewards.Text = "$" + totalRewards;

        GridView1.DataBind();
        Chart1.DataBind();



    }

    protected void noButton_Click(object sender, EventArgs e)
    {
        messageTxt.Text = "";
        yesButton.Visible = false;
        noButton.Visible = false;
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}