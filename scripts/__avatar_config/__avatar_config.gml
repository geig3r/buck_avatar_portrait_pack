/// @function AvatarConfig()
/// @description Initializes the avatar configuration with default settings.
function AvatarConfig() constructor {
    // Initial properties of the AvatarConfig
    var selectors = {};
    var layers = {};
    var tabs = {};

    /// @function addSelector(name, label, order, description)
    /// @description Adds a new selector to the avatar configuration.
    /// @param {string} name - The name of the selector.
    /// @param {string} label - The label of the selector.
    /// @param {number} order - The display order of the selector.
    /// @param {string} description - The description of the selector.
    addSelector = function(_name, _label, _order, _description) {
        if (!struct_exists(selectors, _name)) {
            struct_set(selectors, _name, {_label, _order, _description});
        }
    };

    /// @function getSelector(name)
    /// @description Retrieves a selector from the configuration.
    /// @param {string} name - The name of the selector to retrieve.
    /// @returns {struct|null} The selector struct if found, otherwise null.
    getSelector = function(_name) {
        if (struct_exists(selectors, _name)) {
            return struct_get(selectors, _name);
        }
        return null;
    };

    /// Similar functions would be created for `addLayer`, `getLayer`, `setLayer`, `addTab`, `getTab`, and `setTab`
    /// following the pattern established above for selectors.

    // Return the struct with methods to interact with the avatar configuration
    return {
        addSelector: addSelector,
        getSelector: getSelector,
        // Include other methods here...
    };
}
