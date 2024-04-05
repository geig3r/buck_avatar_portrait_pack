/// @description Insert description here
// You can write your code in this editor


// Create a new instance of AvatarConfig
var avatar_config = new AvatarConfig();

// Add selectors

var _selector_name = avatar_config.addSelector("body_type", "Body Type", 1, "Choose between masculine and feminine");
avatar_config.addSelectorOption(_selector_name, "masculine", "Masculine", 1, spr_torso_masculine_skintone_03, "Masculine body type", true);
avatar_config.addSelectorOption(_selector_name, "feminine", "Feminine", 2, spr_torso_feminine_skintone_03, "Feminine body type", false);

_selector_name = avatar_config.addSelector("skin_tone", "Skin Tone", 2, "Choose your skin tone");
// Ensure all options are added under the 'skin_tone' selector
avatar_config.addSelectorOption(_selector_name, "skin_tone_shade_01", "Skin Tone 01", 1, spr_face_oval_skintone_01, "Skin Tone 01", false);
avatar_config.addSelectorOption(_selector_name, "skin_tone_shade_02", "Skin Tone 02", 2, spr_face_oval_skintone_02, "Skin Tone 02", false);
avatar_config.addSelectorOption(_selector_name, "skin_tone_shade_03", "Skin Tone 03", 3, spr_face_oval_skintone_03, "Skin Tone 03", false);
avatar_config.addSelectorOption(_selector_name, "skin_tone_shade_04", "Skin Tone 04", 4, spr_face_oval_skintone_04, "Skin Tone 04", false);
avatar_config.addSelectorOption(_selector_name, "skin_tone_shade_05", "Skin Tone 05", 5, spr_face_oval_skintone_05, "Skin Tone 05", false);


// Add HEAD
// Heart Shaped
avatar = {
    skin_tone,
    body_type,
};

var _layer_name = avatar_config.addLayer("HEAD", "Head", 1, 2, true, "Head layer", null);
avatar_config.addTab(_layer_name, "none", "None", 1, true, "No head selected", null);
avatar_config.addTabOption("HEAD.none", "heart_shaped_01", "Heart Shaped", 1, spr_face_heart_skintone_01, "Heart Shaped", false, "skin_tone_01");
avatar_config.addTabOption("HEAD.none", "heart_shaped_02", "Heart Shaped", 2, spr_face_heart_skintone_02, "Heart Shaped", false, "skin_tone_02");
avatar_config.addTabOption("HEAD.none", "heart_shaped_03", "Heart Shaped", 3, spr_face_heart_skintone_03, "Heart Shaped", false, "skin_tone_03");
avatar_config.addTabOption("HEAD.none", "heart_shaped_04", "Heart Shaped", 4, spr_face_heart_skintone_04, "Heart Shaped", false, "skin_tone_04");
avatar_config.addTabOption("HEAD.none", "heart_shaped_05", "Heart Shaped", 4, spr_face_heart_skintone_05, "Heart Shaped", false, "skin_tone_05");
// Oval Shaped
avatar_config.addTabOption("HEAD.none", "oval_shaped_01", "Oval Shaped", 1, spr_face_oval_skintone_01, "Oval Shaped", false, "skin_tone_01");
avatar_config.addTabOption("HEAD.none", "oval_shaped_02", "Oval Shaped", 2, spr_face_oval_skintone_02, "Oval Shaped", false, "skin_tone_02");
avatar_config.addTabOption("HEAD.none", "oval_shaped_03", "Oval Shaped", 3, spr_face_oval_skintone_03, "Oval Shaped", false, "skin_tone_03");
avatar_config.addTabOption("HEAD.none", "oval_shaped_04", "Oval Shaped", 4, spr_face_oval_skintone_04, "Oval Shaped", false, "skin_tone_04");
avatar_config.addTabOption("HEAD.none", "oval_shaped_05", "Oval Shaped", 4, spr_face_oval_skintone_05, "Oval Shaped", false, "skin_tone_05");

// Round Shaped
avatar_config.addTabOption("HEAD.none", "round_shaped_01", "Round Shaped", 1, spr_face_round_skintone_01, "Round Shaped", false, "skin_tone_01");
avatar_config.addTabOption("HEAD.none", "round_shaped_02", "Round Shaped", 2, spr_face_round_skintone_02, "Round Shaped", false, "skin_tone_02");
avatar_config.addTabOption("HEAD.none", "round_shaped_03", "Round Shaped", 3, spr_face_round_skintone_03, "Round Shaped", false, "skin_tone_03");
avatar_config.addTabOption("HEAD.none", "round_shaped_04", "Round Shaped", 4, spr_face_round_skintone_04, "Round Shaped", false, "skin_tone_04");
avatar_config.addTabOption("HEAD.none", "round_shaped_05", "Round Shaped", 4, spr_face_round_skintone_05, "Round Shaped", false, "skin_tone_05");

// Square Shaped
avatar_config.addTabOption("HEAD.none", "square_shaped_01", "Square Shaped", 1, spr_face_square_skintone_01, "Square Shaped", false, "skin_tone_01");
avatar_config.addTabOption("HEAD.none", "square_shaped_02", "Square Shaped", 2, spr_face_square_skintone_02, "Square Shaped", false, "skin_tone_02");
avatar_config.addTabOption("HEAD.none", "square_shaped_03", "Square Shaped", 3, spr_face_square_skintone_03, "Square Shaped", false, "skin_tone_03");
avatar_config.addTabOption("HEAD.none", "square_shaped_04", "Square Shaped", 4, spr_face_square_skintone_04, "Square Shaped", false, "skin_tone_04");
avatar_config.addTabOption("HEAD.none", "square_shaped_05", "Square Shaped", 4, spr_face_square_skintone_05, "Square Shaped", false, "skin_tone_05");


// Add EARS
avatar_config.addLayer("EARS", "Ears", 1, 3, true, "Ears layer", null);
avatar_config.addTab("EARS", "none", "None", 1, true, "No ears selected", null);
// Sticking Out Ears
avatar_config.addTabOption("EARS.none", "ear_stickingout_01", "Sticking Out", 1, spr_ear_stickingout_skintone_01, "Sticking Out", false, "skin_tone_01");
avatar_config.addTabOption("EARS.none", "ear_stickingout_02", "Sticking Out", 2, spr_ear_stickingout_skintone_01, "Sticking Out", false, "skin_tone_02");
avatar_config.addTabOption("EARS.none", "ear_stickingout_03", "Sticking Out", 3, spr_ear_stickingout_skintone_01, "Sticking Out", false, "skin_tone_03");
avatar_config.addTabOption("EARS.none", "ear_stickingout_04", "Sticking Out", 4, spr_ear_stickingout_skintone_01, "Sticking Out", false, "skin_tone_04");
avatar_config.addTabOption("EARS.none", "ear_stickingout_05", "Sticking Out", 5, spr_ear_stickingout_skintone_01, "Sticking Out", false, "skin_tone_05");

// Elf Ears
avatar_config.addTabOption("EARS.none", "ear_elfear_01", "Elf Ear", 1, spr_ear_elfear_skintone_01, "Elf Ear", false, "skin_tone_01");
avatar_config.addTabOption("EARS.none", "ear_elfear_02", "Elf Ear", 2, spr_ear_elfear_skintone_01, "Elf Ear", false, "skin_tone_02");
avatar_config.addTabOption("EARS.none", "ear_elfear_03", "Elf Ear", 3, spr_ear_elfear_skintone_01, "Elf Ear", false, "skin_tone_03");
avatar_config.addTabOption("EARS.none", "ear_elfear_04", "Elf Ear", 4, spr_ear_elfear_skintone_01, "Elf Ear", false, "skin_tone_04");
avatar_config.addTabOption("EARS.none", "ear_elfear_05", "Elf Ear", 5, spr_ear_elfear_skintone_01, "Elf Ear", false, "skin_tone_05");

// Bat Ears
avatar_config.addTabOption("EARS.none", "ear_batear_01", "Bat Ear", 1, spr_ear_batear_skintone_01, "Bat Ear", false, "skin_tone_01");
avatar_config.addTabOption("EARS.none", "ear_batear_02", "Bat Ear", 2, spr_ear_batear_skintone_01, "Bat Ear", false, "skin_tone_02");
avatar_config.addTabOption("EARS.none", "ear_batear_03", "Bat Ear", 3, spr_ear_batear_skintone_01, "Bat Ear", false, "skin_tone_03");
avatar_config.addTabOption("EARS.none", "ear_batear_04", "Bat Ear", 4, spr_ear_batear_skintone_01, "Bat Ear", false, "skin_tone_04");
avatar_config.addTabOption("EARS.none", "ear_batear_05", "Bat Ear", 5, spr_ear_batear_skintone_01, "Bat Ear", false, "skin_tone_05");

// Attached Lobe Ears
avatar_config.addTabOption("EARS.none", "ear_attachedlobe_01", "Attached Lobe", 1, spr_ear_attachedlobe_skintone_01, "Attached Lobe", false, "skin_tone_01");
avatar_config.addTabOption("EARS.none", "ear_attachedlobe_02", "Attached Lobe", 2, spr_ear_attachedlobe_skintone_01, "Attached Lobe", false, "skin_tone_02");
avatar_config.addTabOption("EARS.none", "ear_attachedlobe_03", "Attached Lobe", 3, spr_ear_attachedlobe_skintone_01, "Attached Lobe", false, "skin_tone_03");
avatar_config.addTabOption("EARS.none", "ear_attachedlobe_04", "Attached Lobe", 4, spr_ear_attachedlobe_skintone_01, "Attached Lobe", false, "skin_tone_04");
avatar_config.addTabOption("EARS.none", "ear_attachedlobe_05", "Attached Lobe", 5, spr_ear_attachedlobe_skintone_01, "Attached Lobe", false, "skin_tone_05");

avatar_config.addTabOption("EARS.none", "spr_cat_ears", "Cat Ears", 16, spr_ear_catear, "Cat ears option", false, "");
avatar_config.addTabOption("EARS.none", "spr_bear_ears", "Bear Ears", 17, spr_ear_dog, "Bear ears option", false, "");

// Add EYE_SCLERA
avatar_config.addLayer("EYE_SCLERA", "EYE_SCLERA", 1, 4, true, "EYE_SCLERA layer", null);
avatar_config.addTab("EYE_SCLERA", "none", "None", 1, true, "No sclera selected", null);
avatar_config.addTabOption("EYE_SCLERA.none", "spr_sclera", "Sclera", 1, spr_eye_sclera, "Sclera option", false, "");

// Add EYE_IRISES
avatar_config.addLayer("EYE_IRISES", "EYE_IRISES", 1, 5, true, "EYE_IRISES layer", null);
avatar_config.addTab("EYE_IRISES", "none", "None", 1, true, "No irises selected", null);
avatar_config.addTabOption("EYE_IRISES.none", "spr_iris_blue", "Blue Iris", 1, spr_iris_blue, "Blue Iris", false, "");
avatar_config.addTabOption("EYE_IRISES.none", "spr_iris_brown", "Brown Iris", 1, spr_iris_brown, "Brown Iris", false, "");
avatar_config.addTabOption("EYE_IRISES.none", "spr_iris_green", "Green Iris", 1, spr_iris_green, "Green Iris", false, "");
avatar_config.addTabOption("EYE_IRISES.none", "spr_iris_grey", "Grey Iris", 1, spr_iris_grey, "Grey Iris", false, "");

// Add EYE_LIDS
avatar_config.addLayer("EYE_LIDS", "EYE_LIDS", 1, 6, false, "EYE_LIDS layer", null);
avatar_config.addTab("EYE_LIDS", "none", "None", 1, true, "No eye lids selected", null);
avatar_config.addTabOption("EYE_LIDS.none", "eye_hoodedlid_01", "Hooded Eyelid", 1, spr_eye_hoodedlid_skinetone_01, "Hooded Eyelid", false, "skin_tone_01");
avatar_config.addTabOption("EYE_LIDS.none", "eye_hoodedlid_02", "Hooded Eyelid", 2, spr_eye_hoodedlid_skinetone_02, "Hooded Eyelid", false, "skin_tone_02");
avatar_config.addTabOption("EYE_LIDS.none", "eye_hoodedlid_03", "Hooded Eyelid", 3, spr_eye_hoodedlid_skinetone_03, "Hooded Eyelid", false, "skin_tone_03");
avatar_config.addTabOption("EYE_LIDS.none", "eye_hoodedlid_04", "Hooded Eyelid", 4, spr_eye_hoodedlid_skinetone_04, "Hooded Eyelid", false, "skin_tone_04");
avatar_config.addTabOption("EYE_LIDS.none", "eye_hoodedlid_05", "Hooded Eyelid", 5, spr_eye_hoodedlid_skinetone_05, "Hooded Eyelid", false, "skin_tone_05");
// Mono Eyelid
avatar_config.addTabOption("EYE_LIDS.none", "eye_mono_01", "Mono Eyelid", 1, spr_eye_monolid_skintone_01, "Mono Eyelid", false, "skin_tone_01");
avatar_config.addTabOption("EYE_LIDS.none", "eye_mono_02", "Mono Eyelid", 2, spr_eye_monolid_skintone_01, "Mono Eyelid", false, "skin_tone_02");
avatar_config.addTabOption("EYE_LIDS.none", "eye_mono_03", "Mono Eyelid", 3, spr_eye_monolid_skintone_01, "Mono Eyelid", false, "skin_tone_03");
avatar_config.addTabOption("EYE_LIDS.none", "eye_mono_04", "Mono Eyelid", 4, spr_eye_monolid_skintone_01, "Mono Eyelid", false, "skin_tone_04");
avatar_config.addTabOption("EYE_LIDS.none", "eye_mono_05", "Mono Eyelid", 5, spr_eye_monolid_skintone_01, "Mono Eyelid", false, "skin_tone_05");

// Roundlid
avatar_config.addTabOption("EYE_LIDS.none", "eye_roundlid_01", "Roundlid", 1, spr_eye_roundlid_skintone_01, "Roundlid", false, "skin_tone_01");
avatar_config.addTabOption("EYE_LIDS.none", "eye_roundlid_02", "Roundlid", 2, spr_eye_roundlid_skintone_01, "Roundlid", false, "skin_tone_02");
avatar_config.addTabOption("EYE_LIDS.none", "eye_roundlid_03", "Roundlid", 3, spr_eye_roundlid_skintone_01, "Roundlid", false, "skin_tone_03");
avatar_config.addTabOption("EYE_LIDS.none", "eye_roundlid_04", "Roundlid", 4, spr_eye_roundlid_skintone_01, "Roundlid", false, "skin_tone_04");
avatar_config.addTabOption("EYE_LIDS.none", "eye_roundlid_05", "Roundlid", 5, spr_eye_roundlid_skintone_01, "Roundlid", false, "skin_tone_05");



// Add EYE_BAGS
avatar_config.addLayer("EYE_BAGS", "EYE_BAGS", 1, 7, false, "EYE_BAGS layer", null);
avatar_config.addTab("EYE_BAGS", "none", "None", 1, true, "No eye bags selected", null);
// Eyebag Basic
avatar_config.addTabOption("EYE_BAGS.none", "eyebag_basic_01", "Eyebag Basic", 1, spr_eyebag_basic_skintone_01, "Eyebag Basic", false, "skin_tone_01");
avatar_config.addTabOption("EYE_BAGS.none", "eyebag_basic_02", "Eyebag Basic", 2, spr_eyebag_basic_skintone_02, "Eyebag Basic", false, "skin_tone_02");
avatar_config.addTabOption("EYE_BAGS.none", "eyebag_basic_03", "Eyebag Basic", 3, spr_eyebag_basic_skintone_03, "Eyebag Basic", false, "skin_tone_03");
avatar_config.addTabOption("EYE_BAGS.none", "eyebag_basic_04", "Eyebag Basic", 4, spr_eyebag_basic_skintone_04, "Eyebag Basic", false, "skin_tone_04");
avatar_config.addTabOption("EYE_BAGS.none", "eyebag_basic_05", "Eyebag Basic", 5, spr_eyebag_basic_skintone_05, "Eyebag Basic", false, "skin_tone_05");

// Eyebag Tired
avatar_config.addTabOption("EYE_BAGS.none", "eyebag_tired_01", "Eyebag Tired", 1, spr_eyebag_tired_skintone_01, "Eyebag Tired", false, "skin_tone_01");
avatar_config.addTabOption("EYE_BAGS.none", "eyebag_tired_02", "Eyebag Tired", 2, spr_eyebag_tired_skintone_02, "Eyebag Tired", false, "skin_tone_02");
avatar_config.addTabOption("EYE_BAGS.none", "eyebag_tired_03", "Eyebag Tired", 3, spr_eyebag_tired_skintone_03, "Eyebag Tired", false, "skin_tone_03");
avatar_config.addTabOption("EYE_BAGS.none", "eyebag_tired_04", "Eyebag Tired", 4, spr_eyebag_tired_skintone_04, "Eyebag Tired", false, "skin_tone_04");
avatar_config.addTabOption("EYE_BAGS.none", "eyebag_tired_05", "Eyebag Tired", 5, spr_eyebag_tired_skintone_05, "Eyebag Tired", false, "skin_tone_05");



// Add EYE_BROWS
avatar_config.addLayer("EYE_BROWS", "EYE_BROWS", 1, 8, true, "EYE_BROWS layer", null);
avatar_config.addTab("EYE_BROWS", "none", "None", 1, true, "No eye brows selected", null);
avatar_config.addTabOption("EYEBROWS.none", "spr_eyebrow_bushy", "Bushy Eyebrows", 1, spr_eyebrow_bushy, "Bushy eyebrows option", false, "");
avatar_config.addTabOption("EYEBROWS.none", "spr_eyebrow_curved", "Curved Eyebrows", 2, spr_eyebrow_curved, "Curved eyebrows option", false, "");
avatar_config.addTabOption("EYEBROWS.none", "spr_eyebrow_piercing", "Piercing Eyebrows", 3, spr_eyebrow_piercing, "Piercing eyebrows option", false, "");
avatar_config.addTabOption("EYEBROWS.none", "spr_eyebrow_plucked", "Plucked Eyebrows", 4, spr_eyebrow_plucked, "Plucked eyebrows option", false, "");
avatar_config.addTabOption("EYEBROWS.none", "spr_eyebrow_pointy", "Pointy Eyebrows", 5, spr_eyebrow_pointy, "Pointy eyebrows option", false, "");
avatar_config.addTabOption("EYEBROWS.none", "spr_eyebrow_thick", "Thick Eyebrows", 6, spr_eyebrow_thick, "Thick eyebrows option", false, "");

// Add NOSE
avatar_config.addLayer("NOSE", "NOSE", 1, 9, true, "NOSE layer", null);
avatar_config.addTab("NOSE", "none", "None", 1, true, "No nose selected", null);
// Aquiline Nose
avatar_config.addTabOption("NOSES.none", "nose_aquiline_01", "Aquiline Nose", 1, spr_nose_aquiline_skintone_01, "Aquiline nose option", false, "skin_tone_01");
avatar_config.addTabOption("NOSES.none", "nose_aquiline_02", "Aquiline Nose", 2, spr_nose_aquiline_skintone_02, "Aquiline nose option", false, "skin_tone_02");
avatar_config.addTabOption("NOSES.none", "nose_aquiline_03", "Aquiline Nose", 3, spr_nose_aquiline_skintone_03, "Aquiline nose option", false, "skin_tone_03");
avatar_config.addTabOption("NOSES.none", "nose_aquiline_04", "Aquiline Nose", 4, spr_nose_aquiline_skintone_04, "Aquiline nose option", false, "skin_tone_04");
avatar_config.addTabOption("NOSES.none", "nose_aquiline_05", "Aquiline Nose", 5, spr_nose_aquiline_skintone_05, "Aquiline nose option", false, "skin_tone_05");

// Broken Nose
avatar_config.addTabOption("NOSES.none", "nose_broken_01", "Broken Nose", 1, spr_nose_broken_skintone_01, "Broken nose option", false, "skin_tone_01");
avatar_config.addTabOption("NOSES.none", "nose_broken_02", "Broken Nose", 2, spr_nose_broken_skintone_02, "Broken nose option", false, "skin_tone_02");
avatar_config.addTabOption("NOSES.none", "nose_broken_03", "Broken Nose", 3, spr_nose_broken_skintone_03, "Broken nose option", false, "skin_tone_03");
avatar_config.addTabOption("NOSES.none", "nose_broken_04", "Broken Nose", 4, spr_nose_broken_skintone_04, "Broken nose option", false, "skin_tone_04");
avatar_config.addTabOption("NOSES.none", "nose_broken_05", "Broken Nose", 5, spr_nose_broken_skintone_05, "Broken nose option", false, "skin_tone_05");

// Nubian Nose
avatar_config.addTabOption("NOSES.none", "nose_nubian_01", "Nubian Nose", 1, spr_nose_nubian_skintone_01, "Nubian nose option", false, "skin_tone_01");
avatar_config.addTabOption("NOSES.none", "nose_nubian_02", "Nubian Nose", 2, spr_nose_nubian_skintone_02, "Nubian nose option", false, "skin_tone_02");
avatar_config.addTabOption("NOSES.none", "nose_nubian_03", "Nubian Nose", 3, spr_nose_nubian_skintone_03, "Nubian nose option", false, "skin_tone_03");
avatar_config.addTabOption("NOSES.none", "nose_nubian_04", "Nubian Nose", 4, spr_nose_nubian_skintone_04, "Nubian nose option", false, "skin_tone_04");
avatar_config.addTabOption("NOSES.none", "nose_nubian_05", "Nubian Nose", 5, spr_nose_nubian_skintone_05, "Nubian nose option", false, "skin_tone_05");

// Round Nose
avatar_config.addTabOption("NOSES.none", "nose_round_01", "Round Nose", 1, spr_nose_round_skintone_01, "Round nose option", false, "skin_tone_01");
avatar_config.addTabOption("NOSES.none", "nose_round_02", "Round Nose", 2, spr_nose_round_skintone_02, "Round nose option", false, "skin_tone_02");
avatar_config.addTabOption("NOSES.none", "nose_round_03", "Round Nose", 3, spr_nose_round_skintone_03, "Round nose option", false, "skin_tone_03");
avatar_config.addTabOption("NOSES.none", "nose_round_04", "Round Nose", 4, spr_nose_round_skintone_04, "Round nose option", false, "skin_tone_04");
avatar_config.addTabOption("NOSES.none", "nose_round_05", "Round Nose", 5, spr_nose_round_skintone_05, "Round nose option", false, "skin_tone_05");

// Snub Nose
avatar_config.addTabOption("NOSES.none", "nose_snub_01", "Snub Nose", 1, spr_nose_snub_skintone_01, "Snub nose option", false, "skin_tone_01");
avatar_config.addTabOption("NOSES.none", "nose_snub_02", "Snub Nose", 2, spr_nose_snub_skintone_02, "Snub nose option", false, "skin_tone_02");
avatar_config.addTabOption("NOSES.none", "nose_snub_03", "Snub Nose", 3, spr_nose_snub_skintone_03, "Snub nose option", false, "skin_tone_03");
avatar_config.addTabOption("NOSES.none", "nose_snub_04", "Snub Nose", 4, spr_nose_snub_skintone_04, "Snub nose option", false, "skin_tone_04");
avatar_config.addTabOption("NOSES.none", "nose_snub_05", "Snub Nose", 5, spr_nose_snub_skintone_05, "Snub nose option", false, "skin_tone_05");

// Straight Nose
avatar_config.addTabOption("NOSES.none", "nose_straight_01", "Straight Nose", 1, spr_nose_straight_skintone_01, "Straight nose option", false, "skin_tone_01");
avatar_config.addTabOption("NOSES.none", "nose_straight_02", "Straight Nose", 2, spr_nose_straight_skintone_02, "Straight nose option", false, "skin_tone_02");
avatar_config.addTabOption("NOSES.none", "nose_straight_03", "Straight Nose", 3, spr_nose_straight_skintone_03, "Straight nose option", false, "skin_tone_03");
avatar_config.addTabOption("NOSES.none", "nose_straight_04", "Straight Nose", 4, spr_nose_straight_skintone_04, "Straight nose option", false, "skin_tone_04");
avatar_config.addTabOption("NOSES.none", "nose_straight_05", "Straight Nose", 5, spr_nose_straight_skintone_05, "Straight nose option", false, "skin_tone_05");

// Add LIPS
avatar_config.addLayer("LIPS", "LIPS", 1, 10, true, "LIPS layer", null);
avatar_config.addTab("LIPS", "none", "None", 1, true, "No lips selected", null);
// Full Lips
avatar_config.addTabOption("LIPS.none", "lips_full_01", "Full Lips", 1, spr_lips_full_skintone_01, "Full lips option", false, "skin_tone_01");
avatar_config.addTabOption("LIPS.none", "lips_full_02", "Full Lips", 2, spr_lips_full_skintone_02, "Full lips option", false, "skin_tone_02");
avatar_config.addTabOption("LIPS.none", "lips_full_03", "Full Lips", 3, spr_lips_full_skintone_03, "Full lips option", false, "skin_tone_03");
avatar_config.addTabOption("LIPS.none", "lips_full_04", "Full Lips", 4, spr_lips_full_skintone_04, "Full lips option", false, "skin_tone_04");
avatar_config.addTabOption("LIPS.none", "lips_full_05", "Full Lips", 5, spr_lips_full_skintone_05, "Full lips option", false, "skin_tone_05");

// Full Closed Lips
avatar_config.addTabOption("LIPS.none", "lips_full_closed_01", "Full Closed Lips", 1, spr_lips_full_closed_skintone_01, "Full closed lips option", false, "skin_tone_01");
avatar_config.addTabOption("LIPS.none", "lips_full_closed_02", "Full Closed Lips", 2, spr_lips_full_closed_skintone_02, "Full closed lips option", false, "skin_tone_02");
avatar_config.addTabOption("LIPS.none", "lips_full_closed_03", "Full Closed Lips", 3, spr_lips_full_closed_skintone_03, "Full closed lips option", false, "skin_tone_03");
avatar_config.addTabOption("LIPS.none", "lips_full_closed_04", "Full Closed Lips", 4, spr_lips_full_closed_skintone_04, "Full closed lips option", false, "skin_tone_04");
avatar_config.addTabOption("LIPS.none", "lips_full_closed_05", "Full Closed Lips", 5, spr_lips_full_closed_skintone_05, "Full closed lips option", false, "skin_tone_05");

// Lower Heavy Lips
avatar_config.addTabOption("LIPS.none", "lips_lower_heavy_01", "Lower Heavy Lips", 1, spr_lips_lower_heavy_skintone_01, "Lower heavy lips option", false, "skin_tone_01");
avatar_config.addTabOption("LIPS.none", "lips_lower_heavy_02", "Lower Heavy Lips", 2, spr_lips_lower_heavy_skintone_02, "Lower heavy lips option", false, "skin_tone_02");
avatar_config.addTabOption("LIPS.none", "lips_lower_heavy_03", "Lower Heavy Lips", 3, spr_lips_lower_heavy_skintone_03, "Lower heavy lips option", false, "skin_tone_03");
avatar_config.addTabOption("LIPS.none", "lips_lower_heavy_04", "Lower Heavy Lips", 4, spr_lips_lower_heavy_skintone_04, "Lower heavy lips option", false, "skin_tone_04");
avatar_config.addTabOption("LIPS.none", "lips_lower_heavy_05", "Lower Heavy Lips", 5, spr_lips_lower_heavy_skintone_05, "Lower heavy lips option", false, "skin_tone_05");

// Lower Heavy Closed Lips
avatar_config.addTabOption("LIPS.none", "lips_lower_heavy_closed_01", "Lower Heavy Closed Lips", 1, spr_lips_lower_heavy_closed_skintone_01, "Lower heavy closed lips option", false, "skin_tone_01");
avatar_config.addTabOption("LIPS.none", "lips_lower_heavy_closed_02", "Lower Heavy Closed Lips", 2, spr_lips_lower_heavy_closed_skintone_02, "Lower heavy closed lips option", false, "skin_tone_02");
avatar_config.addTabOption("LIPS.none", "lips_lower_heavy_closed_03", "Lower Heavy Closed Lips", 3, spr_lips_lower_heavy_closed_skintone_03, "Lower heavy closed lips option", false, "skin_tone_03");
avatar_config.addTabOption("LIPS.none", "lips_lower_heavy_closed_04", "Lower Heavy Closed Lips", 4, spr_lips_lower_heavy_closed_skintone_04, "Lower heavy closed lips option", false, "skin_tone_04");
avatar_config.addTabOption("LIPS.none", "lips_lower_heavy_closed_05", "Lower Heavy Closed Lips", 5, spr_lips_lower_heavy_closed_skintone_05, "Lower heavy closed lips option", false, "skin_tone_05");

avatar_config.addTabOption("LIPS.none", "lips_round_01", "Round Lips", 1, spr_lips_round_skintone_01, "Round lips option", false, "skin_tone_01");
avatar_config.addTabOption("LIPS.none", "lips_round_02", "Round Lips", 2, spr_lips_round_skintone_02, "Round lips option", false, "skin_tone_02");
avatar_config.addTabOption("LIPS.none", "lips_round_03", "Round Lips", 3, spr_lips_round_skintone_03, "Round lips option", false, "skin_tone_03");
avatar_config.addTabOption("LIPS.none", "lips_round_04", "Round Lips", 4, spr_lips_round_skintone_04, "Round lips option", false, "skin_tone_04");
avatar_config.addTabOption("LIPS.none", "lips_round_05", "Round Lips", 5, spr_lips_round_skintone_05, "Round lips option", false, "skin_tone_05");

// Round Closed Lips
avatar_config.addTabOption("LIPS.none", "lips_round_closed_01", "Round Closed Lips", 1, spr_lips_round_closed_skintone_01, "Round closed lips option", false, "skin_tone_01");
avatar_config.addTabOption("LIPS.none", "lips_round_closed_02", "Round Closed Lips", 2, spr_lips_round_closed_skintone_02, "Round closed lips option", false, "skin_tone_02");
avatar_config.addTabOption("LIPS.none", "lips_round_closed_03", "Round Closed Lips", 3, spr_lips_round_closed_skintone_03, "Round closed lips option", false, "skin_tone_03");
avatar_config.addTabOption("LIPS.none", "lips_round_closed_04", "Round Closed Lips", 4, spr_lips_round_closed_skintone_04, "Round closed lips option", false, "skin_tone_04");
avatar_config.addTabOption("LIPS.none", "lips_round_closed_05", "Round Closed Lips", 5, spr_lips_round_closed_skintone_05, "Round closed lips option", false, "skin_tone_05");

// Thin Lips
avatar_config.addTabOption("LIPS.none", "lips_thin_01", "Thin Lips", 1, spr_lips_thin_skintone_01, "Thin lips option", false, "skin_tone_01");
avatar_config.addTabOption("LIPS.none", "lips_thin_02", "Thin Lips", 2, spr_lips_thin_skintone_02, "Thin lips option", false, "skin_tone_02");
avatar_config.addTabOption("LIPS.none", "lips_thin_03", "Thin Lips", 3, spr_lips_thin_skintone_03, "Thin lips option", false, "skin_tone_03");
avatar_config.addTabOption("LIPS.none", "lips_thin_04", "Thin Lips", 4, spr_lips_thin_skintone_04, "Thin lips option", false, "skin_tone_04");
avatar_config.addTabOption("LIPS.none", "lips_thin_05", "Thin Lips", 5, spr_lips_thin_skintone_05, "Thin lips option", false, "skin_tone_05");

// Thin Closed Lips
avatar_config.addTabOption("LIPS.none", "lips_thin_closed_01", "Thin Closed Lips", 1, spr_lips_thin_closed_skintone_01, "Thin closed lips option", false, "skin_tone_01");
avatar_config.addTabOption("LIPS.none", "lips_thin_closed_02", "Thin Closed Lips", 2, spr_lips_thin_closed_skintone_02, "Thin closed lips option", false, "skin_tone_02");
avatar_config.addTabOption("LIPS.none", "lips_thin_closed_03", "Thin Closed Lips", 3, spr_lips_thin_closed_skintone_03, "Thin closed lips option", false, "skin_tone_03");
avatar_config.addTabOption("LIPS.none", "lips_thin_closed_04", "Thin Closed Lips", 4, spr_lips_thin_closed_skintone_04, "Thin closed lips option", false, "skin_tone_04");
avatar_config.addTabOption("LIPS.none", "lips_thin_closed_05", "Thin Closed Lips", 5, spr_lips_thin_closed_skintone_05, "Thin closed lips option", false, "skin_tone_05");


// Add JEWELRY
avatar_config.addLayer("JEWELRY", "JEWELRY", 1, 11, false, "JEWELRY layer", null);
avatar_config.addTab("JEWELRY", "none", "None", 1, true, "No jewelry selected", null);
// Facial Eyepatch
avatar_config.addTabOption("JEWELRY.none", "facial_eyepatch", "Facial Eyepatch", 1, spr_facial_eyepatch, "Facial eyepatch option", false, "");

// Nose Ring
avatar_config.addTabOption("JEWELRY.none", "nose_ring", "Nose Ring", 1, spr_nose_ring, "Nose ring option", false, "");

// Septum Ring
avatar_config.addTabOption("JEWELRY.none", "septum_ring", "Septum Ring", 1, spr_septum_ring, "Septum ring option", false, "");


// Add BEARD
avatar_config.addLayer("BEARD", "BEARD", 1, 12, false, "BEARD layer", null);
avatar_config.addTab("BEARD", "none", "None", 1, true, "No beard selected", null);
// Full Beard
avatar_config.addTabOption("BEARD.none", "full_beard", "Full Beard", 1, spr_facial_fullbeard, "Full beard option", false, "");

// Goatee Beard
avatar_config.addTabOption("BEARD.none", "goatee_beard", "Goatee Beard", 1, spr_facial_goateebeard, "Goatee beard option", false, "");

// Mountainman Beard
avatar_config.addTabOption("BEARD.none", "mountainman_beard", "Mountainman Beard", 1, spr_facial_mountainman, "Mountainman beard option", false, "");

// Add FACE_MARKINGS
avatar_config.addLayer("FACE_MARKINGS", "FACE_MARKINGS", 1, 13, false, "FACE_MARKINGS layer", null);
avatar_config.addTab("FACE_MARKINGS", "none", "None", 1, true, "No face markings selected", null);
// Crossed Scar
avatar_config.addTabOption("FACE_MARKINGS.none", "crossed_scar", "Crossed Scar", 1, spr_spots_crossedscar, "Crossed scar option", false, "");

// Freckles
avatar_config.addTabOption("FACE_MARKINGS.none", "freckles", "Freckles", 1, spr_spots_freckles, "Freckles option", false, "");

// Scar
avatar_config.addTabOption("FACE_MARKINGS.none", "scar", "Scar", 1, spr_spots_scar, "Scar option", false, "");


// Add ACC_GLASSES
avatar_config.addLayer("ACC_GLASSES", "ACC_GLASSES", 1, 14, false, "ACC_GLASSES layer", null);
avatar_config.addTab("ACC_GLASSES", "none", "None", 1, true, "No glasses selected", null);
// Aviator Glasses
avatar_config.addTabOption("ACC_GLASSES.none", "aviator_glasses", "Aviator Glasses", 1, spr_glasses_aviator, "Aviator glasses option", false, "");

// Fashion Glasses
avatar_config.addTabOption("ACC_GLASSES.none", "fashion_glasses", "Fashion Glasses", 1, spr_glasses_fashion, "Fashion glasses option", false, "");

// Milk Bottle Glasses
avatar_config.addTabOption("ACC_GLASSES.none", "milk_bottle_glasses", "Milk Bottle Glasses", 1, spr_glasses_milk_bottle, "Milk bottle glasses option", false, "");

// Square Glasses
avatar_config.addTabOption("ACC_GLASSES.none", "square_glasses", "Square Glasses", 1, spr_glasses_square, "Square glasses option", false, "");

// Star Glasses
avatar_config.addTabOption("ACC_GLASSES.none", "star_glasses", "Star Glasses", 1, spr_glasses_star, "Star glasses option", false, "");


// Add ACC_HEADWEAR
avatar_config.addLayer("ACC_HEADWEAR", "ACC_HEADWEAR", 1, 15, false, "ACC_HEADWEAR layer", null);
// Hair Band
avatar_config.addTabOption("ACC_HEADWEAR.none", "hair_band", "Hair Band", 1, spr_hair_band, "Hair band option", false, "");

// Headphone
avatar_config.addTabOption("ACC_HEADWEAR.none", "headphone", "Headphone", 1, spr_headphone, "Headphone option", false, "");


// Add ACC_MASKS
avatar_config.addLayer("ACC_MASKS", "ACC_MASKS", 1, 16, false, "ACC_MASKS layer", null);
avatar_config.addTab("ACC_MASKS", "none", "None", 1, true, "No masks selected", null);
// Camouflage Mask
avatar_config.addTabOption("ACC_MASKS.none", "camouflage_mask", "Camouflage Mask", 1, spr_mask_camouflage, "Camouflage mask option", false, "");

// Surgical Mask
avatar_config.addTabOption("ACC_MASKS.none", "surgical_mask", "Surgical Mask", 1, spr_mask_surgical, "Surgical mask option", false, "");

// Spooky Mask
avatar_config.addTabOption("ACC_MASKS.none", "spooky_mask", "Spooky Mask", 1, spr_mask_spooky, "Spooky mask option", false, "");

// Add HAIR
avatar_config.addLayer("HAIR", "HAIR", 1, 17, true, "HAIR layer", null);
avatar_config.addTab("HAIR", "none", "None", 1, true, "No hair selected", null);
avatar_config.addTab("HAIR", "afro", "Afro", 1, true, "Afro Options", null);
avatar_config.addTab("HAIR", "anime", "Anime", 1, true, "Anime Options", null);
avatar_config.addTab("HAIR", "bald", "Bald", 1, true, "Bald Options", null);
avatar_config.addTab("HAIR", "big bangs", "Big Bangs", 1, true, "Big Bangs Options", null);
avatar_config.addTab("HAIR", "big quiff", "Big Quiff", 1, true, "Big Quiff Options", null);
avatar_config.addTab("HAIR", "bobcut", "Bobcut", 1, true, "Bobcut Options", null);
avatar_config.addTab("HAIR", "crewcut", "Crewcut", 1, true, "Crewcut Options", null);
avatar_config.addTab("HAIR", "elfcurls", "Elfcurls", 1, true, "Elfcurls Options", null);
avatar_config.addTab("HAIR", "mohawk", "Mohawk", 1, true, "Mohawk Options", null);
avatar_config.addTab("HAIR", "pigtails", "Pigtails", 1, true, "Pigtails Options", null);
avatar_config.addTab("HAIR", "pixie", "Pixie", 1, true, "Pixie Options", null);
avatar_config.addTab("HAIR", "shaved sides", "Shaved Sides", 1, true, "Shaved Sides Options", null);
avatar_config.addTab("HAIR", "shoulder curls", "Shoulder Curls", 1, true, "Shoulder Curls Options", null);
avatar_config.addTab("HAIR", "shoulder length", "Shoulder Length", 1, true, "Shoulder Length Options", null);
avatar_config.addTab("HAIR", "skinfade", "Skinfade", 1, true, "Skinfade Options", null);
avatar_config.addTab("HAIR", "topknot", "Topknot", 1, true, "Topknot Options", null);
avatar_config.addTabOption("MASK.afro", "hair_afrolong_brown", "Hair afrolong brown", 1, spr_hair_afrolong_brown, "Hair afrolong brown option", false, "");
avatar_config.addTabOption("MASK.afro", "hair_afrolong_dark", "Hair afrolong dark", 1, spr_hair_afrolong_dark, "Hair afrolong dark option", false, "");
avatar_config.addTabOption("MASK.anime", "hair_anime_brown", "Hair anime brown", 1, spr_hair_anime_brown, "Hair anime brown option", false, "");
avatar_config.addTabOption("MASK.anime", "hair_anime_white", "Hair anime white", 1, spr_hair_anime_white, "Hair anime white option", false, "");
avatar_config.addTabOption("MASK.anime", "hair_anime_yellow", "Hair anime yellow", 1, spr_hair_anime_yellow, "Hair anime yellow option", false, "");
avatar_config.addTabOption("MASK.bald", "hair_bald_dark-grey", "Hair bald dark-grey", 1, spr_hair_bald_dark_grey, "Hair bald dark-grey option", false, "");
avatar_config.addTabOption("MASK.bald", "hair_bald_dark", "Hair bald dark", 1, spr_hair_bald_dark, "Hair bald dark option", false, "");
avatar_config.addTabOption("MASK.big bangs", "hair_single_bangs_blond_01", "Hair single bangs blond 01", 1, spr_hair_single_bangs_blond_01, "Hair single bangs blond 01 option", false, "");
avatar_config.addTabOption("MASK.big bangs", "hair_single_bangs_brown_01", "Hair single bangs brown 01", 1, spr_hair_single_bangs_brown_01, "Hair single bangs brown 01 option", false, "");
avatar_config.addTabOption("MASK.big bangs", "hair_single_bangs_grey_01", "Hair single bangs grey 01", 1, spr_hair_single_bangs_grey_01, "Hair single bangs grey 01 option", false, "");
avatar_config.addTabOption("MASK.big quiff", "hair_bigquiff_brown", "Hair bigquiff brown", 1, spr_hair_bigquiff_brown, "Hair bigquiff brown option", false, "");
avatar_config.addTabOption("MASK.big quiff", "hair_bigquiff_dark", "Hair bigquiff dark", 1, spr_hair_bigquiff_dark, "Hair bigquiff dark option", false, "");
avatar_config.addTabOption("MASK.big quiff", "hair_bigquiff_white", "Hair bigquiff white", 1, spr_hair_bigquiff_white, "Hair bigquiff white option", false, "");
avatar_config.addTabOption("MASK.bobcut", "hair_bobcut_blond", "Hair bobcut blond", 1, spr_hair_bobcut_blond, "Hair bobcut blond option", false, "");
avatar_config.addTabOption("MASK.bobcut", "hair_bobcut_pink", "Hair bobcut pink", 1, spr_hair_bobcut_pink, "Hair bobcut pink option", false, "");
avatar_config.addTabOption("MASK.bobcut", "hair_bobcut_red", "Hair bobcut red", 1, spr_hair_bobcut_red, "Hair bobcut red option", false, "");
avatar_config.addTabOption("MASK.bobcut", "hair_bobcut_white", "Hair bobcut white", 1, spr_hair_bobcut_white, "Hair bobcut white option", false, "");
avatar_config.addTabOption("MASK.crewcut", "hair_crewcut_blond", "Hair crewcut blond", 1, spr_hair_crewcut_blond, "Hair crewcut blond option", false, "");
avatar_config.addTabOption("MASK.crewcut", "hair_crewcut_brown", "Hair crewcut brown", 1, spr_hair_crewcut_brown, "Hair crewcut brown option", false, "");
avatar_config.addTabOption("MASK.elfcurls", "hair_elfcurls_blond-copy", "Hair elfcurls blond-copy", 1, spr_hair_elfcurls_blond, "Hair elfcurls blond-copy option", false, "");
avatar_config.addTabOption("MASK.elfcurls", "hair_elfcurls_brown", "Hair elfcurls brown", 1, spr_hair_elfcurls_brown, "Hair elfcurls brown option", false, "");
avatar_config.addTabOption("MASK.elfcurls", "hair_elfcurls_white", "Hair elfcurls white", 1, spr_hair_elfcurls_white, "Hair elfcurls white option", false, "");
avatar_config.addTabOption("MASK.mohawk", "hair_mohawk_brown", "Hair mohawk brown", 1, spr_hair_mohawk_brown, "Hair mohawk brown option", false, "");
avatar_config.addTabOption("MASK.mohawk", "hair_mohawk_colorful", "Hair mohawk colorful", 1, spr_hair_mohawk_colorful, "Hair mohawk colorful option", false, "");
avatar_config.addTabOption("MASK.mohawk", "hair_mohawk_fire", "Hair mohawk fire", 1, spr_hair_mohawk_fire, "Hair mohawk fire option", false, "");
avatar_config.addTabOption("MASK.pigtails", "hair_pigtails_blond", "Hair pigtails blond", 1, spr_hair_pigtails_blond, "Hair pigtails blond option", false, "");
avatar_config.addTabOption("MASK.pigtails", "hair_pigtails_brown", "Hair pigtails brown", 1, spr_hair_pigtails_brown, "Hair pigtails brown option", false, "");
avatar_config.addTabOption("MASK.pigtails", "hair_pigtails_iconic", "Hair pigtails iconic", 1, spr_hair_pigtails_iconic, "Hair pigtails iconic option", false, "");
avatar_config.addTabOption("MASK.pigtails", "hair_pigtails_red", "Hair pigtails red", 1, spr_hair_pigtails_red, "Hair pigtails red option", false, "");
avatar_config.addTabOption("MASK.pixie", "hair_pixiecut_brown", "Hair pixiecut brown", 1, spr_hair_pixiecut_brown, "Hair pixiecut brown option", false, "");
avatar_config.addTabOption("MASK.pixie", "hair_pixiecut_mix", "Hair pixiecut mix", 1, spr_hair_pixiecut_mix, "Hair pixiecut mix option", false, "");
avatar_config.addTabOption("MASK.pixie", "hair_pixiecut_white", "Hair pixiecut white", 1, spr_hair_pixiecut_white, "Hair pixiecut white option", false, "");
avatar_config.addTabOption("MASK.shaved sides", "hair_medium_length_sides_brown", "Hair medium length sides brown", 1, spr_hair_medium_length_sides_brown, "Hair medium length sides brown option", false, "");
avatar_config.addTabOption("MASK.shaved sides", "hair_medium_length_sides_grey", "Hair medium length sides grey", 1, spr_hair_medium_length_sides_grey, "Hair medium length sides grey option", false, "");
avatar_config.addTabOption("MASK.shaved sides", "hair_medium_lenth_sides_mix", "Hair medium lenth sides mix", 1, spr_hair_medium_lenth_sides_mix, "Hair medium lenth sides mix option", false, "");
avatar_config.addTabOption("MASK.shoulder curls", "hair_shoulder_length_curly_blond_01", "Hair shoulder length curly blond 01", 1, spr_hair_shoulder_length_curly_blond_01, "Hair shoulder length curly blond 01 option", false, "");
avatar_config.addTabOption("MASK.shoulder curls", "hair_shoulder_length_curly_brown_01", "Hair shoulder length curly brown 01", 1, spr_hair_shoulder_length_curly_brown_01, "Hair shoulder length curly brown 01 option", false, "");
avatar_config.addTabOption("MASK.shoulder curls", "hair_shoulder_length_curly_grey_01", "Hair shoulder length curly grey 01", 1, spr_hair_shoulder_length_curly_grey_01, "Hair shoulder length curly grey 01 option", false, "");
avatar_config.addTabOption("MASK.shoulder length", "hair_shoulder_length_blond_01", "Hair shoulder length blond 01", 1, spr_hair_shoulder_length_blond_01, "Hair shoulder length blond 01 option", false, "");
avatar_config.addTabOption("MASK.shoulder length", "hair_shoulder_length_brown_01", "Hair shoulder length brown 01", 1, spr_hair_shoulder_length_brown_01, "Hair shoulder length brown 01 option", false, "");
avatar_config.addTabOption("MASK.shoulder length", "hair_shoulder_length_red_01", "Hair shoulder length red 01", 1, spr_hair_shoulder_length_red_01, "Hair shoulder length red 01 option", false, "");
avatar_config.addTabOption("MASK.shoulder length", "hair_shoulder_length_white_01", "Hair shoulder length white 01", 1, spr_hair_shoulder_length_white_01, "Hair shoulder length white 01 option", false, "");
avatar_config.addTabOption("MASK.skinfade", "hair_skinfade_brown", "Hair skinfade brown", 1, spr_hair_skinfade_brown, "Hair skinfade brown option", false, "");
avatar_config.addTabOption("MASK.skinfade", "hair_skinfade_orange", "Hair skinfade orange", 1, spr_hair_skinfade_orange, "Hair skinfade orange option", false, "");
avatar_config.addTabOption("MASK.skinfade", "hair_skinfade_white", "Hair skinfade white", 1, spr_hair_skinfade_white, "Hair skinfade white option", false, "");
avatar_config.addTabOption("MASK.topknot", "hair_topknot_blond", "Hair topknot blond", 1, spr_hair_topknot_blond, "Hair topknot blond option", false, "");
avatar_config.addTabOption("MASK.topknot", "hair_topknot_brown", "Hair topknot brown", 1, spr_hair_topknot_brown, "Hair topknot brown option", false, "");
avatar_config.addTabOption("MASK.topknot", "hair_topknot_dark", "Hair topknot dark", 1, spr_hair_topknot_dark, "Hair topknot dark option", false, "");

// Add HATS
avatar_config.addLayer("HATS", "HATS", 1, 18, false, "HATS layer", null);
avatar_config.addTab("HATS", "none", "None", 1, true, "No hats selected", null);
avatar_config.addTabOption("HATS.none", "hat_baseball", "Hat baseball", 1, spr_hat_baseball, "Hat baseball option", false, "");
avatar_config.addTabOption("HATS.none", "hat_beanie", "Hat beanie", 1, spr_hat_beanie, "Hat beanie option", false, "");
avatar_config.addTabOption("HATS.none", "hat_bow", "Hat bow", 1, spr_hat_bow, "Hat bow option", false, "");
avatar_config.addTabOption("HATS.none", "hat_cowboy", "Hat cowboy", 1, spr_hat_cowboy, "Hat cowboy option", false, "");
avatar_config.addTabOption("HATS.none", "hat_pirate", "Hat pirate", 1, spr_hat_pirate, "Hat pirate option", false, "");
avatar_config.addTabOption("HATS.none", "hat_roman", "Hat roman", 1, spr_hat_roman, "Hat roman option", false, "");
avatar_config.addTabOption("HATS.none", "hat_space_helmet", "Hat space helmet", 1, spr_hat_space_helmet, "Hat space helmet option", false, "");
avatar_config.addTabOption("HATS.none", "hat_top", "Hat top", 1, spr_hat_top, "Hat top option", false, "");

// Add EMOTE
avatar_config.addLayer("EMOTE", "EMOTE", 1, 19, true, "EMOTE layer", null);
avatar_config.addTab("EMOTE", "none", "None", 1, true, "No emote selected", null);
// Anime Sweatdrop
avatar_config.addTabOption("EMOTE.none", "anime_sweatdrop", "Anime Sweatdrop", 1, spr_anime_sweatdrop, "Anime sweatdrop option", false, "");

// Frustration Marker
avatar_config.addTabOption("EMOTE.none", "frustration_marker", "Frustration Marker", 1, spr_frustration_marker, "Frustration marker option", false, "");

// End of AvatarConfig initialization

// You can now use the avatar_config object to access the configured selectors, layers, tabs, and tab options.
show_debug_message(avatar_config.toString());