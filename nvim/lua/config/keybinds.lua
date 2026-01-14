-- KEYBINDS
vim.g.mapleader = " "

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- tree
keymap("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

keymap("n", "J", "mzJ`z")       -- Remap joining lines
keymap("n", "<C-d>", "<C-d>zz") -- Keep cursor in place while moving up/down page
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")       -- center screen when looping search results
keymap("n", "N", "Nzzzv")

-- paste and don't replace clipboard over deleted text
keymap("x", "<leader>p", [["_dP]])
keymap({ "n", "v" }, "<leader>d", [["_d]])

-- set system clipboard
keymap({ "n", "v" }, "y", '"+y')
keymap({ "n", "v" }, "yy", '"+yy')
keymap({ "n", "v" }, "Y", '"+Y')
keymap("x", "y", '"+y')
keymap("x", "Y", '"+Y')

-- buffers
keymap("n", "<leader>n", ":bn<cr>")
keymap("n", "<leader>p", ":bp<cr>")
keymap("n", "<leader>x", ":bd<cr>")

-- ── comment-box ─────────────────────────────────────────────────────

-- Titles
keymap({ "n", "v" }, "<Leader>cbc", "<Cmd>CBccbox<CR>", opts) --for center
keymap({ "n", "v" }, "<Leader>cbl", "<Cmd>CBllbox<CR>", opts) --for left box
-- Named parts
keymap({ "n", "v" }, "<Leader>ct", "<Cmd>CBllline<CR>", opts)
-- Simple line
keymap("n", "<Leader>cl", "<Cmd>CBline<CR>", opts)
-- keymap("i", "<M-l>", "<Cmd>CBline<CR>", opts) -- To use in Insert Mode
-- Marked comments
keymap({ "n", "v" }, "<Leader>cm", "<Cmd>CBllbox14<CR>", opts)
-- Removing a box is simple enough with the command (CBd), but if you
-- use it a lot:
-- keymap({ "n", "v" }, "<Leader>cd", "<Cmd>CBd<CR>", opts)

-- ──────────────────────────────────────────────────────────────────────

-- clear search highlight
keymap("n", "<esc>", "<cmd>noh<cr>")

-- sometimes in insert mode, control-c doesn't exactly work like escape
keymap("i", "<C-c>", "<Esc>")

-- add binds for Control J/K to scroll thru quickfix list
keymap("n", "<C-j>", "<cmd>cnext<CR>zz")
keymap("n", "<C-k>", "<cmd>cprev<CR>zz")

-- lint / format php files for LC
--keymap("n", "<leader>cc", "<cmd>!php-cs-fixer fix % --using-cache=no<cr>")

-- Replace all instances of whatever is under cursor (on line)
--keymap("n", "<leader>s", [[:s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])

-- make file executable
--keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- yank into clipboard even if on ssh
keymap("n", "<leader>y", "<Plug>OSCYankOperator")
keymap("v", "<leader>y", "<Plug>OSCYankVisual")

-- reload without exiting vim
keymap("n", "<leader>rl", "<cmd>source ~/.config/nvim/init.lua<cr>")

keymap("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Quickfix list stuff
keymap("n", "<leader>cl", ":cclose<CR>", { silent = true })
keymap("n", "<leader>co", ":copen<CR>", { silent = true })
keymap("n", "<leader>cn", ":cnext<CR>zz")
keymap("n", "<leader>cp", ":cprev<CR>zz")
keymap("n", "<leader>li", ":checkhealth vim.lsp<CR>", { desc = "LSP Info" })
