using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace LetzMitWebServer
{
    public class MysqlData
    {
        
        #region Login & SignUp
        public string connect = "server=bizspa.co.za;uid=letzmeet;" + "pwd=letzmeet!;database=letzmeet";
        public List<string> login(string password, string userId)
    {
        MySqlConnection conn;

        try
        {
                List<string> Data = new List<string>();
            conn = new MySqlConnection(connect);
            conn.Open();
            string command = String.Format("SELECT * FROM `users` WHERE `email` = '{0}'", userId);
            MySqlCommand select = new MySqlCommand(command, conn);
            MySqlDataReader reader;
            reader = select.ExecuteReader();
                int datacount = 0;
            List<string> data = new List<string>(1);
            while (reader.Read())
            {       while (datacount != reader.FieldCount)
                    {
                        data.Add(string.Format("{0}", reader[datacount]));
                        datacount++;
                    }
            }
            if (data.Count() < 1) { Data.Clear(); Data.Add("User Name Does NOT Exist!"); return Data; }
            if (password == data[11])
            {
                    Data = data;
                conn.Close(); return Data;
                
            }
            conn.Close(); Data.Clear(); Data.Add("Incorrect Password"); return Data;

        }
        catch (MySqlException ex)
        {
            return new List<string>() { ex.Message};
        }
    }
        public string singup(string name, string surname, string cellnum, string email, string DOB, string address, string city, string password, string province, string postcode)
    {
        // INSERT INTO `ddt_data`.`users` (`userId`, `Name`, `password`) VALUES ('Me003', 'Mell', '123456789')
        MySqlConnection conn;
            string userId = email;

        try
        {
            conn = new MySqlConnection(connect);
            //conn.Open();

                string adduser = string.Format("INSERT INTO `users`(`name`, `surname`, `email`, `DOB`, `number`, `address`, `city`, `province`, `postcode`, `password`)" +
                                                             " VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}')",name,surname,email,DOB,cellnum,address,city,province,postcode,password);
            MySqlCommand AddUsr = new MySqlCommand(adduser, conn);
                AddUsr.Connection.Open();
                int recordsaffected = AddUsr.ExecuteNonQuery();
                if (recordsaffected < 1)
                {
                    return "Sorry, We Are Experiencing Problems with our servers and cannot process your request at the moment, please contact support on the contact form below.";
                } else return "Signup Successful, Enter YOur Credentials Below To Sign In";


            }
        catch (MySqlException ex)
        {
            //conn.Close();
            return '`' + ex.Message + '`';
            //conn.Close();
        }
    }
        #endregion
        #region User Actions
        public List<string> GetProfileData(string userId)
        {
            MySqlConnection conn;
                try
                {
                    int datacount = 0;
                    conn = new MySqlConnection(connect);
                    conn.Open();
                    string command = String.Format("SELECT * FROM `users` WHERE `userId` = '{0}'", userId);
                    MySqlCommand select = new MySqlCommand(command, conn);
                    MySqlDataReader reader;
                    reader = select.ExecuteReader();
                    List<string> data = new List<string>(1);
                    while (reader.Read())
                    {
                    foreach (string X in reader)
                      {
                        data.Add(string.Format("{0}", reader[datacount]));
                        datacount++;
                      }

                    }
                conn.Close(); return data;


            } 
                
            catch (MySqlException ex)
            {
                return new List<string> { '`' + ex.Message + '`' };
            }

            //return new List<string> { "error" };
        }//Done
        public string GetSpeakerData(string userId)
        {
            MySqlConnection conn;
            try
            {
                conn = new MySqlConnection(connect);
                conn.Open();
                string command = String.Format("SELECT * FROM `users` WHERE `userId` = '{0}'", userId);
                MySqlCommand select = new MySqlCommand(command, conn);
                MySqlDataReader reader;
                reader = select.ExecuteReader();
                List<string> data = new List<string>(1);
                while (reader.Read())
                {
                    //Read Data into something
                    return userId; //rep[lacewith html or xml
                }


            }

            catch (MySqlException ex)
            {
                return '`' + ex.Message + '`';
            }

            return "error";
        }
        public string GetEvents()
        {
            MySqlConnection conn;

            try
            {
                List<string> Data = new List<string>();
                conn = new MySqlConnection(connect);
                conn.Open();
                string command = String.Format("SELECT * FROM `events`");
                MySqlCommand select = new MySqlCommand(command, conn);
                MySqlDataReader reader;
                reader = select.ExecuteReader();
                int datacount = 1;
               // List<string> data = new List<string>();
                while (reader.Read())
                {
                   
                        Data.Add(string.Format(@"<article><header><h2><a  href=""EventDetails.aspx?event={0}"" >{2}</a></h2></header><span class=""image featured""><a href=""EventDetails.aspx?event={0}""> <img src=""images/{1}"" alt=""{2}""></a></span><p>Short Description<a href=""EventDetails.aspx?event={0}""> Read More</a></p></article>", reader[0],reader[10],reader[1]));
                }
                
                conn.Close(); string rslt = ""; foreach(string X in Data) { rslt = rslt + X; } return rslt;

            }
            catch (MySqlException ex)
            {
                return ex.Message;
            }
        }//Done
        public string EventDetails(string ID)
        {
            MySqlConnection conn;

            try
            {
                List<string> Data = new List<string>();
                conn = new MySqlConnection(connect);
                conn.Open();
                string command = String.Format("SELECT * FROM `events` WHERE id='{0}'",ID);
                MySqlCommand select = new MySqlCommand(command, conn);
                MySqlDataReader reader;
                reader = select.ExecuteReader();
                //int datacount = 1;
                // List<string> data = new List<string>();
                while (reader.Read())
                {

                    Data.Add(string.Format(@"<article><header><h2>{2}</h2></header><span class=""image featured""><img src=""images/{1}"" alt=""{2}""></span><p>{0}</p><p>Date: {3}</p><p>Venue: {4}</p><p>Time: {5}</p><p>RSVP Deadline: {6}</p></article>", reader[2], reader[10], reader[1], reader[4], reader[9], reader[5], reader[6]));
                }

                conn.Close(); string rslt = ""; foreach (string X in Data) { rslt = rslt + X; }
                return rslt;

            }
            catch (MySqlException ex)
            {
                return ex.Message;
            }
        }//Done, Needs Speaker Links
        public string BookEvent() { return "Not Done"; }
        public string GetAttending() { return "Not Done"; }
        public string CancellEvent() { return "Not Done"; }
        public string EditProfile() { return "Not Done"; }
        public string ContactManager() { return "Not Done"; }
        public string AddReview() { return "Not Done"; }
        #endregion
        #region Manager Actions
        public string AddEvent() { return "Not Done"; }
        public string Cancell_Event() { return "Not Done"; }
        public string RemoveEvent() { return "Not Done"; }
        public string Editevent() { return "Not Done"; }
        public string ApproveGuest() { return "Not Done"; }
        public string GetGuestList() { return "Not Done"; }
        #endregion
        #region App Actions
        public string GetBookingTimes() { return "Not Done"; }
        #endregion
    }
}