   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.user   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$
  user��5
   	   $	��450��6   $	��700��6$    � 
ResizeMode$ NoResize=�60    � WindowStartupLocation$ CenterScreen=�6F    � WindowStyle$
 None=�6k    � 	Resources 5         MenuOpen �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	MenuClose��%�  &	        &	 �     �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $ 60Q�63     5      $ 0:0:0.5��6'   $	 200Q�69   5      5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $	 200Q�63     5      $ 0:0:0.5��6'   $ 60Q�69   5      5      5      	 � Triggers	 5      :� 5   
   
 :� RoutedEvent$
 ButtonBase.Click��6    :� 
SourceName$ ButtonOpenMenu��66   .[�5      �� #��[  6   5      :� 5    
   $
 ButtonBase.Click��6   $ ButtonCloseMenu��66   .[�5!      �� #��[ 6   5"      .��5%      � 
�������.+�5'   
   � -   5         �Name$ 	GridTitle��5'      $��60��6"   $	��Top=�6.   
����p��.+�5(      �� $��Share management center��6   
�������$��Center=�6J   $��Center=�6g   $��18(�6�   �� 5)      $��Center=�6    �� Orientation$ 
Horizontal=�64   $��Right=�6M   .+�5*      �� $��Admin��6   
�������$��Center=�6=   $��12(�6X   '  !MaterialDesignThemes.Wpf.PopupBox  5+      
�������$��10q�6=      PlacementMode$ BottomAndAlignRightEdges=�6I      	StaysOpen .     PopupContent. 5,      �� $	��150��6!   .+�5-      �� $��Account��6!   �� 5.      $��Settings��6!   �� 5/      $
��Help��6!   �� 50      �� 51      -   5         ��Name$ ButtonPopUpLogout��51   !   $��Logout��6<   6M   52      53      54      55      � 57   
   -   5        $ GridMenu��57      $��70��6!   $
��Left=�6,   
����p��.+�58      �� .+�59      � $��60��6   
�������.+�5:      �� -   5        $ ButtonCloseMenu��5:      $��60��66   $��60��6A   $	��Top=�6z   $��Right=�6�   $y�	Collapsed=�6�   ��6M   Z� ��6c   Z� .��5;      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	ArrowLeft=�62   ���	#FF1B3861$��25��6Z   $��25��6e   5<      �� 5=      -   5        $ ButtonOpenMenu��5=      $��60��65   $��60��6@   $	��Top=�6y   $��Right=�6�   ��6L   Z� ��6b   Z� .��5>        $
 Menu=�62   ���	#FF1B3861$��25��6V   $��25��6a   5?      5@      �� 5A      $��Disabled=�6   
�������.@�5B      �� $��60��6#   .��5C      �� $ 
Horizontal=�6%   .+�5D        $ ViewDashboard=�66   $��25��6K   $��25��6V   $��10q�6b   $��Center=�6n   �� 5E      $��	Home     ��6(   $��Center=�69   $��20 10q�6T   �� 5F      -   5        $ HomePage��5F   %   $��v��6J   $��40��6V   
����p��6b   5G      5H      �� 5J      $��60��6#   .��5K      �� $ 
Horizontal=�6%   .+�5L        $ 
AccountAdd=�66   $��25��6H   $��25��6S   $��10q�6_   $��Center=�6k   �� 5M      $��Add User��6(   $��Center=�68   $��20 10q�6S   �� 5N      -   5        $ PageUser��5N   %   $��v��6H   $��40��6T   
����p��6_   5O      5P      �� 5Q      $��60��6#   .��5R      �� $ 
Horizontal=�6%   .+�5S        $ PhotoLibrary=�66   $��25��6J   $��25��6U   $��10q�6a   $��Center=�6m   �� 5T      $��
Image     ��6(   $��Center=�6:   $��20 10q�6U   �� 5U      -   5        $ 	PageImage��5U   %   $��v��6P   $��40��6\   
����p��6g   5W      5X      �� 5Z      $��60��6#   .��5[      �� $ 
Horizontal=�6%   .+�5\        $	 Web=�66   $��25��6A   $��25��6L   $��10q�6X   $��Center=�6d   �� 5]      $��Web        ��6(   $��Center=�6;   $��20 10q�6V   �� 5^      -	   5        $ PageWeb��5^   %   $��v��6L   $��40��6X   
����p��6c   5`      5a      �� 5c      $��60��6#   .��5d      �� $ 
Horizontal=�6%   .+�5e        $ Settings=�66   $��25��6F   $��25��6Q   $��10q�6]   $��Center=�6i   �� 5f      $��Settings��6(   $��Center=�68   $��20 10q�6S   5g      5h      5i      5j      5k      �� 5p   
   -
   5         ��Name$ lblUserName��5p      $��2. Enter user's name: ��6%   $
��Left=�6F   $��232,191,0,0q�6a   $	��Top=�6v   $
��Bold"�6�   �� 5q   
   -   5         ��Name$ txtUserName��5q      $
��Left=�6'   $��23��6B   $��232,234,0,0q�6N    �� TextWrapping$
 Wrap=�6c   $	��Top=�6w   $	��300��6�   �� 5t   
   -   5        $ lblLink��5t      $��3. Enter user's email: ��6!   $
��Left=�6C   $��230,293,0,0q�6^   $	��Top=�6s   $
��Bold"�6�   �� 5v   
   -   5        $ txtLink��5v      $
��Left=�6#   $��23��6>   $��230,328,0,0q�6J   $
 Wrap=�6_   $	��Top=�6s   $	��300��6�   �� 5x   
   -   5        $ btnAdd2_Copy��5x      $	��Add��6'   $
��Left=�65   $��553,368,0,0q�6P   $	��Top=�6e   $��75��6}   6�   �� 5y   
   -   5        $ lblID��5y      $��1.Enter user's ID: ��6   $
��Left=�6=   $��
230,81,0,0q�6X   $	��Top=�6l   $
��Bold"�6�   �� 5z   
   -   5        $ txtID��5z      $
��Left=�6!   $��23��6<   $��232,128,0,0q�6H   $
 Wrap=�6]   $	��Top=�6q   $	��300��6�   5~      5�      