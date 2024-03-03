/// @description Insert description here
// You can write your code in this editor


// Create a new instance of AvatarConfig
var avatar_config = new AvatarConfig();

// Add selectors
avatar_config.addSelector("body_type", "Body Type", 1, "Choose between masculine and feminine");
avatar_config.addSelectorOption("body_type", "masculine", "Masculine", 1, spr_masc, "Masculine body type", true);
avatar_config.addSelectorOption("body_type", "feminine", "Feminine", 2, spr_fem, "Feminine body type", false);

avatar_config.addSelector("skin_tone", "Skin Tone", 2, "Choose your skin tone");
avatar_config.addSelectorOption("skin_tone", "skin_tone_shade_01", "Skin Tone 01", 1, spr_head_01_tone_01, "Skin Tone 01", false);
avatar_config.addSelectorOption("skin_tone", "skin_tone_shade_02", "Skin Tone 02", 2, spr_head_01_tone_02, "Skin Tone 02", false);
avatar_config.addSelectorOption("skin_tone", "skin_tone_shade_03", "Skin Tone 03", 3, spr_head_01_tone_03, "Skin Tone 03", false);
avatar_config.addSelectorOption("skin_tone", "skin_tone_shade_04", "Skin Tone 04", 4, spr_head_01_tone_04, "Skin Tone 04", false);
avatar_config.addSelectorOption("skin_tone", "skin_tone_shade_05", "Skin Tone 05", 5, spr_head_01_tone_05, "Skin Tone 05", false);

// Add layers
avatar_config.addLayer("TORSO", "Torso", 1, 1, true, "Torso layer", null);
avatar_config.addTab("TORSO", "none", "None", 1, true, "No torso selected", null);
avatar_config.addTabOption("TORSO.none", "spr_torso_fem", "Feminine Torso", 2, spr_torso_fem, "Feminine torso option", false, "skin_tone");
avatar_config.addTabOption("TORSO.none", "spr_torso_masc", "Masculine Torso", 3, spr_torso_masc, "Masculine torso option", false, "skin_tone");

// Add HEAD
avatar_config.addLayer("HEAD", "Head", 1, 2, true, "Head layer", null);
avatar_config.addTab("HEAD", "none", "None", 1, true, "No head selected", null);
avatar_config.addTabOption("HEAD.none", "spr_head_shape_01", "Head Shape 01", 1, spr_head_shape_01, "Head shape 01 option", false, "skin_tone_shade_01");
avatar_config.addTabOption("HEAD.none", "spr_head_shape_02", "Head Shape 02", 2, spr_head_shape_02, "Head shape 02 option", false, "skin_tone_shade_02");
avatar_config.addTabOption("HEAD.none", "spr_head_shape_03", "Head Shape 03", 3, spr_head_shape_03, "Head shape 03 option", false, "skin_tone_shade_03");
avatar_config.addTabOption("HEAD.none", "spr_head_shape_04", "Head Shape 04", 4, spr_head_shape_04, "Head shape 04 option", false, "skin_tone_shade_04");

// Add EARS
avatar_config.addLayer("EARS", "Ears", 1, 3, true, "Ears layer", null);
avatar_config.addTab("EARS", "none", "None", 1, true, "No ears selected", null);
for (var i = 1; i <= 3; i++) {
    for (var j = 1; j <= 5; j++) {
        avatar_config.addTabOption("EARS.none", "spr_ear_shape_0" + i, "Ear Shape 0" + i, j, sprite_get("spr_ear_shape_0" + i + "_tone_0" + j), "Ear shape 0" + i + " option with skin tone 0" + j, false, "skin_tone_shade_0" + j);
    }
}
avatar_config.addTabOption("EARS.none", "spr_cat_ears", "Cat Ears", 16, spr_cat_ears, "Cat ears option", false, "");
avatar_config.addTabOption("EARS.none", "spr_bear_ears", "Bear Ears", 17, spr_bear_ears, "Bear ears option", false, "");

// Add EYE_SCLERA
avatar_config.addLayer("EYE_SCLERA", "EYE_SCLERA", 1, 4, true, "EYE_SCLERA layer", null);
avatar_config.addTab("EYE_SCLERA", "none", "None", 1, true, "No sclera selected", null);
avatar_config.addTabOption("EYE_SCLERA.none", "spr_sclera", "Sclera", 1, spr_sclera, "Sclera option", false, "");

// Add EYE_IRISES
avatar_config.addLayer("EYE_IRISES", "EYE_IRISES", 1, 5, true, "EYE_IRISES layer", null);
avatar_config.addTab("EYE_IRISES", "none", "None", 1, true, "No irises selected", null);
for (var i = 1; i <= 5; i++) {
    avatar_config.addTabOption("EYE_IRISES.none", "spr_iris_0" + i, "Iris 0" + i, i, sprite_get("spr_iris_0" + i), "Iris 0" + i + " option", false, "");
}

// Add EYE_LIDS
avatar_config.addLayer("EYE_LIDS", "EYE_LIDS", 1, 6, false, "EYE_LIDS layer", null);
avatar_config.addTab("EYE_LIDS", "none", "None", 1, true, "No eye lids selected", null);
for (var i = 1; i <= 3; i++) {
    for (var j = 1; j <= 5; j++) {
        avatar_config.addTabOption("EYE_LIDS.none", "spr_eye_lids_0" + i, "Eye Lids 0" + i, j, sprite_get("spr_eye_lids_0" + i + "_tone_0" + j), "Eye lids 0" + i + " option with skin tone 0" + j, false, "skin_tone_shade_0" + j);
    }
}

// Add EYE_BAGS
avatar_config.addLayer("EYE_BAGS", "EYE_BAGS", 1, 7, false, "EYE_BAGS layer", null);
avatar_config.addTab("EYE_BAGS", "none", "None", 1, true, "No eye bags selected", null);
for (var i = 1; i <= 3; i++) {
    for (var j = 1; j <= 5; j++) {
        avatar_config.addTabOption("EYE_BAGS.none", "spr_eye_BAGS_0" + i, "Eye Bags 0" + i, j, sprite_get("spr_eye_BAGS_0" + i + "_tone_0" + j), "Eye bags 0" + i + " option with skin tone 0" + j, false, "skin_tone_shade_0" + j);
    }
}

// Add EYE_BROWS
avatar_config.addLayer("EYE_BROWS", "EYE_BROWS", 1, 8, true, "EYE_BROWS layer", null);
avatar_config.addTab("EYE_BROWS", "none", "None", 1, true, "No eye brows selected", null);
for (var i = 1; i <= 5; i++) {
    avatar_config.addTabOption("EYE_BROWS.none", "spr_eyebrow_0" + i, "Eye Brow 0" + i, i, sprite_get("spr_eyebrow_0" + i), "Eye brow 0" + i + " option", false, "");
}

// Add NOSE
avatar_config.addLayer("NOSE", "NOSE", 1, 9, true, "NOSE layer", null);
avatar_config.addTab("NOSE", "none", "None", 1, true, "No nose selected", null);
for (var i = 1; i <= 3; i++) {
    for (var j = 1; j <= 5; j++) {
        avatar_config.addTabOption("NOSE.none", "spr_nose_0" + i, "Nose 0" + i, j, sprite_get("spr_nose_0" + i + "_tone_0" + j), "Nose 0" + i + " option with skin tone 0" + j, false, "skin_tone_shade_0" + j);
    }
}

// Add LIPS
avatar_config.addLayer("LIPS", "LIPS", 1, 10, true, "LIPS layer", null);
avatar_config.addTab("LIPS", "none", "None", 1, true, "No lips selected", null);
for (var i = 1; i <= 5; i++) {
    avatar_config.addTabOption("LIPS.none", "spr_lips_0" + i, "Lips 0" + i, i, sprite_get("spr_lips_0" + i), "Lips 0" + i + " option", false, "");
}

// Add JEWELRY
avatar_config.addLayer("JEWELRY", "JEWELRY", 1, 11, false, "JEWELRY layer", null);
avatar_config.addTab("JEWELRY", "none", "None", 1, true, "No jewelry selected", null);
for (var i = 1; i <= 5; i++) {
    avatar_config.addTabOption("JEWELRY.none", "spr_jewelry_0" + i, "Jewelry 0" + i, i, sprite_get("spr_jewelry_0" + i), "Jewelry 0" + i + " option", false, "");
}

// Add BEARD
avatar_config.addLayer("BEARD", "BEARD", 1, 12, false, "BEARD layer", null);
avatar_config.addTab("BEARD", "none", "None", 1, true, "No beard selected", null);
for (var i = 1; i <= 3; i++) {
    avatar_config.addTabOption("BEARD.none", "spr_beard_0" + i, "Beard 0" + i, i, sprite_get("spr_beard_0" + i), "Beard 0" + i + " option", false, "");
}

// Add FACE_MARKINGS
avatar_config.addLayer("FACE_MARKINGS", "FACE_MARKINGS", 1, 13, false, "FACE_MARKINGS layer", null);
avatar_config.addTab("FACE_MARKINGS", "none", "None", 1, true, "No face markings selected", null);
for (var i = 1; i <= 3; i++) {
    avatar_config.addTabOption("FACE_MARKINGS.none", "spr_face_markings_0" + i, "Face Markings 0" + i, i, sprite_get("spr_face_markings_0" + i), "Face markings 0" + i + " option", false, "");
}

// Add ACC_GLASSES
avatar_config.addLayer("ACC_GLASSES", "ACC_GLASSES", 1, 14, false, "ACC_GLASSES layer", null);
avatar_config.addTab("ACC_GLASSES", "none", "None", 1, true, "No glasses selected", null);
for (var i = 1; i <= 5; i++) {
    avatar_config.addTabOption("ACC_GLASSES.none", "spr_glasses_0" + i, "Glasses 0" + i, i, sprite_get("spr_glasses_0" + i), "Glasses 0" + i + " option", false, "");
}

// Add ACC_HEADWEAR
avatar_config.addLayer("ACC_HEADWEAR", "ACC_HEADWEAR", 1, 15, false, "ACC_HEADWEAR layer", null);
avatar_config.addTab("ACC_HEADWEAR", "none", "None", 1, true, "No headwear selected", null);
for (var i = 1; i <= 5; i++) {
    avatar_config.addTabOption("ACC_HEADWEAR.none", "spr_headwear_0" + i, "Headwear 0" + i, i, sprite_get("spr_headwear_0" + i), "Headwear 0" + i + " option", false, "");
}

// Add ACC_MASKS
avatar_config.addLayer("ACC_MASKS", "ACC_MASKS", 1, 16, false, "ACC_MASKS layer", null);
avatar_config.addTab("ACC_MASKS", "none", "None", 1, true, "No masks selected", null);
for (var i = 1; i <= 3; i++) {
    avatar_config.addTabOption("ACC_MASKS.none", "spr_masks_0" + i, "Masks 0" + i, i, sprite_get("spr_masks_0" + i), "Masks 0" + i + " option", false, "");
}

// Add HAIR
avatar_config.addLayer("HAIR", "HAIR", 1, 17, true, "HAIR layer", null);
avatar_config.addTab("HAIR", "none", "None", 1, true, "No hair selected", null);
for (var i = 1; i <= 9; i++) {
    avatar_config.addTabOption("HAIR.none", "spr_hair_0" + i, "Hair 0" + i, i, sprite_get("spr_hair_0" + i), "Hair 0" + i + " option", false, "");
}

// Add HATS
avatar_config.addLayer("HATS", "HATS", 1, 18, false, "HATS layer", null);
avatar_config.addTab("HATS", "none", "None", 1, true, "No hats selected", null);
for (var i = 1; i <= 3; i++) {
    avatar_config.addTabOption("HATS.none", "spr_hats_0" + i, "Hats 0" + i, i, sprite_get("spr_hats_0" + i), "Hats 0" + i + " option", false, "");
}

// Add EMOTE
avatar_config.addLayer("EMOTE", "EMOTE", 1, 19, true, "EMOTE layer", null);
avatar_config.addTab("EMOTE", "none", "None", 1, true, "No emote selected", null);
for (var i = 1; i <= 2; i++) {
    avatar_config.addTabOption("EMOTE.none", "spr_emote_0" + i, "Emote 0" + i, i, sprite_get("spr_emote_0" + i), "Emote 0" + i + " option", false, "");
}

// End of AvatarConfig initialization

// You can now use the avatar_config object to access the configured selectors, layers, tabs, and tab options.
show_debug_message(avatar_config.toString());