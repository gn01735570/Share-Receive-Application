   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.ShareImage   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  
ShareImage��5	   	   $	��450��6   $	��700��6*    � 
ResizeMode$ NoResize=�66    � WindowStartupLocation$ CenterScreen=�6L    � WindowStyle$
 None=�6q    � 	Resources 5         MenuOpen �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	MenuClose��%�  &	        &	 �     �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $ 60Q�63     5      $ 0:0:0.5��6'   $	 200Q�69   5      5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $	 200Q�63     5      $ 0:0:0.5��6'   $ 60Q�69   5      5      5      	 � Triggers	 5      :� 5   
   
 :� RoutedEvent$
 ButtonBase.Click��6    :� 
SourceName$ ButtonOpenMenu��66   .[�5      �� #��[  6   5      :� 5   
   $
 ButtonBase.Click��6   $ ButtonCloseMenu��66   .[�5      �� #��[ 6   5       .��5#      � 
�������.+�5%   
   � -   5         �Name$ 	GridTitle��5%      $��60��6"   $	��Top=�6.   
����p��.+�5&      �� $��Share management center��6   
�������$��Center=�6J   $��Center=�6g   $��18(�6�   �� 5'      $��Center=�6    �� Orientation$ 
Horizontal=�64   $��Right=�6M   .+�5(      �� $��Admin��6   
�������$��Center=�6=   $��12(�6X   '  !MaterialDesignThemes.Wpf.PopupBox  5)      
�������$��10q�6=      PlacementMode$ BottomAndAlignRightEdges=�6I      	StaysOpen .     PopupContent. 5*      �� $	��150��6!   .+�5+      �� $��Account��6!   �� 5,      $��Settings��6!   �� 5-      $
��Help��6!   �� 5.      �� 5/      -   5         ��Name$ ButtonPopUpLogout��5/   !   $��Logout��6<   6M   50      51      52      53      � 55   
   -   5        $ GridMenu��55      $��70��6!   $
��Left=�6,   
����p��.+�56      �� .+�57      � $��60��6   
�������.+�58      �� -   5        $ ButtonCloseMenu��58      $��60��66   $��60��6A   $	��Top=�6z   $��Right=�6�   $y�	Collapsed=�6�   ��6M   Z� ��6c   Z� .��59      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	ArrowLeft=�62   ���	#FF1B3861$��25��6Z   $��25��6e   5:      �� 5;      -   5        $ ButtonOpenMenu��5;      $��60��65   $��60��6@   $	��Top=�6y   $��Right=�6�   ��6L   Z� ��6b   Z� .��5<        $
 Menu=�62   ���	#FF1B3861$��25��6V   $��25��6a   5=      5>      �� 5?      $��Disabled=�6   
�������.@�5@      �� $��60��6#   .��5A      �� $ 
Horizontal=�6%   .+�5B        $ ViewDashboard=�66   $��25��6K   $��25��6V   $��10q�6b   $��Center=�6n   �� 5C      $��	Home     ��6(   $��Center=�69   $��20 10q�6T   �� 5D      -   5        $ HomePage��5D   %   $��v��6J   $��40��6V   
����p��6a   5E      5F      �� 5H      $��60��6#   .��5I      �� $ 
Horizontal=�6%   .+�5J        $ 
AccountAdd=�66   $��25��6H   $��25��6S   $��10q�6_   $��Center=�6k   �� 5K      $��Add User��6(   $��Center=�68   $��20 10q�6S   �� 5L      -   5        $ PageUser��5L   %   $��v��6H   $��40��6T   
����p��6_   5M      5N      �� 5O      $��60��6#   .��5P      �� $ 
Horizontal=�6%   .+�5Q        $ PhotoLibrary=�66   $��25��6J   $��25��6U   $��10q�6a   $��Center=�6m   �� 5R      $��
Image     ��6(   $��Center=�6:   $��20 10q�6U   �� 5S      -   5        $ 	PageImage��5S   %   $��v��6P   $��40��6\   
����p��6g   5U      5V      �� 5X      $��60��6#   .��5Y      �� $ 
Horizontal=�6%   .+�5Z        $	 Web=�66   $��25��6A   $��25��6L   $��10q�6X   $��Center=�6d   �� 5[      $��Web        ��6(   $��Center=�6;   $��20 10q�6V   �� 5\      -	   5        $ PageWeb��5\   %   $��v��6L   $��40��6X   
����p��6c   5^      5_      �� 5a      $��60��6#   .��5b      �� $ 
Horizontal=�6%   .+�5c        $ Settings=�66   $��25��6F   $��25��6Q   $��10q�6]   $��Center=�6i   �� 5d      $��Settings��6(   $��Center=�68   $��20 10q�6S   5e      5f      5g      5h      5i      �� 5k   
   -
   5         ��Name$ Image1��5k      $
��Left=�6    $	��170��6;   $��307,149,0,0q�6H   $	��Top=�6]   $	��198��6u   �� 5m   
   -   5        $��1. Select Image��5m      $
��Left=�6,   $��215,355,0,0q�6G   $	��Top=�6\   $	��140��6t   ���	#FF2134F36�   �� 5n   
   -   5        $��2. Send Image��5n      $
��Left=�6)   $��432,355,0,0q�6D   $	��Top=�6Y   $	��125��6q   ���	#FF2134F36�   5p      5q      