   M S B A M L   `   `   `  ����  MVVMLight_Sample,    &MVVMLight_Sample.View.DetailInfoWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  DetailInfoWindow��5   	    � SizeToContent$ Height=�6"   $	��300��69   .��5      �  � ColumnDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6    � RowDefinitions 5
   
   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� $��0��6   $��
First Name��6    �� 5   
   $��1��6   $��5q�6g   ��6"   ��  �� Path$ 	FirstName� �� UpdateSourceTrigger$ PropertyChanged=�6t   �� 5   
   $��0��6   $��1��6    $��	Last Name��6-   �� 5   
   $��1��6   $��1��6"   $��5q�6s   ��6/   �� $ LastName�$ PropertyChanged=�6�   5      5      