using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Security.Cryptography;

/// <summary>
/// Summary description for Login_Class
/// </summary>
public class Login_Class
{
    private int EmployeeId;
    private string UserName;
    private string Password;
    private DateTime LastUpdated;
    private string LastUpdatedBy;
    private string passwordSalt;
    private string passwordHash;


    public Login_Class(int employeeID, string UserName, string Password, string PswdHash, string PswdSalt)
    {
        setEmployeeId(employeeID);
        setUserName(UserName);
        setPassword(Password);
        setPasswordHash(PswdHash);
        setPasswordSalt(PswdSalt);
        setLastUpdated(DateTime.Now);
        setLastUpdatedBy("Group 15");
        this.sqlInsert();

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

    public void setUserName(string UserName)
    {
        this.UserName = UserName;
    }

    public string getUserName()
    {
        return UserName;
    }

    public void setPassword(string Password)
    {
        this.Password = Password;
    }

    public string getPassword()
    {
        return Password;
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

    public string getPasswordHash()
    {
        return this.passwordHash;
    }

    public void setPasswordHash(string hash)
    {
        this.passwordHash = hash;
    }

    public void setPasswordSalt(string salt)
    {
        this.passwordSalt = salt;
    }

    public string getPasswordSalt()
    {
        return this.passwordSalt;
    }


    public static string ComputeHash(string plainText,
                                     string hashAlgorithm,
                                     byte[] saltBytes)
    {
        // If salt is not specified, generate it on the fly.
        if (saltBytes == null)
        {
            // Define min and max salt sizes.
            int minSaltSize = 4;
            int maxSaltSize = 8;
            
            // Generate a random number for the size of the salt.
            Random random = new Random();
            int saltSize = random.Next(minSaltSize, maxSaltSize);

            // Allocate a byte array, which will hold the salt.
            saltBytes = new byte[saltSize];

            // Initialize a random number generator.
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();

            // Fill the salt with cryptographically strong byte values.
            rng.GetNonZeroBytes(saltBytes);
        }

        // Convert plain text into a byte array.
        byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);

        // Allocate array, which will hold plain text and salt.
        byte[] plainTextWithSaltBytes =
                new byte[plainTextBytes.Length + saltBytes.Length];

        // Copy plain text bytes into resulting array.
        for (int i = 0; i < plainTextBytes.Length; i++)
            plainTextWithSaltBytes[i] = plainTextBytes[i];

        // Append salt bytes to the resulting array.
        for (int i = 0; i < saltBytes.Length; i++)
            plainTextWithSaltBytes[plainTextBytes.Length + i] = saltBytes[i];

        
        // Because we support multiple hashing algorithms, we must define
        // hash object as a common (abstract) base class. We will specify the
        // actual hashing algorithm class later during object creation.
        HashAlgorithm hash;

        // Make sure hashing algorithm name is specified.
        if (hashAlgorithm == null)
            hashAlgorithm = "";

        // Initialize appropriate hashing algorithm class.
        switch (hashAlgorithm.ToUpper())
        {
            case "SHA1":
                hash = new SHA1Managed();
                break;

            case "SHA256":
                hash = new SHA256Managed();
                break;

            case "SHA384":
                hash = new SHA384Managed();
                break;

            case "SHA512":
                hash = new SHA512Managed();
                break;

            default:
                hash = new MD5CryptoServiceProvider();
                break;
        }

        // Compute hash value of our plain text with appended salt.
        byte[] hashBytes = hash.ComputeHash(plainTextWithSaltBytes);

        // Create array which will hold hash and original salt bytes.
        byte[] hashWithSaltBytes = new byte[hashBytes.Length +
                                            saltBytes.Length];

        // Copy hash bytes into resulting array.
        for (int i = 0; i < hashBytes.Length; i++)
            hashWithSaltBytes[i] = hashBytes[i];

        // Append salt bytes to the result.
        for (int i = 0; i < saltBytes.Length; i++)
            hashWithSaltBytes[hashBytes.Length + i] = saltBytes[i];

        // Convert result into a base64-encoded string.
        string hashValue = Convert.ToBase64String(hashWithSaltBytes);

        // Return the result.
        return hashValue;
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


        insert.CommandText = "INSERT INTO [dbo].[Login] VALUES (@EmployeeID, @Username, @Password, @PasswordHash, @PasswordSalt, @LastUpdatedBy, @LastUpdated)";

        insert.Parameters.AddWithValue("@EmployeeID", this.getEmployeeId());
        insert.Parameters.AddWithValue("@Username", this.getUserName());
        insert.Parameters.AddWithValue("@Password", this.getPassword());
        insert.Parameters.AddWithValue("@PasswordHash", this.getPasswordHash());
        insert.Parameters.AddWithValue("@PasswordSalt", this.getPasswordSalt());
        insert.Parameters.AddWithValue("@LastUpdatedBy", this.getLastUpdatedBy());
        insert.Parameters.AddWithValue("@LastUpdated", this.getLastUpdated());


        insert.ExecuteNonQuery();

        sc.Close();

    }

    public static bool VerifyHash(string plainText,
                                 string hashAlgorithm,
                                 string hashValue)
    {
        // Convert base64-encoded hash value into a byte array.
        byte[] hashWithSaltBytes = Convert.FromBase64String(hashValue);

        // We must know size of hash (without salt).
        int hashSizeInBits, hashSizeInBytes;

        // Make sure that hashing algorithm name is specified.
        if (hashAlgorithm == null)
            hashAlgorithm = "";

        // Size of hash is based on the specified algorithm.
        switch (hashAlgorithm.ToUpper())
        {
            case "SHA1":
                hashSizeInBits = 160;
                break;

            case "SHA256":
                hashSizeInBits = 256;
                break;

            case "SHA384":
                hashSizeInBits = 384;
                break;

            case "SHA512":
                hashSizeInBits = 512;
                break;

            default: // Must be MD5
                hashSizeInBits = 128;
                break;
        }

        // Convert size of hash from bits to bytes.
        hashSizeInBytes = hashSizeInBits / 8;

        // Make sure that the specified hash value is long enough.
        if (hashWithSaltBytes.Length < hashSizeInBytes)
            return false;

        // Allocate array to hold original salt bytes retrieved from hash.
        byte[] saltBytes = new byte[hashWithSaltBytes.Length -
                                    hashSizeInBytes];

        // Copy salt from the end of the hash to the new array.
        for (int i = 0; i < saltBytes.Length; i++)
            saltBytes[i] = hashWithSaltBytes[hashSizeInBytes + i];

        // Compute a new hash string.
        string expectedHashString =
                    ComputeHash(plainText, hashAlgorithm, saltBytes);

        // If the computed hash matches the specified hash,
        // the plain text value must be correct.
        return (hashValue == expectedHashString);
    }







}