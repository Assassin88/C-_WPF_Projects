using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace VideoPleerWpfApplication
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        bool pause;
        DispatcherTimer timer;
        List<Uri> videoList = null;
        public MainWindow()
        {
            InitializeComponent();
            pause = true;
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromMilliseconds(100);
            timer.Tick += Timer_Tick;
            videoList = new List<Uri>();
            meMain.Volume = 0;
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            //slider_seek.Value = meMain.Position.TotalSeconds;
            tb_TimeStart.Text = String.Format("{0:00}:{1:00}:{1:00}", meMain.Position.Hours,
                meMain.Position.Minutes, meMain.Position.Seconds);
        }

        private void btnPlay_Click(object sender, RoutedEventArgs e)
        {
            if (pause)
            {
                meMain.Play();
                pause = false;
            }
            else
            {
                meMain.Pause();
                pause = true;
            }
        }

        private void btnOpen_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
            if (ofd.ShowDialog().Value)
            {
              meMain.Source = new Uri(ofd.FileName);
              videoList.Add(new Uri(ofd.FileName));
            }
            lbMain.ItemsSource = null;
            lbMain.ItemsSource = videoList;
        }

        private void btnStop_Click(object sender, RoutedEventArgs e)
        {
            meMain.Stop();
            pause = true;
            slider_seek.Value = 0;
        }

        private void Window_Drop(object sender, DragEventArgs e)
        {
            string fileName = (string)((DataObject)e.Data).GetFileDropList()[0];
            meMain.Source = new Uri(fileName);
            meMain.LoadedBehavior = MediaState.Manual;
            meMain.UnloadedBehavior = MediaState.Manual;
            meMain.Volume = (double)slider_Vol.Value;
            meMain.Play();
        }

        private void meMain_MediaOpened(object sender, RoutedEventArgs e)
        {
            TimeSpan ts = meMain.NaturalDuration.TimeSpan;
            lb_TimeStop.Text = String.Format("{0:00}:{1:00}:{2:00}", ts.Hours, ts.Minutes, ts.Seconds);
            slider_seek.Maximum = ts.TotalSeconds;
            timer.Start();
        }

        private void lbMain_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (lbMain.SelectedItem != null)
            {
                meMain.Source = new Uri(lbMain.SelectedValue.ToString());
                slider_seek.Value = 0;
            }
        }

        private void slider_Vol_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            meMain.Volume = (double)slider_Vol.Value;
        }

        private void slider_seek_ValueChanged_1(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            meMain.Position = TimeSpan.FromSeconds(slider_seek.Value);
        }

    }
}
