using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Organization_Class
/// </summary>
public class Organization_Class
{
    private int OrgId;
    private string OrgName;
    private string OrgPhone;
    private DateTime LastUpdated = DateTime.Now;
    private string LastUpdatedBy = "Group 15";
    public Organization_Class(string OrgName, string OrgPhone)
    {
        setOrgName(OrgName);
        setOrgPhone(OrgPhone);
    }

    //Getter and Setter's

    public void setOrgId(int OrgId)
    {
        this.OrgId = OrgId;
    }

    public int getOrgId()
    {
        return OrgId;
    }

    public void setOrgName(string OrgName)
    {
        this.OrgName = OrgName;
    }

    public string getOrgName()
    {
        return OrgName;
    }

    public void setOrgPhone(string OrgPhone)
    {
        this.OrgPhone = OrgPhone;
    }

    public string getOrgPhone()
    {
        return OrgPhone;
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