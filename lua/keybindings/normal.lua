local Log = require "lvim.core.log"
Log:info("use arrow keys for window movement")
lvim.keys.normal_mode["<C-Up>"] = "<C-w>k"
lvim.keys.normal_mode["<C-Down>"] = "<C-w>j"
lvim.keys.normal_mode["<C-Left>"] = "<C-w>h"
lvim.keys.normal_mode["<C-Right>"] = "<C-w>l"


Log:info("Resize up with 'ctrl + h' ")
lvim.keys.normal_mode["<C-h>"] = ":resize -2<CR>"
Log:info("Resize down with 'ctrl + j' ")
lvim.keys.normal_mode["<C-j>"] = ":resize +2<CR>"
Log:info("Resize left with 'ctrl + k' ")
lvim.keys.normal_mode["<C-k>"] = ":vertical resize -2<CR>"
Log:info("Resize right with 'ctrl +l' ")
lvim.keys.normal_mode["<C-l>"] = ":vertical resize +2<CR>"


Log:info("Tab switch buffer")
lvim.keys.normal_mode["<S-l>"] = ":BufferNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferPrevious<CR>"

Log:info("Move current line / block with Alt-j/k a la vscode.")
lvim.keys.normal_mode["<A-j>"] = ":m .+1<CR>=="
lvim.keys.normal_mode["<A-k>"] = ":m .-2<CR>=="

Log:info("QuickFix")
lvim.keys.normal_mode["]q"] = ":cnext<CR>"
lvim.keys.normal_mode["[q"] = ":cprev<CR>"
lvim.keys.normal_mode["<C-q>"] = ":call QuickFixToggle()<CR>"

