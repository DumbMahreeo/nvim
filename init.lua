local set = require("vim_interfaces/set")
local let = require("vim_interfaces/vars").let

set("number")
set("relativenumber")
set("wrap", false)
set("expandtab")
set("tabstop", 4)
set("softtabstop", 4)
set("expandtab")
set("mouse", "a")
set("updatetime", 300)
set("completeopt", "menuone,noinsert,noselect")
set("shortmess", "filnxtToOFAc")

let.g("mapleader", ",")

require "plugins"
require "mappings"
require "autocmds"

vim.cmd("retab")
