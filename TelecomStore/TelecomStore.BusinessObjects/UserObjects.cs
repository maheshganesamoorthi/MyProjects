using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TelecomStore.BusinessObjects
{
    public class User
    {
        private int userId;
        private string firstName;
        private string lastName;
        private string address;
        private string phone;
        private string email;
        private string role;
        private string SecurityQues;
        private string SecurityAns;
        private string autopwd;

    
        

        public int UserId
        {
            get { return userId; }
            set { userId = value; }
        }


        public string FirstName
        {
            get { return firstName; }
            set { firstName = value; }
        }


        public string LastName
        {
            get { return lastName; }
            set { lastName = value; }
        }

        public string Address
        {
            get { return address; }
            set { address = value; }
        }

        public string Phone
        {
            get { return phone; }
            set { phone = value; }
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }


        

        public string SecureQues
        {
            get { return SecurityQues; }
            set { SecurityQues = value; }
        }

        public string SecureAns
        {
            get { return SecurityAns ; }
            set { SecurityAns = value; }
        }


        public string Pwd
        {
            get { return autopwd; }
            set { autopwd = value; }
        }
        public string Role
        {
            get { return role; }
            set { role = value; }
        }
    }
}
