return {
  "theprimeagen/harpoon",
  config = function()
    -- Plugin setup
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    -- Key mappings
    vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "[A]dd File to Harpoon" })
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Open Harpoon" })
    vim.keymap.set("n", "<C-j>", function() ui.nav_file(1) end, { desc = "Harpoon File 1 Navigate" })
    vim.keymap.set("n", "<C-k>", function() ui.nav_file(2) end, { desc = "Harpoon File 2 Navigate" })
    vim.keymap.set("n", "<C-l>", function() ui.nav_file(3) end, { desc = "Harpoon File 3 Navigate" })
    vim.keymap.set("n", "<C-;>", function() ui.nav_file(4) end, { desc = "Harpoon File 4 Navigate" })
  end
}

