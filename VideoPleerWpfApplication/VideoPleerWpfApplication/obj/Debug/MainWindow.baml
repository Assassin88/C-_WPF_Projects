   M S B A M L   `   `   `  ����S  OVideoPleerWpfApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:VideoPleerWpfApplicationVideoPleerWpfApplication  5   	   )    #VideoPleerWpfApplication.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:VideoPleerWpfApplication     5   	   -   5          � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    J� 	AllowDrop . ���	#FF03090C.��5	      �  � ColumnDefinitions 5
   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $
��auto �6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   � $��0��6   $��3��6   5      �� 5   
   -   5        $��btnOpen��5       $
��Open��6   $��0��6/   $��2��6?   $��3q�6L   $��Stretch=�6W   5      d� 5   
   -   5        $��btnPlay��5   ,   $��
Play/Pause��6   $��1��5      $��2��6'   $��3q�64   $��Stretch=�6?   5       �� 5"   
   -   5        $��btnStop��5"       $
��Stop��6   $��2��5#      $��2��6!   $��3q�6.   $��Stretch=�69   5$      �� 5%   
   -   5        $��lb_TimeStop��5%      $��3��6%   $��3��65   $��5q�6B   6O   �� 5'   
   -   5         ��Name$ tb_TimeStart��5'      $��0��6(   $��3��68   $��5q�6E   6R   �� 5(   
   -   5        $��slider_seek��5(      $��1��6%    �� IsMoveToPointEnabled . $��3��6Q   $��5q�6^   $��Stretch=�5)      $��2��60    � Maximum$	 100Q�6D    � SmallChange$ 10Q�6R   5*      �� 5+   
   -   5         ��Name$ 
slider_Vol��5+      $��3��6%   $��2��65   $��5q�6B   $��Stretch=�6M   $��2��6k   	 � LargeChange$	 0Q�6   $ 1Q�6�   6�   r� 5,   
   -	   5        
 r�Name$
 meMain��5,   ;   $��0��6   $��4��6'    r� LoadedBehavior$ Manual=�6L   |�. $��0,19,0,2q�5-   I   $��2��6[   o� 5/   
   $	��Top=�6   $��0��6$   $��4��64   @�50      m� 51      -
   5         m�Name$ miFile��51      $
��File��6+   6;   m� 52      -   5        $ miView��52      $
��View��6+   6;   54      9� 56   
   -   5         9�Name$ expTest2��56      $��3��6%   $��1��65   $��2q�6B    9� ExpandDirection$
 Left=�6V   $y�Visible=�57       9� 
IsExpanded . $��2q�58   %   ���	#FF727799.��5:      �� -   5         ��Name$ lbMain��5:      $��2q�6&   $��Stretch=�6:    �� AlternationCount$ 12��5;      $��10(�6,   5<      5=      5>      5?      