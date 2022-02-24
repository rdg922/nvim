require('basics')
require('colors')
require('telescope-config')
require('dashboard-config')
require('coc-config')
require('lualine').setup()
require('autopairs')
require('whichkey')
require('nvim-autopairs').setup{}
require('gitsigns').setup()
require('gitsigns-setup')

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  context_commentstring = {
    enable = true
  },
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  }
}


return require('packer').startup(function()
  use 'habamax/vim-godot'
  use 'wbthomason/packer.nvim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'folke/tokyonight.nvim'
  use 'nvim-treesitter/nvim-treesitter' 
  use 'tpope/vim-commentary'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'ThePrimeagen/git-worktree.nvim'
  use 'glepnir/dashboard-nvim'
  use 'windwp/nvim-autopairs'
  use 'folke/which-key.nvim'
  use 'lewis6991/gitsigns.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    "blackCauldron7/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }
end)
