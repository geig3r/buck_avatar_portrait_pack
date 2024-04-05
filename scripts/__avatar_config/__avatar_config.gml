// Define the AvatarConfig struct
function AvatarConfig() constructor {

    selectors = {};
    layers = {};
    tabs = {};

    /**
     * Adds a new selector to the AvatarConfig.
     * @param {string} _id - The name of the selector.
     * @param {string} _label - The label of the selector.
     * @param {real} _order - The order of the selector.
     * @param {string} _description - The description of the selector.
     */
    addSelector = function(_id, _label, _description) {
        selectors[$ _id] = {
            label: _label,

            description: _description,
            options: {}
        };
		
		return _id;
    };

    /**
     * Retrieves a selector from the AvatarConfig.
     * @param {string} _id - The name of the selector to retrieve.
     * @returns {any} The selector if found, noone otherwise.
     */
    static getSelector = function(_id) {
        if (struct_exists(selectors, _id)) {
            return selectors[$ _id];
        }
        return noone;
    };

    /**
     * Adds a new selector option to an existing selector in the AvatarConfig.
     * @param {string} _selector_id - The name of the selector to add the option to.
     * @param {string} _id - The name of the option.
     * @param {string} _label - The label of the option.
     * @param {real} _order - The order of the option.
     * @param {sprite_index} _sprite - The sprite index of the option.
     * @param {string} _description - The description of the option.
     * @param {bool} _default_option - The default value of the option.
     */
    static addSelectorOption = function(_selector_id, option_id, _label, _order, _sprite, _description, _default_option) {
        if (selectors[$ _selector_id]) {
            selectors[$ _selector_id].options[$ _id] = {
                label: _label,
                order: _order,
                sprite: _sprite,
                description: _description,
                default_option: _default_option
            };
        } else {
            show_debug_message("Selector " + _selector_id + " not found.");
        }
        return option_id;
    };

    /**
     * Adds a new layer to the AvatarConfig.
     * @param {string} _id - The name of the layer.
     * @param {string} _label - The label of the layer.
     * @param {real} _draw_order - The draw order of the layer.
     * @param {real} _order - The order of the layer.
     * @param {bool} _required - Whether the layer is required.
     * @param {string} _description - The description of the layer.
     * @param {sprite_index} _default_sprite - The default sprite index of the layer.
     */
    static addLayer = function(_id, _label, _draw_order, _order, _required, _description, _default_sprite) {
        if (!struct_exists(layers, _id)) {
            layers[$ _id] = {label: _label, draw_order: _draw_order, order: _order, required: _required, description: _description, default_sprite: _default_sprite};
        }
		return _id;
    };

    /**
     * Retrieves a layer from the AvatarConfig.
     * @param {string} _id - The name of the layer to retrieve.
     * @returns {any} The layer if found, noone otherwise.
     */
    static getLayer = function(_id) {
        if (struct_exists(layers, _id)) {
            return layers[$ _id];
        }
        return noone;
    };

    /**
     * Adds a new tab to an existing layer in the AvatarConfig.
     * @param {string} _layer_id - The name of the layer to add the tab to.
     * @param {string} _id - The name of the tab.
     * @param {string} _label - The label of the tab.
     * @param {real} _order - The order of the tab.
     * @param {bool} _required - Whether the tab is required.
     * @param {string} _description - The description of the tab.
     * @param {sprite_index} _ui_sprite - The UI sprite index of the tab.
     */
    static addTab = function(_layer_id, _id, _label, _order, _required, _description, _ui_sprite) {
        if (struct_exists(tabs, _layer_id)) {
            var layer_tabs = tabs[$ _layer_id];
            layer_tabs[_id] = {label: _label, order: _order, required: _required, description: _description, ui_sprite: _ui_sprite};
        } else {
            tabs[$ _layer_id] = {};
            tabs[$ _layer_id][$ _id] = {label: _label, order: _order, required: _required, description: _description, ui_sprite: _ui_sprite};
        }

        return _id;
    };

    /**
     * Retrieves a tab from an existing layer in the AvatarConfig.
     * @param {string} _layer_id - The name of the layer containing the tab.
     * @param {string} _id - The name of the tab to retrieve.
     * @returns {any} The tab if found, noone otherwise.
     */
    static getTab = function(_layer_id, _id) {
        if (struct_exists(tabs, _layer_id)) {
            var layer_tabs = tabs[$ _layer_id];
            if (struct_exists(layer_tabs, _id)) {
                return layer_tabs[$ _id];
            }
        }
        return noone;
    };

    /**
     * Adds a new tab option to an existing tab in the AvatarConfig.
     * @param {string} _tab_id - The name of the tab to add the option to.
     * @param {string} _id - The name of the option.
     * @param {string} _label - The label of the option.
     * @param {real} _order - The order of the option.
     * @param {sprite_index} _sprite - The sprite index of the option.
     * @param {string} _description - The description of the option.
     * @param {bool} _default_option - The default value of the option.
     * @param {string} _selector_group - The name of the selector group.
     */
    static addTabOption = function(_tab_id, _id, _label, _order, _sprite, _description, _default_option, _selector_group) {
        var tab_id_parts = string_split(_tab_id, ".");
        var layer_id = tab_id_parts[0];
        var tab_id = tab_id_parts[1];

        if (struct_exists(tabs, layer_id)) {
            var layer_tabs = tabs[layer_id];
            if (!struct_exists(layer_tabs, tab_id)) {
                layer_tabs[$ tab_id] = {}; // Ensure the tab exists before assigning
            }
            var tab = layer_tabs[tab_id];
            tab[$ _id] = {
                label: _label,
                order: _order,
                sprite: _sprite,
                description: _description,
                default_option: _default_option,
                selector_group: _selector_group
            };
        }

        return _id;
    };

    /**
     * Retrieves a tab option from an existing tab in the AvatarConfig.
     * @param {string} _tab_id - The name of the tab containing the option.
     * @param {string} _id - The name of the option to retrieve.
     * @returns {any} The tab option if found, noone otherwise.
     */
    static getTabOption = function(_tab_id, _id) {
        var tab_id_parts = string_split(_tab_id, ".");
        var layer_id = tab_id_parts[0];
        var tab_id = tab_id_parts[1];
        if (struct_exists(tabs, layer_id)) {
            var layer_tabs = tabs[$ layer_id];
            if (struct_exists(layer_tabs, tab_id)) {
                var tab = layer_tabs[$ tab_id];
                if (struct_exists(tab, _id)) {
                    return tab[$ _id];
                }
            }
        }
        return noone;
    };
}
