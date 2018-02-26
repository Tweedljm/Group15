using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class GiftProvider_Class
{
    private int GiftProviderId;
    private string OrgName;
    private string BuildingNumber;
    private string Street;
    private string City;
    private string State;
    private string Country;
    private string Zip;
    private string Email;
    private string PhoneNumber;
    private string OrgDescription;
    private DateTime LastUpdated = DateTime.Now;
    private string LastUpdatedBy = "Group 15";


    public GiftProvider_Class(string OrgName, string OrgDescription, string BuildingNumber, string Street, string City, string State, string Zip, string Email, string PhoneNumber)
    {
        setOrgName(OrgName);
        setOrgDescription(OrgDescription);
        setBuildingNumber(BuildingNumber);
        setStreet(Street);
        setCity(City);
        setState(State);
        setZip(Zip);
        setEmail(Email);
        setPhoneNumber(PhoneNumber);
        saveQuery();
    }


    public void saveQuery()
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        insert.CommandText = "Insert into dbo.Gift_Provider values (@ProviderName, @BuildingNumber, @Street, @CityCounty, @Zip, @Email, @PhoneNumber, @GiftProviderDescription, @LastUpdatedBy, @LastUpdated, @State)";

        insert.Parameters.AddWithValue("@ProviderName", this.getOrgName());
        insert.Parameters.AddWithValue("@BuildingNumber", this.getBuildingNumber());
        insert.Parameters.AddWithValue("@Street", this.getStreet());
        insert.Parameters.AddWithValue("@CityCounty", this.getCity());
        insert.Parameters.AddWithValue("@Zip", this.getZip());
        insert.Parameters.AddWithValue("@Email", this.getEmail());
        insert.Parameters.AddWithValue("@PhoneNumber", this.getPhoneNumber());
        insert.Parameters.AddWithValue("@GiftProviderDescription", this.getOrgDescription());
        insert.Parameters.AddWithValue("@LastUpdatedBy", this.getLastUpdatedBy());
        insert.Parameters.AddWithValue("@LastUpdated", this.getLastUpdated());
        insert.Parameters.AddWithValue("@State", this.getState());
        insert.ExecuteNonQuery();
        sc.Close();

    }
    //Getters and Setters
    public void setGiftProviderId(int GiftProviderId)
    {
        this.GiftProviderId = GiftProviderId;
    }

    public int getGiftProviderId()
    {
        return GiftProviderId;
    }
    public void setOrgName(string OrgName)
    {
        this.OrgName = OrgName;
    }

    public string getOrgName()
    {
        return OrgName;
    }

    public void setOrgDescription(string OrgDescription)
    {
        this.OrgDescription = OrgDescription;
    }

    public string getOrgDescription()
    {
        return OrgDescription;
    }

    public void setEmail(string Email)
    {
        this.Email = Email;
    }

    public string getEmail()
    {
        return Email;
    }

    public void setPhoneNumber(string PhoneNumber)
    {
        this.PhoneNumber = PhoneNumber;
    }

    public string getPhoneNumber()
    {
        return PhoneNumber;
    }

    public void setBuildingNumber(string BuildingNumber)
    {
        this.BuildingNumber = BuildingNumber;
    }

    public string getBuildingNumber()
    {
        return BuildingNumber;
    }

    public void setStreet(string Street)
    {
        this.Street = Street;
    }

    public string getStreet()
    {
        return Street;
    }

    public void setCity(string City)
    {
        this.City = City;
    }

    public string getCity()
    {
        return City;
    }

    public void setState(string State)
    {
        this.State = State;
    }

    public string getState()
    {
        return State;
    }

    public void setCountry(string Country)
    {
        this.Country = Country;
    }

    public string getCountry()
    {
        return Country;
    }

    public void setZip(string Zip)
    {
        this.Zip = Zip;
    }

    public string getZip()
    {
        return Zip;
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