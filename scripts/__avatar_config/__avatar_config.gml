function AvatarConfig() constructor {
    // Initialize the configurations for selectors, layers, and tabs
    selectors = {};
    layers = {};
    tabs = {};

    // Method to add a selector configuration
    addSelector = function(selector_name, selector_label, selector_menu_order, selector_description) {
        selectors[selector_name] = {
            name: selector_name,
            label: selector_label,
            menu_order: selector_menu_order,
            description: selector_description,
            options: []  // Array to hold options for this selector
        };
    };

    // Method to add an option to a selector
    addSelectorOption = function(selector_name, option_name, option_label, option_order, option_sprite, option_description, default_option) {
        var selector = selectors[? selector_name];
        if (selector != undefined) {
            selector.options[option_name] = {
                name: option_name,
                label: option_label,
                order: option_order,
                sprite: option_sprite,
                description: option_description,
                default: default_option
            };
        }
    };

    // Method to add a layer configuration
    addLayer = function(layer_name, label, layer_required, default_sprite) {
        var draw_order = array_length(layers); // Draw order based on the number of layers already added
        layers[layer_name] = {
            name: layer_name,
            label: label,
            draw_order: draw_order,
            menu_order: draw_order, // Initially same as draw order
            required: layer_required,
            default_sprite: default_sprite,
            tabs: {}
        };
    };

    // Method to add a tab to a layer
    addTab = function(layer_name, tab_name, tab_label, tab_order, tab_required, tab_sprite, tab_description) {
        var layer = layers[? layer_name];
        if (layer != undefined) {
            layer.tabs[tab_name] = {
                name: tab_name,
                label: tab_label,
                order: tab_order,
                required: tab_required,
                sprite: tab_sprite,
                description: tab_description,
                options: []  // Array to hold options for this tab
            };
        }
    };

    // Method to add an option to a tab
    addTabOption = function(layer_name, tab_name, option_name, option_label, option_order, option_sprite, option_description, default_option, selector_group) {
        var tab = layers[? layer_name].tabs[? tab_name];
        if (tab != undefined) {
            tab.options[option_name] = {
                name: option_name,
                label: option_label,
                order: option_order,
                sprite: option_sprite,
                description: option_description,
                default: default_option,
                selector_group: selector_group
            };
        }
    };

    // Getter methods
    getSelector = function(selector_name) { return selectors[? selector_name]; };
    getLayer = function(layer_name) { return layers[? layer_name]; };
    getTab = function(layer_name, tab_name) { return layers[? layer_name].tabs[? tab_name]; };

    // Setter methods
    setSelector = function(selector_name, property, value) { if (selectors[? selector_name]) { selectors[? selector_name][? property] = value; }};
    setLayer = function(layer_name, property, value) { if (layers[? layer_name]) { layers[? layer_name][? property] = value; }};
    setTab = function(layer_name, tab_name, property, value) { if (layers[? layer_name].tabs[? tab_name]) { layers[? layer_name].tabs[? tab_name][? property] = value; }};
}
