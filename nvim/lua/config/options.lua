---@diagnostic disable: undefined-global

-- OPTIONS
local set = vim.opt


set.showcmd=true

-- ── set to true if have nerd fonts installed and ebaled in terminal ──
vim.g.have_nerd_font = true

set.encoding = "utf-8" -- set encoding

-- ── line nums ───────────────────────────────────────────────────────
set.relativenumber = true
set.number = true

-- ── indentation and tabs ────────────────────────────────────────────
set.tabstop = 4
set.shiftwidth = 4
set.autoindent = true
set.expandtab = true

-- ── shell ───────────────────────────────────────────────────────────
set.shell = "zsh"

-- ── search settings ─────────────────────────────────────────────────
set.ignorecase = true
set.smartcase = true

-- ── appearance ──────────────────────────────────────────────────────
set.termguicolors = true
set.background = "dark"
set.signcolumn = "yes"

-- ── cursor line ─────────────────────────────────────────────────────
set.cursorline = true

-- ── sync clipboard btween OS and NVIM ───────────────────────────────
vim.schedule(function()
	set.clipboard = "unnamedplus"
end)

-- ── backspace ───────────────────────────────────────────────────────
set.backspace = "indent,eol,start"

-- ── split windows ───────────────────────────────────────────────────
set.splitright = true
set.splitbelow = true

-- ── dw/diw/ciw works on full-word ───────────────────────────────────
set.iskeyword:append("-")

-- ── keep cursor at least 8 rows from top/bot ────────────────────────
set.scrolloff = 10

-- ── undo dir settings ───────────────────────────────────────────────
set.swapfile = false
set.backup = false
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true

-- ── incremental search ──────────────────────────────────────────────
set.incsearch = true

-- ── faster cursor hold ──────────────────────────────────────────────
set.updatetime = 50

-- ── 80th column ─────────────────────────────────────────────────────
set.colorcolumn = "80"

-- ── Sets how Nvim will display certain whitespace characters in the ──
-- editor
set.list = true
set.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- ── Preview substitutions live, as you type! ────────────────────────
set.inccommand = "split"

-- ── Highlight when yanking (copying) text ───────────────────────────
-- ── Try it with `yap` in normal mode ────────────────────────────────
-- ── See `:help vim.highlight.on_yank()` ─────────────────────────────
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
