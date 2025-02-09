-- ~\AppData\Local\nvim\lua\plugins\treesitter.lua

-- Configuración para nvim-treesitter
return {
    -- Plugin para árboles de sintaxis
    {
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate", -- Actualiza los parsers
      config = function()
        require("nvim-treesitter.configs").setup({
          ensure_installed = { "tsx", "javascript", "typescript", "json", "html", "css" },
          highlight = {
            enable = true, -- Habilitar resaltado de sintaxis
          },
          incremental_selection = {
            enable = true, -- Habilitar selección incremental
          },
          indent = { enable = true }, -- Habilitar indentación automática
        })
      end,
    },
  }
  