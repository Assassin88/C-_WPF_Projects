using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVVMLight_Sample.Model
{
    public class ProjectProgram
    {
        public string Name { get; set; }
        public string Customer { get; set; }
        public int PercentPerformance { get; set; }
        public string StartTime { get; set; }
        public string StopTime { get; set; }

        public DateTime DateStart;
        public DateTime DateStop;

        public ProjectProgram()
        {
            Name = RandomProject.GetRandomNameProject();
            Customer = RandomProject.GetRandomCustomer();
            PercentPerformance = Randomer.Next(50, 100);
            DateStart = new DateTime(Randomer.Next(2010, 2015), Randomer.Next(1, 12), Randomer.Next(1, 30),
                Randomer.Next(10, 24), Randomer.Next(10, 60), Randomer.Next(10, 60));
            DateStop = new DateTime(2018, Randomer.Next(1, 12), Randomer.Next(1, 30),
                Randomer.Next(10, 24), Randomer.Next(10, 60), Randomer.Next(10, 60));
            StartTime = DateStart.ToString();
            StopTime = DateStop.ToString();
        }

        public override string ToString()
        {
            return String.Format("{0} {1} {2}", Name, Customer, PercentPerformance);
        }
    }
}
