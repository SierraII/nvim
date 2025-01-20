return {
    'windwp/nvim-autopairs',
    config = function()
        require('nvim-autopairs').setup({
            check_ts = true,  -- Enable Treesitter integration for better pairing
            disable_filetype = { "TelescopePrompt", "vim" },  -- Disable for specific filetypes
        })
    end
}
