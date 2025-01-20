return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    event = { 'BufReadPost', 'BufNewFile' },
    config = function()
        require'nvim-treesitter.configs'.setup {
          ensure_installed = {"javascript", "go", "python", "typescript", "html", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

          sync_install = false,
          auto_install = false,

          highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
          },
        }
    end
}
