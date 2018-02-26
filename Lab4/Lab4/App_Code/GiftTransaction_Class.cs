using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for GiftTransaction_Class
/// </summary>
public class GiftTransaction_Class
{
    private int EmployeeId;
    private int GiftId, GiftQuantity;
    private DateTime TransactionDate = DateTime.Now;
    private DateTime LastUpdated = DateTime.Now;
    private string LastUpdatedBy = "Group 15";


    public GiftTransaction_Class(int EmployeeID, int GiftID, int GiftQuantity)
    {
        setEmployeeId(EmployeeID);
        setGiftId(GiftID);
        setGiftQuantity(GiftQuantity);
        saveGiftTransaction();
    }
    public GiftTransaction_Class(DateTime TransactionDate)
    {
        setTransactionDate(TransactionDate);
    }

    public void setEmployeeId(int EmployeeId)
    {
        this.EmployeeId = EmployeeId;
    }

    public int getEmployeeId()
    {
        return EmployeeId;
    }

    public void setGiftId(int GiftId)
    {
        this.GiftId = GiftId;
    }

    public int getGiftId()
    {
        return GiftId;
    }

    public void setGiftQuantity(int GiftQuantity)
    {
        this.GiftQuantity = GiftQuantity;
    }
    public int getGiftQuantity()
    {
        return GiftQuantity;
    }

    public void setTransactionDate(DateTime TransactionDate)
    {
        this.TransactionDate = TransactionDate;

    }

    public string getTransactionDate()
    {
        string TransactionDate = this.TransactionDate.ToString("yyyyMMdd");
        return TransactionDate;
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

    public void saveGiftTransaction()
    {
        //Database Connection
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";


        // INSERT STATEMENT
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;


        insert.CommandText = "INSERT INTO [dbo].[Gift_Transaction] VALUES (@EmpID, @GiftID, @GiftQuantity, @TransactionDate, @LastUpdatedBy, @LastUpdated)";

        insert.Parameters.AddWithValue("@EmpID", this.getEmployeeId());
        insert.Parameters.AddWithValue("@GiftID", this.getGiftId());
        insert.Parameters.AddWithValue("@GiftQuantity", this.getGiftQuantity());
        insert.Parameters.AddWithValue("@TransactionDate", this.getTransactionDate());
        insert.Parameters.AddWithValue("@LastUpdatedBy", this.getLastUpdatedBy());
        insert.Parameters.AddWithValue("@LastUpdated", this.getLastUpdated());
        insert.ExecuteNonQuery();

        sc.Close();
    }
}