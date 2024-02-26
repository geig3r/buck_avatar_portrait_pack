/// @description Insert description here
// You can write your code in this editor


the_avatar = [
	["torso", "Torso & Skin Tone", spr_avatar_torsos_male],
	["clothes", "Clothes", spr_avatar_clothes_male],
	["heads", "Head & Skin Tone", spr_avatar_heads],
	["eye_scleras", "Eyes - Sclera", spr_avatar_sclera],
	["eye_irises", "Eyes - Iris", spr_avatar_irises],
	["eye_pupils", "Eyes - Pupils", spr_avatar_pupils],
	["eye_lids", "Eyes - Eye Lids", spr_avatar_eyelids],
	["eye_brows", "Eyes - Eyebrows", spr_avatar_eyebrows],
	["eye_bags", "Eyes - Eye Bags", spr_avatar_eyebags],
	["nose", "Nose", spr_avatar_noses],
	["lips", "Lips", spr_avatar_lips],
	["beard", "Beard", spr_avatar_beards],
	["face_markings", "Facial Markings", spr_avatar_face_markings],
	["emotes", "Emotes", spr_avatar_emotes],
	["accessories_glasses", "Accessories - Glasses", spr_avatar_glasses],
	["accessories_headwear", "Accessories - Headwear", spr_avatar_headwear],
	["accessories_jewelry", "Accessories - Jewelry", spr_avatar_jewelry],
	["accessories_masks", "Accessories - Masks", spr_avatar_masks],
	["hair", "Hair", spr_avatar_hair],
	["hats", "Hats", spr_avatar_hats],
];


var _spawn_instances = function(_element, _index)
{


	var _avatar_layer = instance_create_layer(room_width - 400,40+(50*_index), "Instances", obj_avatar_selector, 
	{
		sprite_index : _element[2],
		selector_name : _element[0],
		selector_label : _element[1]

	});
	array_push(the_avatar[_index], _avatar_layer);

}

array_foreach(the_avatar, _spawn_instances);














