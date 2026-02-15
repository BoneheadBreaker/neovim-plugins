vim.g.mapleader = " "

-- 1. Fixed Bootstrap (Full URL included)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- 2. Load Plugins
require("lazy").setup("plugins")

-- 3. Settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2
vim.opt.autowrite = true 

-- Transparent overrides
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

-- 4. Neovide "Glass" Config
if vim.g.neovide then
    vim.g.neovide_opacity = 0.3 -- Very transparent as requested
    vim.g.neovide_window_blurred = true
    vim.g.neovide_cursor_vfx_mode = "railgun"
    vim.g.neovide_no_idle = true
    -- Ensure you have Scoop installed JetBrainsMono-NF
    vim.opt.guifont = "JetBrainsMono NF:h12"
end
