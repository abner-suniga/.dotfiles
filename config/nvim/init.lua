--------------------------------------------------------------------------------
--------------------------------- Plugins --------------------------------------
--------------------------------------------------------------------------------
local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('junegunn/fzf', { ['do'] = './install --all' })              -- fuzzy finder
Plug('junegunn/fzf.vim')                                          -- fuzzy finder
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' }) -- syntax highlight, navigation +
Plug('neovim/nvim-lspconfig')                                     -- lsp
Plug('hrsh7th/nvim-cmp')                                          -- autocompletion
Plug('hrsh7th/cmp-nvim-lsp')                                      -- autocompletion
Plug('L3MON4D3/LuaSnip')                                          -- snippets
Plug('VonHeikemen/lsp-zero.nvim', { ['branch'] = 'v3.x' })        -- lsp
Plug('stevearc/conform.nvim')                                     -- formatters
Plug('windwp/nvim-autopairs')                                     -- autopair
Plug('ellisonleao/gruvbox.nvim')                                  -- theme

vim.call('plug#end')

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- leader key
vim.g.mapleader = " "
vim.g.netrw_banner = 0

local utils = require('utils')

--------------------------------------------------------------------------------
--------------------------------- Keymaps --------------------------------------
--------------------------------------------------------------------------------
vim.keymap.set("n", "<leader>n", utils.toggle_netrw)

vim.keymap.set("n", "<leader>ff", ':Files<cr>')
vim.keymap.set("n", "<leader>sf", ':GFiles<cr>')
vim.keymap.set("n", "<leader>sg", ':Ag<cr>')
vim.keymap.set("n", "<leader><leader>", ':Buffers<cr>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<C-l>', ':nohlsearch<CR>')
vim.keymap.set('x', '<leader>p', '\"_dP')

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

--------------------------------------------------------------------------------
--------------------------------- Options --------------------------------------
--------------------------------------------------------------------------------

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.colorcolumn = '80'

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.updatetime = 50

vim.wo.foldcolumn = '2'
vim.wo.signcolumn = 'yes:2'

--------------------------------------------------------------------------------
--------------------------------- Treesitter -----------------------------------
--------------------------------------------------------------------------------

require('nvim-treesitter.configs').setup({
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "javascript", "typescript" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    disable = { "c", "rust" },
    additional_vim_regex_highlighting = false,
  },
})

--------------------------------------------------------------------------------
------------------------------------ LSP ---------------------------------------
--------------------------------------------------------------------------------

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

lsp_zero.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

local lsp_config = require('lspconfig')

-- setup language servers
lsp_config.tsserver.setup({})
lsp_config.lua_ls.setup({})
lsp_config.eslint.setup({})

--------------------------------------------------------------------------------
-------------------------------- Formatters ------------------------------------
--------------------------------------------------------------------------------

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    typescript = { 'prettierd', 'prettier' },
    typescriptreact = { 'prettierd', 'prettier' },
    javascript = { 'prettierd', 'prettier' },
    javascriptreact = { 'prettierd', 'prettier' },
    json = { 'prettierd', 'prettier' },
    html = { 'prettierd', 'prettier' },
    css = { 'prettierd', 'prettier' },
    handlebars = { 'prettierd', 'prettier' },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },
})

--------------------------------------------------------------------------------
------------------------------ Autocompletion ----------------------------------
--------------------------------------------------------------------------------

local cmp = require('cmp')

cmp.setup({
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
  mapping = {
    ['<cr>'] = cmp.mapping.confirm({ select = false }),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<Up>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
    ['<Down>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
    ['<C-p>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item({ behavior = 'insert' })
      else
        cmp.complete()
      end
    end),
    ['<C-n>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_next_item({ behavior = 'insert' })
      else
        cmp.complete()
      end
    end),
    ['<C-Space>'] = cmp.mapping.complete(),
  },
})

--------------------------------------------------------------------------------
-------------------------------- Autopairs -------------------------------------
--------------------------------------------------------------------------------

require("nvim-autopairs").setup({})
