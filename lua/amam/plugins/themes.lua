 return   {
         { 
                "catppuccin/nvim", 
                 name = "catppuccin",
                priority = 1000,
                config = function()
                require("catppuccin").setup({
                         flavour = "mocha",
                         transparent_background = true,
                         styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                                 comments = { "italic" }, -- Change the style of comments
                                 conditionals = { "italic" },
                         },
                         integrations = {
                                 cmp = true,
                                 gitsigns = true,
                                 nvimtree = true,
                                 treesitter = true,
                                 notify = false,
                                 mini = {
                                         enabled = true,
                                         indentscope_color = "",
                                 },
                                 -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                         },
                 })
                vim.cmd.colorscheme "catppuccin"
                 end
         },
         {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = true, -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                styles = {
                    -- Style to be appLlied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false },
                    keywords = { italic = false },
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark", -- style for floating windows
                },
            })
        end
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
            })
        end
    }
}
