-- ~\AppData\Local\nvim\lua\config\lazy.lua

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

require("lazy").setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { import = "plugins" },  -- Esto asegura que los plugins se carguen desde la carpeta 'plugins'
  },
  defaults = {
    lazy = false,
    version = false, -- siempre usa el último commit
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = {
    enabled = true,  -- Permite la comprobación de actualizaciones de plugins
    notify = false,
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip", "tarPlugin", "zipPlugin", "tohtml", "tutor",
      },
    },
  },
})
