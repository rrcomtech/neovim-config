-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      { 'tpope/vim-dadbod', lazy = true },
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'duckdb' }, lazy = true },
    },
    cmd = {
      'DBUI',
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
    end,
    },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    },
    config = function()
      require('nvim-tree').setup()
    end,
  },
 -- {
   -- 'pmizio/typescript-tools.nvim',
   -- dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
   -- opts = {},
  --},
  {
    'L3MON4D3/LuaSnip',
    -- follow latest release.
    version = 'v2.2.0', -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = 'make install_jsregexp',
  },
  {
    'pwntester/octo.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      -- OR 'ibhagwan/fzf-lua',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('octo').setup()
    end,
  },
  {
    "savq/melange-nvim",
    config = function ()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme 'melange'
    end
  },
  {
    "xiyaowong/transparent.nvim",
    config = function()
      require("transparent").setup({
        enable = true,
        extra_groups = {
          "NvimTree",
          "terminal",
          "packer",
          "TelescopePrompt",
          "TelescopeResults",
          "TelescopePreview",
        },
      })
    end
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    'github/copilot.vim'
  },
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    opts = {
        enabled = true,
        message_template = "<author> • <summary> • <date>",
        date_format = "%r",
        virtual_text_column = 10
    }
  }
}
