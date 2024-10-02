return { 
    "nvim-treesitter/nvim-treesitter", 
    build = ":tsupdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            ensure_installed = {"lua", "javascript", "c"},
            highlight = {enable = true},
            indent = {enable = true},
        }) 
    end
}
