using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for OrgValues_Class
/// </summary>
public class OrgValues_Class
{
    private int ValueId;
    private string ValueName;
    private string ValueDescription;
    private DateTime LastUpdated = DateTime.Now;
    private string LastUpdatedBy = "Group 15";
    public OrgValues_Class(string ValueName, string ValueDescription)
    {
        setValueName(ValueName);
        setValueDescription(ValueDescription);
    }

    //Getter and Setter's

    public void setValueId(int ValueId)
    {
        this.ValueId = ValueId;
    }

    public int getValueId()
    {
        return ValueId;
    }

    public void setValueName(string ValueName)
    {
        this.ValueName = ValueName;
    }

    public string getValueName()
    {
        return ValueName;
    }

    public void setValueDescription(string ValueDescription)
    {
        this.ValueDescription = ValueDescription;
    }

    public string getValueDescription()
    {
        return ValueDescription;
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

    public void saveOrgValue()
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        insert.CommandText = "Insert into dbo. values (@ValueName, @ValueDescription, @LastUpdatedBy, @LastUpdated, @OrganizationID)";

        insert.Parameters.AddWithValue("@FirstName", this.getValueName());
        insert.Parameters.AddWithValue("@MiddleInitial", this.getValueDescription());
        insert.Parameters.AddWithValue("@LastUpdatedBy", this.getLastUpdatedBy());
        insert.Parameters.AddWithValue("@LastUpdated", this.getLastUpdated());
        insert.Parameters.AddWithValue("@OrganizationID", 2);
        insert.ExecuteNonQuery();
        sc.Close();
    }
}