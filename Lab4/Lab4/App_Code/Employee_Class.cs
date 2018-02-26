using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Employee_Class
/// </summary>
public class Employee_Class
{
    private int EmployeeId;
    private int OrgId;
    private string FirstName;
    private string MiddleInitial;
    private string LastName;
    private string Email;
    private DateTime LastUpdated = DateTime.Now;
    private string LastUpdatedBy = "Group 15";

    public Employee_Class(string FirstName, string MiddleInitial, string LastName, string Email)
    {
        setFirstName(FirstName);
        setMiddleInitial(MiddleInitial);
        setLastName(LastName);
        setEmail(Email);
        saveQuery();
    }

    public void saveQuery()
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        insert.CommandText = "Insert into dbo.Employee values (@FirstName, @MiddleInitial, @LastName, @Email, @LastUpdatedBy, @LastUpdated, @OrganizationID)";
        
        insert.Parameters.AddWithValue("@FirstName", this.getFirstName());
        insert.Parameters.AddWithValue("@MiddleInitial", this.getMiddleInitial());
        insert.Parameters.AddWithValue("@LastName", this.getLastName());
        insert.Parameters.AddWithValue("@Email", this.getEmail());
        insert.Parameters.AddWithValue("@LastUpdatedBy", this.getLastUpdatedBy());
        insert.Parameters.AddWithValue("@LastUpdated", this.getLastUpdated());
        insert.Parameters.AddWithValue("@OrganizationID", 2);
        insert.ExecuteNonQuery();
        sc.Close();
        
    }
    //Getter and Setter's

    public void setEmployeeId(int EmployeeId)
    {
        this.EmployeeId = EmployeeId;
    }

    public int getEmployeeId()
    {
        return EmployeeId;
    }

    public void setOrgId(int OrgId)
    {
        this.OrgId = OrgId;
    }

    public int getOrgId()
    {
        return OrgId;
    }
    public void setFirstName(string FirstName)
    {
        this.FirstName = FirstName;
    }

    public string getFirstName()
    {
        return FirstName;
    }

    public void setMiddleInitial(string MiddleInitial)
    {
        this.MiddleInitial = MiddleInitial;
    }

    public string getMiddleInitial()
    {
        return MiddleInitial;
    }
    public void setLastName(string LastName)
    {
        this.LastName = LastName;
    }

    public string getLastName()
    {
        return LastName;
    }

    public void setEmail(string Email)
    {
        this.Email = Email;
    }

    public string getEmail()
    {
        return Email;
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