using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVVMLight_Sample.Model
{
    public class RandomProject
    {
        private static String[] nameProject = new String[]
        {
            "Building",
            "StartUp",
            "Training",
            "Web_Tehnology",
        };

        private static String[] customer = new String[]
        {
            "A-100",
            "TAXI 7788",
            "CrazyTown",
            "RaccoonCity",
        };

        /// <summary>
        /// Method of random projectName generation
        /// </summary>
        /// <returns></returns>
        public static String GetRandomNameProject()
        {
            return nameProject[Randomer.Next(0, nameProject.Length)];
        }

        /// <summary>
        /// Method of random customer generation
        /// </summary>
        /// <returns></returns>
        public static String GetRandomCustomer()
        {
            return customer[Randomer.Next(0, customer.Length)];
        }
    }
}
