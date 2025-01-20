return {
    "tpope/vim-rhubarb",
    config = function()
        vim.keymap.set("n", "<leader>gu", ":GBrowse<CR>", { desc = "[G]it Open [U]rl" })
    end
}
