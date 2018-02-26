using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RewardTransaction_Class
/// </summary>
public class RewardTransaction_Class
{
    private int RewardId;
    private int ReceiverId;
    private int SenderId;
    private int ValueId;
    private double RewardAmount;
    private DateTime RewardDate;
    private string RewardDescription;
    private DateTime LastUpdated = DateTime.Now;
    private string LastUpdatedBy = "Group 15";
    private string RewardType;

    public RewardTransaction_Class(double RewardAmount, DateTime RewardDate, int ReceiverId, int SenderId, int ValueId, string RewardDescription, string RewardType)
    {
        setRewardAmount(RewardAmount);
        setRewardDate(RewardDate);
        setRewardDescription(RewardDescription);
        setReceiverId(ReceiverId);
        setSenderId(SenderId);
        setValueId(ValueId);
        setRewardType(RewardType);
        this.sqlInsert();
    }

    //Getters and Setters
    public void setRewardType(string type)
    {
        this.RewardType = type;
    }
    public string getRewardType()
    {
        return RewardType;
    }
    public void setRewardId(int RewardId)
    {
        this.RewardId = RewardId;
    }

    public int getRewardId()
    {
        return RewardId;
    }

    public void setReceiverId(int ReceiverId)
    {
        this.ReceiverId = ReceiverId;
    }

    public int getReceiverId()
    {
        return ReceiverId;
    }

    public void setSenderId(int SenderId)
    {
        this.SenderId = SenderId;
    }

    public int getSenderId()
    {
        return SenderId;
    }

    public void setValueId(int ValueId)
    {
        this.ValueId = ValueId;
    }

    public int getValueId()
    {
        return ValueId;
    }

    public void setRewardDate(DateTime RewardDate)
    {
        this.RewardDate = RewardDate;

    }

    public string getRewardDate()
    {
        string RewardDate = this.RewardDate.ToString("yyyyMMdd");
        return RewardDate;
    }

    public void setRewardAmount(double RewardAmount)
    {
        this.RewardAmount = RewardAmount;
    }

    public double getRewardAmount()
    {
        return RewardAmount;
    }

    public void setRewardDescription(string RewardDescription)
    {
        this.RewardDescription = RewardDescription;
    }

    public string getRewardDescription()
    {
        return RewardDescription;
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
    public void sqlInsert()
    {
        //Database Connection
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";


        // INSERT STATEMENT
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;


        insert.CommandText = "INSERT INTO [dbo].[Reward_Transactions] VALUES (@RewardAmount, @RewardDate, @ReceiverID, @SenderID, @ValueID, @RewardDescription, @LastUpdatedBy, @LastUpdated, @RewardType)";

        insert.Parameters.AddWithValue("@RewardAmount", this.getRewardAmount());
        insert.Parameters.AddWithValue("@RewardDate", this.getRewardDate());
        insert.Parameters.AddWithValue("@ReceiverID", this.getReceiverId());
        insert.Parameters.AddWithValue("@SenderID", this.getSenderId());
        insert.Parameters.AddWithValue("@ValueID", this.getValueId());
        insert.Parameters.AddWithValue("@RewardDescription", this.getRewardDescription());
        insert.Parameters.AddWithValue("@LastUpdatedBy", this.getLastUpdatedBy());
        insert.Parameters.AddWithValue("@LastUpdated", this.getLastUpdated());
        insert.Parameters.AddWithValue("@RewardType", this.getRewardType());


        insert.ExecuteNonQuery();

        sc.Close();

    }
}