local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
	-- Packer
	use({ "wbthomason/packer.nvim" })

	-- Core
	use({ "nvim-lua/plenary.nvim" })

	-- Theme
	use({ "nvim-tree/nvim-web-devicons" })
	use({ "folke/tokyonight.nvim" })

	-- Autopairs and Surround
	use({ "windwp/nvim-autopairs" })
	use({ "tpope/vim-surround" })

	-- Treesitter
	use({ "nvim-treesitter/nvim-treesitter" })

	-- Key press helper
	use({ "folke/which-key.nvim" })

	-- Telescope
	use({ "nvim-telescope/telescope.nvim" })
	use({ "nvim-telescope/telescope-file-browser.nvim" })

	-- Status Line
  use ({
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  })

	-- Nvim Tree
	use({ "nvim-tree/nvim-tree.lua" })

	-- LSP / cmp
	use({ 
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-vsnip", after = "nvim-cmp" })
	use({ "hrsh7th/vim-vsnip" })
	use({ "onsails/lspkind.nvim" })

	-- Null-ls
	use({ "jose-elias-alvarez/null-ls.nvim" })

	-- Colorizer
	use({ "norcalli/nvim-colorizer.lua" })

	-- Git support
	use({ "lewis6991/gitsigns.nvim" })

	-- Terminal
	use({ "akinsho/toggleterm.nvim" })

	-- Dashboard
	use({ "goolord/alpha-nvim", requires = "nvim-tree/nvim-web-devicons" })

	-- BBQ
	use({
		"utilyre/barbecue.nvim",
		tag = "*",
		requires = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", 
		},
		after = "nvim-web-devicons",
		config = function()
			require("barbecue").setup()
		end,
	})

	-- Markdown preview
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
