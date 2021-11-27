local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.system({"git", "clone", "https://github.com/wbthomason/packer.nvim", install_path})
	vim.cmd("packadd packer.nvim")
end

vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])

--Plug 'airblade/vim-rooter'
--" bazel
--Plug 'bazelbuild/vim-bazel'
--Plug 'google/vim-maktaba'
--Plug 'sheerun/vim-polyglot'
--Plug 'cj/vim-webdevicons'
--Plug 'ekalinin/Dockerfile.vim'
--Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
--Plug 'luochen1990/rainbow'
--Plug 'dag/vim-fish'
--Plug 'mechatroner/rainbow_csv'
--Plug 'octol/vim-cpp-enhanced-highlight'
--Plug 'tpope/vim-obsession'
--Plug 'dracula/vim'
--Plug 'maxbrunsfeld/vim-yankstack'
return require("packer").startup(
	function(use)
		-- Packer can manage itself
		use {"wbthomason/packer.nvim"}

		-- general
		use {"inkarkat/vim-ReplaceWithRegister"}
		use {"machakann/vim-sandwich"}
		use {"tpope/vim-abolish"}
		use {"tpope/vim-commentary"}
		use {"tpope/vim-dispatch"}
		use {"tpope/vim-unimpaired"}
		use {"wsdjeg/vim-fetch"}
		use {"scrooloose/nerdcommenter"}
		use {"tpope/vim-surround"}
		use {"airblade/vim-rooter"}
		use {"dyng/ctrlsf.vim"}
		-- use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
		-- use {'junegunn/fzf.vim'}
		-- use {'ggandor/lightspeed.nvim', config = function() require'lightspeed'.setup({}) end }
		use {"junegunn/vim-easy-align"}

		-- appearance
		use {
			'nvim-treesitter/nvim-treesitter',
			run = ':TSUpdate'
		}
		use {
			"nvim-lualine/lualine.nvim",
			config = function()
				require "config.lualine".setup()
			end
		}
		use {
			"kyazdani42/nvim-web-devicons",
			config = function()
				require "nvim-web-devicons".setup()
			end
		}
		use {
			"akinsho/nvim-bufferline.lua",
			config = function()
				require "config.bufferline".setup()
			end
		}

		-- filetree
		use {
			"kyazdani42/nvim-tree.lua",
			config = function()
				require "config.nvimtree".setup()
			end
		}
		use 'famiu/bufdelete.nvim'

		-- colorschemes
		use {"dracula/vim"}

		-- git
		use {"tpope/vim-fugitive"}

		-- python
		use {"alfredodeza/pytest.vim"}

		-- autoformat
		use {"Chiel92/vim-autoformat"}
		use {"google/vim-maktaba"}

		-- bazel
		use {"bazelbuild/vim-bazel"}
		use {
			"alexander-born/bazel-vim",
			config = function()
				require "config.bazel".setup()
			end
		}

		-- telescope
		use {"nvim-lua/popup.nvim"}
		use {"nvim-lua/plenary.nvim"}
		use {"nvim-telescope/telescope-fzy-native.nvim"}
		use {
			"nvim-telescope/telescope.nvim",
			config = function()
				require "config.telescope".setup()
			end
		}
		use {
			"AckslD/nvim-neoclip.lua",
			config = function()
				require("neoclip").setup()
			end
		}

		-- lsp
		use {
			"kabouzeid/nvim-lspinstall",
			config = function()
				require "lspinstall".setup()
			end
		}
		use {
			"neovim/nvim-lspconfig",
			config = function()
				require "config.lsp".setup()
			end
		}
		use {
			"ray-x/lsp_signature.nvim",
			config = function()
				require "lsp_signature".setup({hint_enable = false})
			end
		}
		use {"aymericbeaumet/vim-symlink"}

		-- completion
		use {
			"onsails/lspkind-nvim",
			config = function()
				require "lspkind".init()
			end
		}

		-- cmp
		use {
			"hrsh7th/nvim-cmp",
			config = function()
				require "config.cmp".setup()
			end
		}
		use {"hrsh7th/cmp-nvim-lsp"}
		use {"hrsh7th/cmp-path"}
		use {"hrsh7th/cmp-buffer"}
		use {"hrsh7th/cmp-vsnip"}
		use {"alexander-born/cmp-bazel"}

		-- snippets
		use {"hrsh7th/vim-vsnip"}
		use {"rafamadriz/friendly-snippets"}
	end
	)
