vim.opt.number = true
vim.opt.rnu = true
vim.cmd [[packadd packer.nvim]]
require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Nord theme
    use 'shaunsingh/nord.nvim'
    vim.cmd [[colorscheme nord]]
    -- TreeSitter
    use 'nvim-treesitter/nvim-treesitter'
    -- use 'nvim-treesitter/nvim-treesitter-context'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

end)
vim.opt.list = true 
vim.opt.listchars:append('tab:> ')
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.swapfile = false
-- Configuring nord
-- vim.g.nord_disable_background = true
vim.g.nrod_uniform_diff_background = true

-- Loading the colorscheme
require('nord').set()
-- Treesitter
require 'nvim-treesitter.install'.prefer_git = false
require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }
require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "c", "lua", "python","java","c_sharp","javascript","html","css" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    auto_install = false,


    highlight = {
        enable = true,
    } }

    require('lualine').setup {
        options ={
            icons_enabled = true,
            theme = 'auto'
        }
    }

    --Map
    vim.g.mapleader = '\\'

    -- Open Recently Used files
    vim.api.nvim_set_keymap('n','<leader>fr', ':History<CR>', {noremap = true})

    --Open files in Same directory
    vim.api.nvim_set_keymap('n','<leader>ff',':e %:h/<C-d>',{noremap = true})
    vim.api.nvim_set_keymap('n','<leader>f','gg=G',{noremap = true})
