return {
  { 'nvim-tree/nvim-web-devicons' },
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
