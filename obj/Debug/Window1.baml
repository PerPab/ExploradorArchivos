   M S B A M L   `   `   `  ����H  DAbrirArchivos, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:AbrirArchivosAbrirArchivos  5   	       AbrirArchivos.Window1   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:AbrirArchivos     5   	     � Title$  Crear una nueva nota��5   	   $	��550��6&   $	��600��63    � WindowStartupLocation$ CenterScreen=�6?    � WindowStyle$
 None=�5	   	    � 
ResizeMode$ NoResize=�5
   	   
������  � AllowsTransparency . .��5      ��  �� CornerRadius$ 30��6   $��5q�5      ��5   
   �� 5       �� 
StartPoint$	 0,1&�6"    �� EndPoint$	 1,1&�63   .��5      �  � Color$ #1D3E53��6   	 � Offset$	 0Q�6/   � 5      $ #254B62��6   $
	 0.75Q�6/   5      ._�5   
   � .+�5      �� -   5        $��Seleccionar ��5      $
��Left=�6,   $��
105,61,0,0q�6G   $	��Top=�6[   ���	#FF476D7C$	��104��6�   $��26��6�   ���	#FFF9F7F7$��14(�6�   $��Segoe UI Semibold)�6�   ���	#FFF9F8F86�   �� 5      $��Destino��6   $
��Left=�6&   $��26��6A   $��	38,60,0,0q�6M   $	��Top=�6`   $��62��6x   $��Segoe UI Semibold)�6�   ���	#FFFAFAFA$��14(�6�   
 J� RenderTransformOrigin$
 	0.574,0.8&�6�   �� 5      -   5        $��directorioDestino��5   �   $
��Left=�6   $��26��61   $��
214,61,0,0q�6=    �� TextWrapping$
 Wrap=�6Q   $	��Top=�6e   $	��340��6}   ���	#FFFAFAFA���	#FF77ABB7���	#FFFDFDFD$��14(�6�   $��Segoe UI Semibold)�6�   �� 5      $��Seleccionar extensión��6   $
��Left=�64   $��26��6O   $��
36,102,0,0q�6[   $	��Top=�6o   $	��147��6�   ���	#FFFCFBFB$��14(�6�   $��Segoe UI Semibold)�6�   	� 5      -   5        $��radioTxt��5   q   $
��.txt��6   $
��Left=�6)   $��195,109,0,0q�6D   $	��Top=�6Y    	� 	GroupName$ 	extension��6�    d� 	IsChecked$
 TrueY�6�   $��50��6�   ���	#FFFCFAFA$��14(�6�   $��Segoe UI Semibold)�6�   	� 5      -   5        $��radioPdf��5   q   $
��.pdf��6   $
��Left=�6)   $��258,109,0,0q�6D   $	��Top=�6Y   $ 	extension��6�   $ FalseY�6�   ���	#FFFAFAFA$��14(�6�   $��Segoe UI Semibold)�6�   �� 5       -   5        $��textoIngresado��5       $��Center=�6,   $	��293��6I   $��	0,180,0,0q�6V   $
 Wrap=�6i   $	��Top=�6}   $	��519��6�    �� AcceptsReturn . ���	#FFFDFDFD���	#FF77ABB7���	#FFFCFAFA$��14(�6�   $��Segoe UI Semibold)�6
  �� 5!      -   5        $��btn_guardar��5!     $��Guardar Nota��6   $��Center=�6,   ���	#FF476D7C$��	0,482,0,0q�6`   $	��Top=�6s   $	��240��6�   $��33��6�   $��14(�6�   $��Segoe UI Semibold)�6�   ���	#FFFAFAFA���	#FFFCFCFC{�.  6)  �� 5"      $��Nombre del archivo��6   $
��Left=�61   $��
36,139,0,0q�6L   $	��Top=�6`   $	��136��6x   $��14(�6�   $��Segoe UI Semibold)�6�   
���������6�   Z� 6�   �� 5#      -   5        $��nombreArchivo��5#      $
��Left=�6+   $��26��6F   $��175,140,0,0q�6R   $
 Wrap=�6g   $	��Top=�6{   $	��379��6�   ���	#FFFCFCFC���	#FF77ABB7$��14(�6�   $��Segoe UI Semibold)�6�   ���	#FFF9F8F86  �� 5$      -   5        $��
btn_cerrar��5$   g   $��X��6   $
��Left=�6!   $��	541,9,0,0q�6<   $	��Top=�6O   $��32��6y   $��30��6�   $��25(�6�   $��Arial Black)�6�   ���	#FFE3D1D3$
 
0.612,0.54&�6  ��6�   Z� ��6�   Z� 6  5%      5&      5'      