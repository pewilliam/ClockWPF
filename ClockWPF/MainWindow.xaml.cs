using System;
using System.Windows;
using System.Windows.Threading;
using System.Timers;
using System.Windows.Controls;

namespace ClockWPF
{
    public partial class MainWindow : Window
    {
        Timer timer = new Timer();
        string place = "";

        public MainWindow()
        {
            InitializeComponent();
        }

        private void StartClock()
        {
            DispatcherTimer timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += Tickevent;
            timer.Start();
        }

        private void Tickevent(object? sender, EventArgs e)
        {
            var info = TimeZoneInfo.FindSystemTimeZoneById(place);
            DateTimeOffset localServerTime = DateTimeOffset.Now;
            DateTimeOffset localTime = TimeZoneInfo.ConvertTime(localServerTime, info);
            Timer.FontSize = 60;
            Timer.Content = localTime.ToString("HH:mm:ss");
        }

        private void CB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            place = (string)CB.SelectedValue;

            if (timer.Enabled)
            {
                return;
            }
            else
            {
                StartClock();
            }
        }
    }
}

//https://www.ge.com/digital/documentation/meridium/V36160/Help/Master/Subsystems/AssetPortal/Content/Time_Zone_Mappings.htm
