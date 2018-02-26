using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Account_Class
{
    private int EmployeeId;
    private int AdministratorId;
    private double RewardBalance;
    private DateTime LastUpdated = DateTime.Now;
    private string LastUpdatedBy = "Group 15";

    public Account_Class(int EmployeeID, double RewardBalance)
    {
        setEmployeeId(EmployeeID);
        setRewardBalance(RewardBalance);
        saveAccount();
    }

    public void saveAccount()
    {
        //Database Connection
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";


        // INSERT STATEMENT
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;


        insert.CommandText = "INSERT INTO [dbo].[Account] VALUES (@EmployeeID, @RewardBalance, @LastUpdatedBy, @LastUpdated, @AdministratorID, @TotalRewardsReceived, @ProfilePicture)";

        insert.Parameters.AddWithValue("@EmployeeID", this.getEmployeeId());
        insert.Parameters.AddWithValue("@RewardBalance", this.getRewardBalance());
        insert.Parameters.AddWithValue("@LastUpdatedBy", this.getLastUpdatedBy());
        insert.Parameters.AddWithValue("@LastUpdated", this.getLastUpdated());
        insert.Parameters.AddWithValue("AdministratorID", 1);
        insert.Parameters.AddWithValue("@TotalRewardsReceived", 0);
        insert.Parameters.AddWithValue("@ProfilePicture", DBNull.Value);


        insert.ExecuteNonQuery();

        sc.Close();
    }

    //Getters and Setters
    public void setEmployeeId(int EmployeeId)
    {
        this.EmployeeId = EmployeeId;
    }

    public int getEmployeeId()
    {
        return EmployeeId;
    }
    public void setAdministratorId(int AdministratorId)
    {
        this.AdministratorId = AdministratorId;
    }

    public int getAdministratorId()
    {
        return AdministratorId;
    }

    public void setRewardBalance(double RewardBalance)
    {
        this.RewardBalance = RewardBalance;
    }

    public double getRewardBalance()
    {
        return RewardBalance;
    }

    public void setLastUpdated(DateTime LastUpdated)
    {
        this.LastUpdated = LastUpdated;
    }

    public string getLastUpdated()
    {
        string Last = this.LastUpdated.ToString("yyyyMMdd");
        return Last;
    }

    public void setLastUpdatedBy(string LastUpdatedBy)
    {
        this.LastUpdatedBy = LastUpdatedBy;
    }

    public string getLastUpdatedBy()
    {
        return LastUpdatedBy;
    }
}