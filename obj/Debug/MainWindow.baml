   M S B A M L   `   `   `  ����H  DAbrirArchivos, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:AbrirArchivosAbrirArchivos  5   	       AbrirArchivos.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:AbrirArchivos     5   	   -   5          � Title$  Gestor de archivos��5   	   $	��550��6$   $	��600��61    � WindowStartupLocation$ CenterScreen=�6T    � WindowStyle$
 None=�5	   	    � 
ResizeMode$ NoResize=�5
   	   
������  � AllowsTransparency . .��5      �� -   5         �� CornerRadius$ 30��5      $��5q�5      ��5   
   �� 5       �� 
StartPoint$	 0,1&�6"    �� EndPoint$	 1,1&�63   .��5      �  � Color$ #1D3E53��6   	 � Offset$	 0Q�6/   � 5      $ #254B62��6   $
	 0.75Q�6/   5      ._�5   
   � .+�5      �� -   5        $��Buscar Directorio��5      $
��Left=�61   $��36��6L   $��	41,67,0,0q�6X   $	��Top=�6k   $	��313��6�   $��18(�6�   ���	#FF476D7C$��Segoe UI Semibold)�6�   
�������
�������6�   �� 5      -   5        $��	listFiles��5   ,   $��41,208,46,45q�6   
 J� RenderTransformOrigin$
 0.5,0.5&�6=   ���	#FF77ABB7
�������$��14(�6�   $��Segoe UI Semibold)�6�   
�������z�5      V� 5      .~�5      �� �� 5        �� AngleY$ 0.232Q�6(   �� 5!      T� 5"       T� Y$ 0.505Q�6-   5#      5%      �� 5&      -   5        $��viewPath��5&   |    �� TextAlignment$ Center=�6   $
��Left=�6-   $��36��6H   $��
41,113,0,0q�6T    �� TextWrapping$
 Wrap=�6h   $	��Top=�6�   $	��500��6�   $��16(�6�   ���	#FFFCFAFA$��Segoe UI Semibold)�6�   
�������.��6	  ��5'      �� 5(       �� Color$ 	#FF77ABB7��6&   .��5)   &   5*      �� 5+      -   5        $��Crear Nueva Nota��5+      $
��Left=�60   $��
41,161,0,0q�6K   $	��Top=�6_   $	��198��6w   $��36��6�   ���	#FF2B6A83
�������$��14(�6�   $��Segoe UI Semibold)�6�   
�������6�   �� 5,      -   5        $��	Leer Nota��5,      $
��Left=�6)   $��244,161,0,0q�6D   $	��Top=�6Y   $	��146��6q   $��36��6}   ���	#FF476D7C$��14(�6�   $��Segoe UI Semibold)�6�   ���	#FFFDFDFD
�������6�   �� 5-      -   5        $��Eliminar nota��5-      $
��Left=�6-   $��395,161,0,0q�6H   $	��Top=�6]   $	��146��6u   $��36��6�   ���	#FF476D7C
�������$��14(�6�   $��Segoe UI Semibold)�6�   
�������6�   �� 5.      -	   5        $��Actualizar Lista��5.      $
��Left=�60   $��36��6K   $��
366,67,0,0q�6W   $	��Top=�6k   $	��175��6�   ���	#FF476D7C
�������$��14(�6�   $��Segoe UI Semibold)�6�   
�������6�   �� 5/      -
   5        $��
btn_cerrar��5/   g   $��X��6   $
��Left=�6!   $��	541,9,0,0q�6<   $	��Top=�6O   $��32��6y   $��30��6�   $��25(�6�   $��Arial Black)�6�   ���	#FFE3D1D3$
 
0.612,0.54&�6  ��6�   Z� ��6�   Z� 6  51      53      5O      