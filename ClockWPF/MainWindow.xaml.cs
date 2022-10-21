using System;
using System.Windows;
using System.Windows.Threading;
using System.Timers;

namespace ClockWPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Timer timer = new Timer(1);

        public MainWindow()
        {
            InitializeComponent();
            Timer.Content = DateTime.Now.ToString("HH:mm:ss");
            StartClock();
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
            Timer.Content = DateTime.Now.ToString("HH:mm:ss");
        }
    }
}
