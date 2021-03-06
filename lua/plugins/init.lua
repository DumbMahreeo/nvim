local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")

Plug "tpope/vim-surround"
Plug "preservim/nerdcommenter"
Plug "jiangmiao/auto-pairs"
Plug "preservim/nerdtree"
Plug "alvan/vim-closetag"
--Plug "ervandew/supertab"
Plug "lukas-reineke/indent-blankline.nvim"

Plug "dense-analysis/ale"
Plug "sheerun/vim-polyglot"
Plug "neovim/nvim-lspconfig"

Plug 'hrsh7th/cmp-nvim-lsp'
--Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug "tami5/lspsaga.nvim"

--Plug 'kabouzeid/nvim-lspinstall'
--Plug("neoclide/coc.nvim", {branch = "release"})

Plug "pangloss/vim-javascript"
Plug "habamax/vim-godot"
Plug("turbio/bracey.vim", {["do"] = "npm install --prefix server"}) -- do is a reserved keyword
Plug "cespare/vim-toml"

Plug "sainnhe/gruvbox-material"
Plug "vim-airline/vim-airline"
Plug "ryanoasis/vim-devicons"

vim.call("plug#end")


configs = {
    "ale",
    "closetag",
    "indent_blankline",
    "nerdtree",
    "supertab",
    "theme",
}

for _, conf in pairs(configs) do
    require("plugins/configs/" .. conf)
end

require("plugins/configs/lspconfig")
