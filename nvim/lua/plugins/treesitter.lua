return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "c", 
                "lua",
                "vim", 
                "vimdoc", 
                "query", 
                "javascript", 
                "html",
                "markdown",
            },
            auto_install = true,
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            incremental_selection = {
                enable = true,
                keymaps = {
                    -- !NOTE: The defaults are commented out, and custom ones are used instead
                    --init_selection = "gnn",
                    init_selection = "<Enter>",
                    --node_incremental = "grn",
                    node_incremental = "n",
                    --scope_incremental = "grc",
                    scope_incremental = "s",
                    --node_decremental = "grm",
                    node_decremental = "N",
                },
            },
            highlight = {
                enable = true,
                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true
            }
        })
    end,
}
