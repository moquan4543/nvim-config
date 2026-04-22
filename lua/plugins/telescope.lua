return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

            -- JetBrains-like
            vim.keymap.set('n', '<C-n>', builtin.find_files, {}) -- Search Files
            vim.keymap.set('n', '<C-S-f>', builtin.live_grep, {}) -- Search in Path
            vim.keymap.set('n', '<leader><leader>', builtin.resume, {}) -- Double Shift-ish
            vim.keymap.set('n', '<C-S-a>', builtin.commands, {}) -- Find Action

        end

    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require('telescope').setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown{}
                    }
                }
            })
            require("telescope").load_extension("ui-select")
        end
    }
}

