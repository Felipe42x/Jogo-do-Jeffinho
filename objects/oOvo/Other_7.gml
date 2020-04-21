ultimo_sprite = sprite_get_number(sprite_index)-1;
image_index = ultimo_sprite;
instance_destroy();
var d = instance_create_depth(x,y,depth,oDino);
d.image_xscale = 3;
d.image_yscale = 3;