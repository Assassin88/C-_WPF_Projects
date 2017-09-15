using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace MVVMLight_Sample.Model
{
    public class Values : INotifyPropertyChanged
    {
        int rating;
        public string Position { get; set; }
        public int Salary { get; set; } 
        public int RatingTask { get; set; }
        public int Efficiency { get; set; }
        public int PercentOfProject { get; set; }
        //public int Rating { get { return Rating; } set { Rating = value; } }
        public string BirthDay { get; set; }
        public string Adress { get; set; }

        private Dictionary<string, int> dictionaryValue;


        public Dictionary<string, int> DictionaryValue
        {
            get
            {
                return dictionaryValue;
            }

            set
            {
                dictionaryValue = value;
            }
        }

        public int Rating
        {
            get
            {
                return rating;
            }

            set
            {
                rating = value;
                OnPropertyChanged("Rating");
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        public void OnPropertyChanged([CallerMemberName]string prop = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(prop));
        }

        public Values()
        {
            Position = RandomPosition.GetRandomPosition();
            Salary = Randomer.Next(1000, 1500);
            RatingTask = Randomer.Next(5, 10);
            Efficiency = Randomer.Next(5, 10);
            PercentOfProject = Randomer.Next(5, 10);
            Rating = Randomer.Next(6, 10);

            Adress = RandomCityAndDate.GetRandomAdress();
            BirthDay = String.Format("{0}.{1}.{2}", Randomer.Next(1, 30).ToString(), Randomer.Next(1, 12).ToString(), Randomer.Next(1980, 1995).ToString());
            dictionaryValue = new Dictionary<string, int>();
            dictionaryValue.Add("RatingTask", RatingTask);
            dictionaryValue.Add("Efficiency", Efficiency);
            dictionaryValue.Add("PercentOfProject", PercentOfProject);
            dictionaryValue.Add("Rating", Rating);
        }

        
        public override string ToString()
        {
            return String.Format("{0} {1} {2}", Position, Salary, Rating);
        }

    }
}