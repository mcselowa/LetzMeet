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
                conn.Close(); return Data; ;
                
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
            conn.Open();

            string UserDetails = String.Format("INSERT INTO userdetails (userId, Name, password,email,Team) VALUES ('{0}', '{1}', '{2}', '{3}', '{4}','{5}', '{6}', '{7}', '{8}')", userId, name, password, email);
            string AddPassword = string.Format("INSERT INTO users (userId, password) VALUES ('{0}', '{1}'", userId, password);
            MySqlCommand select = new MySqlCommand(UserDetails, conn);
            MySqlDataReader reader;
            reader = select.ExecuteReader();
            reader.Close();
            List<string> data = new List<string>();
            string command2 = String.Format("SELECT * FROM `users` WHERE `userId` = '{0}'", userId);
            select = new MySqlCommand(command2, conn);
            reader = select.ExecuteReader();

            while (reader.Read())
            {
                data.Add(String.Format("{0}", reader[3]));
            }
            if (password == data[0])
            {
                conn.Close(); return "`User Added," + userId + '`';
            }
            conn.Close();
            return "`Data Missmatch`";

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
        public string GetProfileData(int State, string userId)
        {
            MySqlConnection conn;
            if (State == 1) {
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
            }
            return "error";
        }
        public string GetEvents() { return "Not Done"; }
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