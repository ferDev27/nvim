local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path
  })
  vim.api.nvim_command('packadd packer.nvim')
end

return require('packer').startup({
    function(use)
    -- Packer
    use { 'wbthomason/packer.nvim' }

    -- Treesitter
    use {
          'nvim-treesitter/nvim-treesitter',
          run = ":TSUpdate",
          event = "BufWinEnter",
          config = "require('treesitter-config')"
    }

    -- Theme
    use { 'rose-pine/neovim' , config = "require('theme-config')" }
    use { 'kyazdani42/nvim-web-devicons' }

    -- Parenths and Brackets
    use { 'windwp/nvim-ts-autotag', event = "InsertEnter", after = "nvim-treesitter" }
    use { 'windwp/nvim-autopairs', config = "require('autopairs-config')" }
    use { 'tpope/vim-surround' }

    -- Key press helper
    use { 'folke/which-key.nvim', event = "BufWinEnter", config = "require('whichkey-config')" }

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = { { 'nvim-lua/plenary.nvim' } },
      cmd = "Telescope",
    }

    -- Status Line
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      event = "BufRead",
      config = "require('lualine-config')"
    }

    -- Buffer Line
    use {
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
    }

    -- Nvim Tree
    use {
          'kyazdani42/nvim-tree.lua',
          requires = 'kyazdani42/nvim-web-devicons',
          cmd = "NvimTreeToggle",
          config = "require 'nvim-tree'.setup{}"
    }

    -- LSP / cmp
    use { 'neovim/nvim-lspconfig', config = "require('lsp')" }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-vsnip' }
    use { 'hrsh7th/vim-vsnip' }
    use { 'onsails/lspkind.nvim' }
    -- Snippets

    -- Colorizer
    use { 'norcalli/nvim-colorizer.lua', config = "require('colorizer').setup()" }

    -- Git support
    use {'lewis6991/gitsigns.nvim', config = "require('gitsigns').setup{}"}

    -- Terminal
    use { "akinsho/toggleterm.nvim", config = "require('toggleterm-config')" }


    end,
    config = {
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'single' })
            end
        }
    }
})
