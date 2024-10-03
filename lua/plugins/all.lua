return {
  {
   'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "go", "zig" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
  },
  { 'nvim-telescope/telescope.nvim' },
  { 'neovim/nvim-lspconfig' },
  {
	  "nvim-tree/nvim-tree.lua",
	  version = "*",
	  lazy = false,
	  dependencies = {
	    "nvim-tree/nvim-web-devicons",
	  },
	  config = function()
	  require("nvim-tree").setup {
	    renderer = {
	      icons = {
		show = {
		  git = true,
		  file = false,
		  folder = false,
		  folder_arrow = true,
		},
	      },
	    },
	  }
	  end,
  }
}
