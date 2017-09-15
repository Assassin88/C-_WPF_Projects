using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVVMLight_Sample.Model
{
    class RandomCityAndDate
    {
        private static DateTime Date;
        private static String[] Adress = new String[]
        {
            "MinskCity",
            "BrestCity",
            "BorovlyanyCity",
            "KievCity",
            "MoskvaCity",
            "GrodnoCity",
            "MogilevCity",
        };

        /// <summary>
        /// Method of random date generation
        /// </summary>
        /// <returns></returns>
        public static DateTime GetBirthDate()
        {
            Date = new DateTime(Randomer.Next(1, 30), Randomer.Next(1, 12), Randomer.Next(1980, 1995));
            return Date;
        }

        /// <summary>
        /// Method of random address generation
        /// </summary>
        /// <returns></returns>
        public static String GetRandomAdress()
        {
            return Adress[Randomer.Next(0, Adress.Length)];
        }
    }
}
