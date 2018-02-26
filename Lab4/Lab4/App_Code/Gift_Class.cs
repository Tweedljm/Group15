using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Gift_Class
{
    private int GiftId;
    private int GiftProviderId;
    private string GiftName;
    private string GiftDescription;
    private double GiftCost;
    private int GiftQuantity;
    private string LastUpdatedBy = "Group 15";
    private DateTime LastUpdated = DateTime.Now;
    public Gift_Class(string GiftName, string GiftDescription, double GiftCost, int GiftQuantity, int GiftProviderID)
    {
        setGiftName(GiftName);
        setGiftDescription(GiftDescription);
        setGiftCost(GiftCost);
        setGiftQuantity(GiftQuantity);
        setGiftProviderId(GiftProviderID);
        saveGift();
    }

    //Getters and Setters

    public void setGiftId(int GiftId)
    {
        this.GiftId = GiftId;
    }

    public int getGiftId()
    {
        return GiftId;
    }

    public void setGiftProviderId(int GiftProviderId)
    {
        this.GiftProviderId = GiftProviderId;
    }

    public int getGiftProviderId()
    {
        return GiftProviderId;
    }

    public void setGiftName(string GiftName)
    {
        this.GiftName = GiftName;
    }

    public string getGiftName()
    {
        return GiftName;
    }

    public void setGiftDescription(string GiftDescription)
    {
        this.GiftDescription = GiftDescription;
    }

    public string getGiftDescription()
    {
        return GiftDescription;
    }
    public void setGiftCost(double GiftCost)
    {
        this.GiftCost = GiftCost;
    }

    public int getGiftQuanitity()
    {
        return GiftQuantity;
    }
    public void setGiftQuantity(int GiftQuantity)
    {
        this.GiftQuantity = GiftQuantity;
    }


    public double getGiftCost()
    {
        return GiftCost;
    }

    public void setLastUpdated(string LastUpdatedBy)
    {
        this.LastUpdatedBy = LastUpdatedBy;
    }

    public string getLastUpdatedBy()
    {
        return LastUpdatedBy;
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

    public void saveGift()
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";


        // INSERT STATEMENT
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;


        insert.CommandText = "INSERT INTO [dbo].[Gift] VALUES (@GiftName, @GiftDescription, @GiftQuantity, @GiftCost, @LastUpdatedBy, @LastUpdated, @GiftProviderID)";

        insert.Parameters.AddWithValue("@GiftName", this.getGiftName());
        insert.Parameters.AddWithValue("@GiftDescription", this.getGiftDescription());
        insert.Parameters.AddWithValue("@GiftQuantity", this.getGiftQuanitity());
        insert.Parameters.AddWithValue("@GiftCost", this.getGiftCost());
        insert.Parameters.AddWithValue("@LastUpdatedBy", this.getLastUpdatedBy());
        insert.Parameters.AddWithValue("@LastUpdated", this.getLastUpdated());
        insert.Parameters.AddWithValue("@GiftProviderID", this.getGiftProviderId());

        insert.ExecuteNonQuery();

        sc.Close();
    }

}