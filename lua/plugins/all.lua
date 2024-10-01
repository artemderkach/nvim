return {
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
		glyphs = {
		  folder = {
		    arrow_closed = "▸",
		    arrow_open = "▾",
		  },
		  git = {
		    unstaged = "✗",
		    staged = "✓",
		    unmerged = "⌥",
		    renamed = "➜",
		    untracked = "★",
		    deleted = "⊖",
		    ignored = "◌",
		  },
		},
	      },
	    },
	  }
	  end,
  }
}
