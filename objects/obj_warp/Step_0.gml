if place_meeting(x, y, obj_player1) and !instance_exists(obj_transition) {
	var instantiated = instance_create_depth(0,0,-9999,obj_transition);
	instantiated.target_x = target_x;
	instantiated.traget_y = target_y;
	instantiated.target_rm = target_rm;
}