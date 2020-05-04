if(x >= oJeffinho.x and !lancou_item){
	lancou_item = true;
	instance_create_depth(x,y,depth,oFakeDrop);
}