local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
	vim.cmd("packadd packer.nvim")
end

vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use({ "wbthomason/packer.nvim" })

	-- general
	use({ "inkarkat/vim-ReplaceWithRegister" })
	use({ "machakann/vim-sandwich" })
	use({ "tpope/vim-abolish" })
	use({ "tpope/vim-commentary" })
	use({ "tpope/vim-dispatch" })
	use({ "tpope/vim-unimpaired" })
	use({ "wsdjeg/vim-fetch" })
	use({ "scrooloose/nerdcommenter" })
	use({ "airblade/vim-rooter" })
	use({ "dyng/ctrlsf.vim" })
	use({ "mechatroner/rainbow_csv" })
	use({ "junegunn/vim-easy-align" })
	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({})
		end,
	})

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require("config.treesitter").setup()
		end,
	})
	use({ "nvim-treesitter/nvim-treesitter-textobjects" })

	-- appearance
	use({
		"nvim-lualine/lualine.nvim",
		config = function()
			require("config.lualine").setup()
		end,
	})
	use({
		"kyazdani42/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup()
		end,
	})
	use({
		"akinsho/nvim-bufferline.lua",
		config = function()
			require("config.bufferline").setup()
		end,
	})

	-- filetree
	use({
		"kyazdani42/nvim-tree.lua",
		config = function()
			require("config.nvimtree").setup()
		end,
	})
	use("famiu/bufdelete.nvim")

	-- colorschemes
	use({ "dracula/vim" })

	-- markdown
	use({ "iamcco/markdown-preview.nvim", ft = { "markdown" }, run = 'vim.cmd("mkdp#util#install()")' })

	-- git
	use({ "tpope/vim-fugitive" })
	use({ "itchyny/vim-gitbranch" })
	use({ "tyru/open-browser.vim" })
	use({ "tyru/open-browser-github.vim" })

	-- autoformat
	use({ "google/vim-maktaba" })
	use({ "sbdchd/neoformat" })
	--use {"Chiel92/vim-autoformat"}
	--use {'google/vim-glaive'}

	-- bazel
	use({ "bazelbuild/vim-ft-bzl" })
	use({ "bazelbuild/vim-bazel" })
	use({
		"alexander-born/bazel-vim",
		config = function()
			require("config.bazel").setup()
		end,
	})

	-- telescope
	use({ "nvim-lua/popup.nvim" })
	use({ "nvim-lua/plenary.nvim" })

	--use {"nvim-telescope/telescope-fzy-native.nvim"}
	use({
		"nvim-telescope/telescope.nvim",
		config = function()
			require("config.telescope").setup()
		end,
	})
	use({
		"AckslD/nvim-neoclip.lua",
		config = function()
			require("neoclip").setup()
		end,
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	-- trouble
	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup()
		end,
	})

	-- lsp
	use({
		"neovim/nvim-lspconfig",
		"williamboman/nvim-lsp-installer",
	})
	use({ "aymericbeaumet/vim-symlink" })
	use({
		"ray-x/lsp_signature.nvim",
		config = function()
			require("lsp_signature").setup({ hint_enable = false })
		end,
	})

	-- completion
	use({
		"onsails/lspkind-nvim",
		config = function()
			require("lspkind").init()
		end,
	})

	-- debugging
	use({ "puremourning/vimspector" })

	-- cmp
	use({
		"hrsh7th/nvim-cmp",
		config = function()
			require("config.cmp").setup()
		end,
	})
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-vsnip" })
	use({ "alexander-born/cmp-bazel" })

	-- snippets
	use({ "hrsh7th/vim-vsnip" })
	use({ "rafamadriz/friendly-snippets" })
end)
