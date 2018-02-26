<%@ WebHandler Language="C#" Class="ShowProfilePicture" %>

using System;
using System.Web;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;

public class ShowProfilePicture : IHttpHandler, System.Web.SessionState.IRequiresSessionState {

    public void ProcessRequest (HttpContext context) {

        int currentEmpID = (int)(HttpContext.Current.Session["EmployeeID"]);

        //Database Connection
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "Data Source=aaixxyrfluc2wz.ctt4oijc6ckc.us-east-1.rds.amazonaws.com;Initial Catalog=Lab4;User ID=Tweedljm;Password=Promise96!;";

        // SELECT STATEMENT
        sc.Open();

        System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand();
        select.Connection = sc;
        select.CommandText = "SELECT ProfilePicture FROM Account WHERE EmployeeID = @currentEmpID";
        select.Parameters.AddWithValue("@currentEmpID", currentEmpID);

        SqlDataAdapter da = new SqlDataAdapter(select);
        DataTable dt = new DataTable();
        da.Fill(dt);


        byte[] image = (byte[])dt.Rows[0][0];

        context.Response.ContentType = "image/jpeg";
        context.Response.ContentType = "image/jpg";
        context.Response.ContentType = "image/png";

        context.Response.BinaryWrite(image);
        context.Response.Flush();
       

    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}