   M S B A M L   `   `   `  ����]  YEmployee Management With interface, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW0clr-namespace:Employee_Management_With_interface"Employee_Management_With_interface  5   	   3    -Employee_Management_With_interface.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Blocal0clr-namespace:Employee_Management_With_interface     5   	   -   5          � Title$  
MainWindow��5   	   $��783.556��6   $��1140.586��6-   .��5	      �  J� RenderTransformOrigin$ 0.506,0.499&�6   .+�5   
   �� -   5         ��Name$ 
mylistView��5      $��0,0,63,0q�6'   $	��277��69   $	��Top=�6F   $��Right=�6^   $	��814��6z    �� View 5      �� 5      .P�5      �� $��ID��6%    �� Width$ 50��61    �� DisplayMemberBinding 6<   �� *Id+�� 5      $
��Name��6%   $	 120��63    6?   �� *Name+�� 5      $��Address��6%   $	 120��66    6B   �� *	Address+�� 5      $��Zip Code��6%   $	 120��67    6C   �� *	Zipcode+�� 5      $��	Hire Date��6%   $	 120��68    6D   �� *
HireDate+�� 5      $��Termination Date��6%   $	 120��6?    6K   �� *
TermDate+5      5!      �� 5#   
   -   5         ��Name$ Add_Employee_Button��5#      $��Add Employees��6.   $��	0,0,63,25q�6F   $ 0.629,3.516&�6n   $��Century)�6�   $��24(�6�   $
��Bold"�6�   $��Right=�6�   $	��268��6�   $��89��6�   $��Bottom=�6�   �� 5$   
   -   5         ��Name$ image��5$      $
��Left=�6   $	��100��6:   $��122,199,0,0q�6G   $	��Top=�6\   $	��100��6t   �� 5%   
   -   5        $ Lamgogini_Logo��5%      $��	23,10,0,0q�6(   $��Lamborghini_logo[1].png��6;   $
��Fill=�6\   $	��226��6k   $	��Top=�6x   $
��Left=�6�   $	��199��6�   �� 5&   
   -   5         ��Name$ textBox_Address��5&      $
��Left=�6+   $��41��6F   $��256,558,0,0q�6R   	 �� TextWrapping$
	 Wrap=�6g   $	��Top=�6{   $	��281��6�   
 �� 	IsEnabled
 . $��Century)�6�   $��16(�6�   �� 5'   
   -   5        $ textBox_HireDate��5'      $��41��6,   $��
0,449,63,0q�68   $
	 Wrap=�6L   $	��Top=�6`   $��Century)�6x   $��16(�6�   $��Right=�6�   $	��281��6�   �� 5(   
   -   5        $ textBox_ZipCode��5(      $
��Left=�6+   $��41��6F   $��256,674,0,0q�6R   $
	 Wrap=�6g   $	��Top=�6{   $	��281��6�   $��Century)�6�   $��16(�6�   �� 5)   
   -	   5        $ textBox_TerminationDate��5)      $��41��63   $��
0,558,63,0q�6?   $
	 Wrap=�6S   $	��Top=�6g   $��Century)�6   $��16(�6�   $��Right=�6�   $	��281��6�   �� 5*   
   -
   5        $ textBox_EmployeeName��5*      $
��Left=�60   $��41��6K   $��256,449,0,0q�6W   $
	 Wrap=�6l   $	��Top=�6�   $	��281��6�   
 . $��Century)�6�   $��16(�6�   �� 5+   
   -   5        $ textBox_EmployeeID��5+      $
��Left=�6.   $��41��6I   $��256,357,0,0q�6U   $
	 Wrap=�6j   $	��Top=�6~   $	��281��6�   
 . $��Century)�6�   $��16(�6�   �� 5,   
   -   5         ��Name$ ID_Label��5,      $��Employee ID��6"   $
��Left=�68   $��
59,357,0,0q�6S   $	��Top=�6g   $	��229��6   $��41��6�   $��Century)�6�   $��20(�6�   $
��Bold"�6�   �� 5-   
   -   5        $ 
Name_Label��5-      $��Employee Name��6$   $
��Left=�6<   $��
59,449,0,0q�6W   $	��Top=�6k   $	��229��6�   $��41��6�   $��Century)�6�   $��20(�6�   $
��Bold"�6�   �� 5.   
   -   5        $ Address_Label��5.      $��Employee Address��6'   $
��Left=�6B   $��
59,558,0,0q�6]   $	��Top=�6q   $	��229��6�   $��41��6�   $��Century)�6�   $��20(�6�   $
��Bold"�6�   �� 5/   
   -   5        $ HireDate_Label��5/      $��	Hire Date��6(   $��0,449,313,0q�6<   $	��Top=�6Q   $��41��6i   $��Century)�6u   $��20(�6�   $
��Bold"�6�   $��Right=�6�   $	��229��6�   �� 50   
   -   5        $ Term_Date_Label��50      $��Termination Date��6)   $��0,558,313,0q�6D   $	��Top=�6Y   $��41��6q   $��Century)�6}   $��20(�6�   $
��Bold"�6�   $��Right=�6�   $	��229��6�   �� 51   
   -   5        $ Zip_Code_Label��51      $��Zip Code��6(   $
��Left=�6;   $��
59,674,0,0q�6V   $	��Top=�6j   $	��229��6�   $��41��6�   $��Century)�6�   $��20(�6�   $
��Bold"�6�   �� 52   
   -   5        $ Fill_Form_Label��52      $#��Fill Out This Form Completely��6)   $��0,357,156,0q�6Q   $	��Top=�6f   $��41��6~   $��Century)�6�   $��20(�6�   $
��Bold"�6�   $��Right=�6�   $	��316��6�   55      56      