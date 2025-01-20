return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local telescope = require('telescope')
        local builtin = require('telescope.builtin')

        vim.cmd [[
          highlight TelescopeNormal guibg=none
          highlight TelescopeBorder guibg=none
        ]]

        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "[P]roject File Search" })
        -- vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "Git Files" })
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, { desc = "[P]roject [S]tring Search" })
    end
}

