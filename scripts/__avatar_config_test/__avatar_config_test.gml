var avatar_config = {
    selectors: {
        bodyType: {
            prefix: "spr_torso_",
            label: "Choose your body type",
            options: ["masculine", "feminine"],
            suffix: "_skintone_03"
        },
        skintone: {
            prefix: "spr_face_",
            label: "Choose your skin tone",
            options: ["oval"],
            suffix: ["skintone_01", "skintone_02", "skintone_03", "skintone_04", "skintone_05", "skintone_06"]
        }
    },
    layers: {
        Torsos: {
            prefix: "spr_torso_",
            label: "Choose your torso",
            bodyTypeFilter: true,
            options: ["masculine", "feminine"],
            suffix: ["_skintone_01", "_skintone_02", "_skintone_03", "_skintone_04", "_skintone_05", "_skintone_06"]
        },
        TorsoClothes: {
            label: "Choose your torso clothes",
            bodyTypeFilter: true,
            categories: {
                buttondown: {
                    options: ["shirt_01", "shirt_02", "shirt_03"]
                },
                hoodie: {
                    options: ["hoodie_01", "hoodie_02", "hoodie_03"]
                },
                armor: {
                    options: ["armor"]
                },
                tShirt: {
                    options: ["t-shirt_01", "t-shirt_02", "t-shirt_03"]
                }
            }
        },
        Headshapes: {
            prefix: "spr_face_",
            label: "Choose your head shape",
            options: ["heart", "oval", "round", "square"],
            suffix: ["_skintone_01", "_skintone_02", "_skintone_03", "_skintone_04", "_skintone_05", "_skintone_06"]
        },
        Sclera: {
            prefix: "spr_eye_",
            label: "Choose your sclera",
            options: ["sclera"]
        },
        Irises: {
            prefix: "spr_iris_",
            label: "Choose your iris color",
            options: ["blue", "brown", "green", "grey"]
        },
        Pupils: {
            prefix: "spr_pupil_",
            label: "Choose your pupil shape",
            options: ["goat", "heart"]
        },
        Eyelids: {
            prefix: "spr_eye_",
            label: "Choose your eyelids",
            options: ["hoodedlid", "monolid", "roundlid"],
            suffix: ["_skintone_01", "_skintone_02", "_skintone_03", "_skintone_04", "_skintone_05", "_skintone_06"]
        },
        Eyebrows: {
            prefix: "spr_eyebrow_",
            label: "Choose your eyebrows",
            options: ["bushy", "curved", "piercing", "plucked", "pointy", "thick"]
        },
        Eyebag: {
            prefix: "spr_eyebag_",
            label: "Choose your eyebag",
            options: ["basic", "tired"],
            suffix: ["_skintone_01", "_skintone_02", "_skintone_03", "_skintone_04", "_skintone_05", "_skintone_06"]
        },
        Noses: {
            prefix: "spr_nose_",
            label: "Choose your nose",
            options: ["aquiline", "broken", "nubian", "round", "snub", "straight"],
            suffix: ["_skintone_01", "_skintone_02", "_skintone_03", "_skintone_04", "_skintone_05", "_skintone_06"]
        },
        Lips: {
            prefix: "spr_lips_",
            label: "Choose your lips",
            options: ["full", "full_closed", "lower_heavy", "lower_heavy_closed", "round", "round_closed", "thin", "thin_closed"],
            suffix: ["_skintone_01", "_skintone_02", "_skintone_03", "_skintone_04", "_skintone_05", "_skintone_06"]
        },
        Beards: {
            prefix: "spr_facial_",
            label: "Choose your beard",
            options: ["fullbeard", "goateebeard", "mountainman"]
        },
        FacialMarkings: {
            prefix: "spr_spots_",
            label: "Choose your facial markings",
            options: ["crossedscar", "freckles", "scar"]
        },
        Masks: {
            prefix: "spr_mask_",
            label: "Choose your mask",
            options: ["camouflage", "surgical", "spooky"]
        },
        Hair: {
            prefix: "spr_hair_",
            label: "Choose your hair",
            categories: {
                afro: {
                    options: ["afrolong_brown", "afrolong_dark"]
                },
                anime: {
                    options: ["anime_brown", "anime_white", "anime_yellow"]
                },
                bald: {
                    options: ["bald_dark", "bald_dark-grey"]
                },
                bigBangs: {
                    options: ["single_bangs_blond_01", "single_bangs_brown_01", "single_bangs_grey_01"]
                },
                bigQuiff: {
                    options: ["bigquiff_brown", "bigquiff_dark", "bigquiff_white"]
                },
                bobcut: {
                    options: ["bobcut_blond", "bobcut_pink", "bobcut_red", "bobcut_white"]
                },
                crewcut: {
                    options: ["crewcut_blond", "crewcut_brown"]
                },
                elfcurls: {
                    options: ["elfcurls_blond", "elfcurls_brown", "elfcurls_white"]
                },
                mohawk: {
                    options: ["mohawk_brown", "mohawk_colorful", "mohawk_fire"]
                },
                pigtails: {
                    options: ["pigtails_blond", "pigtails_brown", "pigtails_iconic", "pigtails_red"]
                },
                pixie: {
                    options: ["pixiecut_brown", "pixiecut_mix", "pixiecut_white"]
                },
                shavedSides: {
                    options: ["medium_length_sides_brown", "medium_length_sides_grey", "medium_lenth_sides_mix"]
                },
                shoulderCurls: {
                    options: ["shoulder_length_curly_blond_01", "shoulder_length_curly_brown_01", "shoulder_length_curly_grey_01"]
                },
                shoulderLength: {
                    options: ["shoulder_length_blond_01", "shoulder_length_brown_01", "shoulder_length_red_01", "shoulder_length_white_01"]
                },
                skinfade: {
                    options: ["skinfade_brown", "skinfade_orange", "skinfade_white"]
                },
                topknot: {
                    options: ["topknot_blond", "topknot_brown", "topknot_dark"]
                }
            }
        },
        Ears: {
            prefix: "spr_ear_",
            label: "Choose your ears",
            options: {
                oneOffs: ["catear", "dog"],
                skintones: ["attachedlobe", "batear", "elfear", "stickingout"]
            },
            suffix: ["_skintone_01", "_skintone_02", "_skintone_03", "_skintone_04", "_skintone_05", "_skintone_06"]
        },
        Jewelry: {
            prefix: "spr_",
            label: "Choose your jewelry",
            options: ["ear_ring_01", "ear_ring_02", "nose_ring", "septum_ring"]
        },
        Headwear: {
            prefix: "spr_",
            label: "Choose your headwear",
            options: ["facial_eyepatch", "hair_band", "headphone"]
        },
        Hats: {
            prefix: "spr_hat_",
            label: "Choose your hat",
            options: ["baseball", "beanie", "bow", "cowboy", "pirate", "roman", "space_helmet", "top"]
        },
        Glasses: {
            prefix: "spr_glasses_",
            label: "Choose your glasses",
            options: ["aviator", "fashion", "milk_bottle", "square", "star"]
        },
        Emotes: {
            prefix: "spr_",
            label: "Choose your emote",
            options: ["anime_sweatdrop", "frustration_marker"]
        }
    }
};