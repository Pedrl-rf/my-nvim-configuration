return {
    -- Plugin para autocompletado y snippets
    {
      "hrsh7th/nvim-cmp",
      dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "saadparwaiz1/cmp_luasnip",
      },
      config = function()
        require("cmp").setup({
          completion = {
            autocomplete = false,
          },
          mapping = {
            ["<C-n>"] = require("cmp").mapping.select_next_item(),
            ["<C-p>"] = require("cmp").mapping.select_prev_item(),
          },
        })
      end
    },
  
    -- Plugin para snippets
    {
      "L3MON4D3/LuaSnip",
      dependencies = { "rafamadriz/friendly-snippets" },
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end
    },
  
    -- Plugin para manejo de treesitter
    { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
    
    -- Plugin para iconos
    "nvim-tree/nvim-web-devicons",
  
    -- Plugin para gestionar y buscar archivos
    "nvim-telescope/telescope.nvim",
  
    -- Plugin para Git
    "tpope/vim-fugitive",
  }
  