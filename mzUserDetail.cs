using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LINQ_DataDisplay
{
    public class mzUserDetail
    {
        public int ID { get; set; }
        public int UserID { get; set; }
        public string FatherName { get; set; }
        public string MotherName { get; set; }
        public  DateTime DOB { get; set; }
        public string Correspondence { get; set; }
        public string Permanent { get; set; }
        public int ContactPersonal { get; set; }
        public string ContactResidential { get; set; }
        public string Qualification { get; set; }
        public string College { get; set; }
        public DateTime Joining { get; set; }
        public string Position { get; set; }
        public string EmailOther { get; set; }
        public string ImageURL { get; set; }

       
    }
}