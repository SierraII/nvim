-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
require("adriandavidsmith.remap").setup()
require("lazy").setup("adriandavidsmith.plugins")
-- Show a notification when a file is saved successfully
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*",
  callback = function()
    local status, _ = pcall(function()
      require("notify")("File saved successfully!", "info", { title = "Save" })
    end)
    if not status then
      require("notify")("Failed to save file!", "error", { title = "Save Error" })
    end
  end,
})

