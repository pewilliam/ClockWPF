   M S B A M L   `   `   `  ????C  ?ClockWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:ClockWPFClockWPF  5   	       ClockWPF.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:ClockWPF     5   	   
???   ?  ? Title$  
MainWindow??5	   	   $	??250??5
   	   $	??300??5   	    ? 
ResizeMode$ NoResize=?5   	   .??5      ?  ? RowDefinitions 5   
   ?? 5      $??0.10* ?6   ?? 5       ? ColumnDefinitions 5   
   ?? 5      ?? 5      ?? 5      .+?5   
   ?? -   5         ??Name$ Timer??5      $??Digite a timezone??5      $??25(?5      
???????$??Center=?5      $??Center=?5      $??1??5       $??0??5!      $??3??5"      $??Center=?5#      $??Center=?5$      $	??150??5%      $	??250??5&      ?? 5*   
   -   5         ??Name$ CB??5*       ?? SelectedValuePath$ Content??5+      .@?5,      ?? .??6   Pacific Standard Time62   ?? 5-      .??6   Eastern Standard Time62   ?? 5.      .??6    E. South America Standard Time6;   5/      ?? 51   
   -   5        $??0??51      $??2??52      $
??Send??53      54      55      56      