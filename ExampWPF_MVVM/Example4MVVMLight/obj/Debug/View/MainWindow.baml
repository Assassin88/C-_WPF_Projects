   M S B A M L   `   `   `  ����K  GMVVMLight_Sample, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:MVVMLight_Sample.ViewModelMVVMLight_Sample.ViewModel  5   	   ?$clr-namespace:MVVMLight_Sample.ModelMVVMLight_Sample.Model  5   	   =#clr-namespace:RatingContol.ControlsRatingContol.Controls  5   	   | xSystem.Windows.Controls.DataVisualization.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35�{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit2System.Windows.Controls.DataVisualization.Charting 5   	   !    MVVMLight_Sample.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   :local(clr-namespace:MVVMLight_Sample.ViewModel     5   	   4loc$clr-namespace:MVVMLight_Sample.Model     5   	   4locl#clr-namespace:RatingContol.Controls     5   	   �chartingToolkit{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5	   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6F     � Title$  
MainWindow��5
   	   $	��496��6   $	��889��6)   $	��300��65   $	��300��6E    � DataContext 5      4   .MVVMLight_Sample.ViewModel.MainWindowViewModel  5   
    � 	Resources 5         PeopleTemplate � RowDefinitions � ColumnDefinitions �� CornerRadius �� TextAlignment��%  &	        �� 5   
   .R�5      � ���	#FF525555 5      �� 5      $
��auto �6$   65   �� 5      $
��auto �6$   64    5      �� 5      $��* �6'   63   �� 5      $��* �6'   63   .+�5      �� $ 5��6   
���   �$��2q�6>   $��Stretch=�6R   $��Stretch=�6p   $��2��6�   $��2��6�   6�   �� 5      $��5q�6   $��70��6#   $��70��61   $��Center=�6@   $��Center=�6]   $��2��6x   $��0��6�   ��6�   �� *Image+6�   �� 5      $��2��6   $ Center=�6G   $��10(�6_   $��80��6m   
���   �$��2,21,5,0q�6�   ��6,   �� *	FirstName+6�   �� 5      $��2��6   $��2��6,   $ Center=�6_   $��10(�6v   
���   �$��2,0,5,20q�6�   ��69   �� *ObjectVAlue.Position+6�   5       5!      5"      ��5#      �� 5$   
    �� EndPoint$ 0.5,1&�6    �� 
StartPoint$ 0.5,0&�6/   .��5%      � 	 � Color$	 Black��6   
 � Offset$
 0Q�6)   � 5&      $	 White��6   $
 1Q�6)   5'      .��5*      �  5+   
   �� 5,      $
��335* �6   �� 5-      $
��131* �6    5/   
   �� 50      $
��auto �6   �� 51      $��* �6   .+�54   
   � $��0��6   $��2��6    55      �� 56      $
��auto �6    60   �� 57      6"   .+�5:      �� $��0��6   .+�5;      �� -   5         ��Name$ 
FuckFilter��5;      $��Function Filter��6,   $��5q�6F   �� 5<      $��5q�6   
�������6?   �� 5=      $��Show All��6   
�������$��5q�6B   6P   5>      �� 5?      -   5         ��Name$ lbInfo��5?      $��1��6&   $��5q�5@      
���   �$��Stretch=�5A      $��Stretch=�5B      #��[  5E      ���	#FF060606��5C      �� *	Clients+ �� SelectedItem 5D      �� *SelectClient+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�5F      5G      &   System.Windows.Controls.DataGrid  5I   
   -   5          Name$ ListBoxPersons��5I   0   $��1��6   $��1��6    $	��100��6H   $��5q�6X   
���   �   AutoGenerateColumns .     HorizontalGridLinesBrush
 �   ���6c   �� *SelectClient.ProjectList+   RowBackground 5J      �� 5K      $ 0.5,1&�6&    � MappingMode$ RelativeToBoundingBox=�67   $ 0.5,0&�6[   .��5L      � $	 Black��6#   � 5M      $	 White��6#   $
 0.502Q�61   5N         AlternatingRowBackground 5P      �� 5Q      $ 0.5,1&�6&   $ 0.5,0&�67   .��5R      � $	 Black��6#   $
 0Q�61   � 5S      $	 White��6#   $
 0.544Q�61   5T         Columns 5W      0  *System.Windows.Controls.DataGridTextColumn  5X      ,  &System.Windows.Controls.DataGridColumn   Header$  ��6%     5Y      $ Project��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 66   �� *Name+  5Z      $ Customer��6%    67   �� *
Customer+  5[      $ BeginProject��6%    6;   �� *	StartTime+  5\      $ 
EndProject��6%    69   �� *
StopTime+  5]      $ PercentOfCompletion��6%    6B   �� *PercentPerformance+5_      � 5a   
   $��1��6   $��0��6    5b      �� 5c      $
��194* �6#   �� 5d      $
��297* �6#   �� 5e      $
��224* �6#   .+�5g      �� $ 5��6   
���   �$��3q�6:   $��1��5h      �� 5j      $ 5��6   
���   �$��3q�6:   $��1��5k      $��2��6&   >  8System.Windows.Controls.DataVisualization.Charting.Chart  5m      -   5          Name$ ColumnSeries��5m   &      Title$ Column Series��6<   $��5,5,5,5q�6R   $��1��5n   '   $��2��67   ���	#FFACACAC   Series. 5o      E  ?System.Windows.Controls.DataVisualization.Charting.ColumnSeries  H  BSystem.Windows.Controls.DataVisualization.Charting.DataPointSeries   DependentValuePath$ Value��5p         IndependentValuePath$	 Key��5q   
      IsSelectionEnabled .    ItemsSource 5r      �� **(SelectClient.ObjectVAlue.DictionaryValue+$ PropertyChanged=�$ TwoWay=�5u      5v      � 5y      $��0��6    5z      �� 5{      $
��160* �6$   �� 5|      $	��29* �6$   �� 5}      $	��31* �6$   �� 5~      $
��115* �6$   .+�5�      �� $��1,1,1,0q�6   $	��150��6)   $��90��69   $	��Top=�6G   $��Stretch=�5�      ��66   �� *SelectClient.Image+�� 5�      $��1��6   .+�5�      ��   �� Orientation$  
Horizontal=�6!   .+�5�      "	   RatingContol.Controls.Rating	  -   5        ! 	 Name$! rtFive��5�      $��15(�6)   " 	  Maximum$" 10��67   $��	30,6,10,0q�6D   # 	  Value# 5�      �� $ �� Path$%$ SelectClient.ObjectVAlue.Rating�$ PropertyChanged=�$ TwoWay=�5�      �� 5�      -   5        % ��Name$% 	tbAverage��5�   $   $��1q�67   ��6B   �� & �� ElementName$& rtFive��$$ Value�5�      5�      �� 5�      -   5        $ lbName��5�      $��	10,2,10,2q�6S   
���   �$��1q�6z   $��2��6�   $��Center=�6�   ��6(   �� *SelectClient.FirstName+6�   9� 5�      -   5        ' 9�Name$' expUserInfo��5�      ( 9� 
IsExpanded( . $��7q�6B   $��3��6M   
���   �$��1q�6n   .��5�      �� .+�5�      �� $ 5��6!   
���   �$��1q�6F   6]   �� 5�      $��	20,2,10,2q�6$   ��69   �� *SelectClient.Id+) �� StringFormat$) Id:{0}��6t   �� 5�      $��	20,2,10,2q�6$   ��69   �� *#!SelectClient.ObjectVAlue.BirthDay+$) BirthDay: {0}��6�   �� 5�      $��	20,2,10,2q�6$   ��69   �� *!SelectClient.ObjectVAlue.Adress+$) 
Adress:{0}��6�   �� 5�      $ 5��6!   
���   �$��1q�6F   6]   5�      5�      5�      5�      5�      5�      