using MVVMLight_Sample.Helper.JSONClasses;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace MVVMLight_Sample.Helper
{
    class RandomUserHelper
    {
        public static Rootobject GetUsers()
        {
            var request = WebRequest.Create(@"https://randomuser.me/api/?results=30"); ;
            WebResponse response = request.GetResponse();

            var dataStream = response.GetResponseStream();

            StreamReader reader = new StreamReader(dataStream);

            string responseFromServer = reader.ReadToEnd();

            JavaScriptSerializer ser = new JavaScriptSerializer();
            return (Rootobject)ser.Deserialize(responseFromServer, typeof(Rootobject));
        }
    }
}
