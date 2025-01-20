return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup({
          size = 60, 
          direction = "float",
          float_opts = {
            border = "curved", 
            width = 150,
            height = 30,
            winblend = 3,
          },
        })
        vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>", { desc = "[T]oggle Floating Terminal" })
    end
}
