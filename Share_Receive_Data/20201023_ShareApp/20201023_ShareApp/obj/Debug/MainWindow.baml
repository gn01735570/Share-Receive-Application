   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Share center��5	   	   $	��450��6   $	��700��6+    � 
ResizeMode$ NoResize=�67    � WindowStartupLocation$ CenterScreen=�6M    � WindowStyle$
 None=�6r    � 	Resources 5
         MenuOpen �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	MenuClose��%�  &	        &	 �     �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $ 60Q�63     5      $ 0:0:0.5��6'   $	 200Q�69   5      5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $	 200Q�63     5      $ 0:0:0.5��6'   $ 60Q�69   5      5      5      	 � Triggers	 5      :� 5   
   
 :� RoutedEvent$
 ButtonBase.Click��6    :� 
SourceName$ ButtonOpenMenu��66   .[�5      �� #��[  6   5      :� 5   
   $
 ButtonBase.Click��6   $ ButtonCloseMenu��66   .[�5      �� #��[ 6   5      .��5"      � 
�������.+�5$   
   � -   5         �Name$ 	GridTitle��5$      $��60��6"   $	��Top=�6.   
����p��.+�5%      �� $��Share management center��6   
�������$��Center=�6J   $��Center=�6g   $��18(�6�   �� 5&      $��Center=�6    �� Orientation$ 
Horizontal=�64   $��Right=�6M   .+�5'      �� $��Admin��6   
�������$��Center=�6=   $��12(�6X   '  !MaterialDesignThemes.Wpf.PopupBox  5(      
�������$��10q�6=      PlacementMode$ BottomAndAlignRightEdges=�6I      	StaysOpen .     PopupContent. 5)      �� $	��150��6!   .+�5*      �� $��Account��6!   �� 5+      $��Settings��6!   �� 5,      $
��Help��6!   �� 5-      �� 5.      -   5         ��Name$ ButtonPopUpLogout��5.   !   $��Logout��6<   6M   5/      50      51      52      � 54   
   -   5        $ GridMenu��54      $��70��6!   $
��Left=�6,   
����p��.+�55      �� .+�56      � $��60��6   
�������.+�57      �� -   5        $ ButtonCloseMenu��57      $��60��66   $��60��6A   $	��Top=�6z   $��Right=�6�   $y�	Collapsed=�6�   ��6M   Z� ��6c   Z� .��58      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	ArrowLeft=�62   ���	#FF1B3861$��25��6Z   $��25��6e   59      �� 5:      -   5        $ ButtonOpenMenu��5:      $��60��65   $��60��6@   $	��Top=�6y   $��Right=�6�   ��6L   Z� ��6b   Z� .��5;        $
 Menu=�62   ���	#FF1B3861$��25��6V   $��25��6a   5<      5=      �� 5>      $��Disabled=�6   
�������.@�5?      �� $��60��6#   .��5@      �� $ 
Horizontal=�6%   .+�5A        $ ViewDashboard=�66   $��25��6K   $��25��6V   $��10q�6b   $��Center=�6n   �� 5B      $��	Home     ��6(   $��Center=�69   $��20 10q�6T   �� 5C      -   5        $ HomePage��5C   %   $��v��6J   $��40��6V   
����p��6a   5D      5E      �� 5G      $��60��6#   .��5H      �� $ 
Horizontal=�6%   .+�5I        $ 
AccountAdd=�66   $��25��6H   $��25��6S   $��10q�6_   $��Center=�6k   �� 5J      $��Add User��6(   $��Center=�68   $��20 10q�6S   �� 5K      -   5        $ PageUser��5K   %   $��v��6H   $��40��6T   
����p��6_   5L      5M      �� 5N      $��60��6#   .��5O      �� $ 
Horizontal=�6%   .+�5P        $ PhotoLibrary=�66   $��25��6J   $��25��6U   $��10q�6a   $��Center=�6m   �� 5Q      $��
Image     ��6(   $��Center=�6:   $��20 10q�6U   �� 5R      -   5        $ 	PageImage��5R   %   $��v��6P   $��40��6\   
����p��6g   5T      5U      �� 5W      $��60��6#   .��5X      �� $ 
Horizontal=�6%   .+�5Y        $	 Web=�66   $��25��6A   $��25��6L   $��10q�6X   $��Center=�6d   �� 5Z      $��Web        ��6(   $��Center=�6;   $��20 10q�6V   �� 5[      -	   5        $ PageWeb��5[   %   $��v��6L   $��40��6X   
����p��6c   5]      5^      �� 5`      $��60��6#   .��5a      �� $ 
Horizontal=�6%   .+�5b        $ Settings=�66   $��25��6F   $��25��6Q   $��10q�6]   $��Center=�6i   �� 5c      $��Settings��6(   $��Center=�68   $��20 10q�6S   5d      5e      5f      5g      5h      � 5j   
   .+�5k      �� -
   5        $ browse��5k      $��Heavy"�6%   $��20(�68   
����p��$	��200��6p   $��50��6|   $��Browse website��6�   $��270,212,230,187.6q�6�   5l      5r      5s      