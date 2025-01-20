return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 40,
            },
            renderer = {
                group_empty = true,
            },
        }
        vim.keymap.set("n", "<leader>pv", ":NvimTreeToggle<CR>", { desc = "[P]roject [V]iew" })
        vim.keymap.set("n", "<leader>s", ":NvimTreeFindFile<CR>", { desc = "[S]how File In Tree View" })
    end,

}
