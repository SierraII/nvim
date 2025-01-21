return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        { 'nvim-lua/plenary.nvim' },
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
        },
    },
    config = function()
        local telescope = require('telescope')
        local builtin = require('telescope.builtin')

        telescope.setup({
            defaults = {
                file_ignore_patterns = { "node_modules", ".git" },
                prompt_prefix = "🔍 ",
            }
        })

        telescope.load_extension('fzf')

        vim.cmd [[
          highlight TelescopeNormal guibg=none
          highlight TelescopeBorder guibg=none
        ]]

        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "[P]roject [F]ile Search" })
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, { desc = "[P]roject [S]tring Search" })
    end
}

