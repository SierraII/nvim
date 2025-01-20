local M = {}

M.setup = function()
    vim.g.mapleader = " "
    vim.g.maplocalleader = "\\"

    vim.opt.guicursor = ""
    vim.opt.termguicolors = true
    vim.opt.nu = true
    vim.opt.relativenumber = true

    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true
    vim.opt.smartindent = true
    vim.opt.wrap = false

    vim.opt.swapfile = false
    vim.opt.backup = false
    vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
    vim.opt.undofile = true

    vim.opt.hlsearch = false
    vim.opt.incsearch = true
    vim.opt.scrolloff = 8
    vim.opt.signcolumn = "yes"
    vim.opt.isfname:append("@-@")

    vim.opt.updatetime = 50
    vim.opt.colorcolumn = "80"

    vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "[S]ave the Current File" })
    vim.keymap.set("n", "<leader>fo", ":!open .<CR>", { desc = "[F]inder [O]pen File" })
    vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
    vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
    vim.keymap.set("n", "<C-d>", "<C-d>zz")
    vim.keymap.set("n", "<C-u>", "<C-u>zz")
    vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
    vim.keymap.set("n", "n", "nzzzv")
    vim.keymap.set("n", "N", "Nzzzv")

    vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Copy to Global Clipboard" })
    vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy to Global Clipboard" })
    vim.keymap.set("n", "Q", "<NOP>")
end

return M
