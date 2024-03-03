// Define the AvatarConfig struct
function AvatarConfig() constructor {
	show_message("Initiaized");
    selectors = {};
    layers = {};
    tabs = {};

    /**
     * Adds a new selector to the AvatarConfig.
     * @param {string} _name - The name of the selector.
     * @param {string} _label - The label of the selector.
     * @param {real} _order - The order of the selector.
     * @param {string} _description - The description of the selector.
     */
    static addSelector = function(_name, _label, _order, _description) {
        if (!struct_exists(selectors, _name)) {
            struct_set(selectors, _name, {_label, _order, _description});
        }
    };

    /**
     * Retrieves a selector from the AvatarConfig.
     * @param {string} _name - The name of the selector to retrieve.
     * @returns {any} The selector if found, null otherwise.
     */
    static getSelector = function(_name) {
        if (struct_exists(selectors, _name)) {
            return struct_get(selectors, _name);
        }
        return null;
    };

    /**
     * Adds a new selector option to an existing selector in the AvatarConfig.
     * @param {string} _selector_name - The name of the selector to add the option to.
     * @param {string} _name - The name of the option.
     * @param {string} _label - The label of the option.
     * @param {real} _order - The order of the option.
     * @param {sprite_index} _sprite - The sprite index of the option.
     * @param {string} _description - The description of the option.
     * @param {bool} _default - The default value of the option.
     */
    static addSelectorOption = function(_selector_name, _name, _label, _order, _sprite, _description, _default) {
        if (struct_exists(selectors, _selector_name)) {
            var selector = struct_get(selectors, _selector_name);
            selector[_name] = {_label, _order, _sprite, _description, _default};
        }
    };

    /**
     * Adds a new layer to the AvatarConfig.
     * @param {string} _name - The name of the layer.
     * @param {string} _label - The label of the layer.
     * @param {real} _draw_order - The draw order of the layer.
     * @param {real} _order - The order of the layer.
     * @param {bool} _required - Whether the layer is required.
     * @param {string} _description - The description of the layer.
     * @param {sprite_index} _default_sprite - The default sprite index of the layer.
     */
    static addLayer = function(_name, _label, _draw_order, _order, _required, _description, _default_sprite) {
        if (!struct_exists(layers, _name)) {
            struct_set(layers, _name, {_label, _draw_order, _order, _required, _description, _default_sprite});
        }
    };

    /**
     * Retrieves a layer from the AvatarConfig.
     * @param {string} _name - The name of the layer to retrieve.
     * @returns {any} The layer if found, null otherwise.
     */
    static getLayer = function(_name) {
        if (struct_exists(layers, _name)) {
            return struct_get(layers, _name);
        }
        return null;
    };

    /**
     * Adds a new tab to an existing layer in the AvatarConfig.
     * @param {string} _layer_name - The name of the layer to add the tab to.
     * @param {string} _name - The name of the tab.
     * @param {string} _label - The label of the tab.
     * @param {real} _order - The order of the tab.
     * @param {bool} _required - Whether the tab is required.
     * @param {string} _description - The description of the tab.
     * @param {sprite_index} _ui_sprite - The UI sprite index of the tab.
     */
    static addTab = function(_layer_name, _name, _label, _order, _required, _description, _ui_sprite) {
        if (struct_exists(tabs, _layer_name)) {
            var layer_tabs = struct_get(tabs, _layer_name);
            layer_tabs[_name] = {_label, _order, _required, _description, _ui_sprite};
        } else {
            tabs[_layer_name] = {_name: {_label, _order, _required, _description, _ui_sprite}};
        }
    };

    /**
     * Retrieves a tab from an existing layer in the AvatarConfig.
     * @param {string} _layer_name - The name of the layer containing the tab.
     * @param {string} _name - The name of the tab to retrieve.
     * @returns {any} The tab if found, null otherwise.
     */
    static getTab = function(_layer_name, _name) {
        if (struct_exists(tabs, _layer_name)) {
            var layer_tabs = struct_get(tabs, _layer_name);
            if (struct_exists(layer_tabs, _name)) {
                return struct_get(layer_tabs, _name);
            }
        }
        return null;
    };

    /**
     * Adds a new tab option to an existing tab in the AvatarConfig.
     * @param {string} _tab_name - The name of the tab to add the option to.
     * @param {string} _name - The name of the option.
     * @param {string} _label - The label of the option.
     * @param {real} _order - The order of the option.
     * @param {sprite_index} _sprite - The sprite index of the option.
     * @param {string} _description - The description of the option.
     * @param {bool} _default - The default value of the option.
     * @param {string} _selector_group - The name of the selector group.
     */
    static addTabOption = function(_tab_name, _name, _label, _order, _sprite, _description, _default, _selector_group) {
        var tab_name_parts = string_split(_tab_name, ".");
        var layer_name = tab_name_parts[0];
        var tab_name = tab_name_parts[1];

        if (struct_exists(tabs, layer_name)) {
            var layer_tabs = struct_get(tabs, layer_name);
            if (struct_exists(layer_tabs, tab_name)) {
                var tab = struct_get(layer_tabs, tab_name);
                tab[_name] = {_label, _order, _sprite, _description, _default, _selector_group};
            }
        }
    };

    /**
     * Retrieves a tab option from an existing tab in the AvatarConfig.
     * @param {string} _tab_name - The name of the tab containing the option.
     * @param {string} _name - The name of the option to retrieve.
	* @returns {any} The tab option if found, null otherwise.
	*/
	static getTabOption = function(_tab_name, _name) {
		var tab_name_parts = string_split(_tab_name, ".");
		var layer_name = tab_name_parts[0];
		var tab_name = tab_name_parts[1];
	    if (struct_exists(tabs, layer_name)) {
	        var layer_tabs = struct_get(tabs, layer_name);
	        if (struct_exists(layer_tabs, tab_name)) {
	            var tab = struct_get(layer_tabs, tab_name);
	            if (struct_exists(tab, _name)) {
	                return struct_get(tab, _name);
	            }
	        }
	    }
	    return null;
	};

}