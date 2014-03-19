gui_mx = 0
gui_my = 0
gui_elements = ds_map_create()
gui_list = ds_list_create()
gui_layers = 2
var l;
for(l=1;l<=gui_layers;l+=1){gui_id_mouseover[l] = "NULL"}
global.gui_mouse_over = false

gui_font_default = -1
gui_halign_default = fa_left
gui_valign_default = fa_top
