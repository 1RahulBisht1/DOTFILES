return {
	{ -- This helps with ssh tunneling and copying to clipboard
		"ojroques/vim-oscyank",
	},
	{ -- Git plugin
		"tpope/vim-fugitive",
	},
	{
		"rmagatti/auto-session",
		config = function()
			require("auto-session").setup({
				log_level = "error",
				auto_session_suppress_dirs = { "~/", "~/Downloads" },
			})
		end,
	},
	{ 	-- for viewing images.
		"3rd/image.nvim",
		build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
		opts = {
			processor = "magick_cli",
		}
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},
	{ -- Show historical versions of the file locally
		"mbbill/undotree",
	},

	{ "LudoPinelli/comment-box.nvim" },

	{ --this is for caret animation on typing and smear effect on cursor
		"sphamba/smear-cursor.nvim",
		opts = {
			-- Smear cursor when switching buffers or windows.
			smear_between_buffers = true,

			-- Smear cursor when moving within line or to neighbor lines.
			-- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
			smear_between_neighbor_lines = true,

			-- Draw the smear in buffer space instead of screen space when scrolling
			scroll_buffer_space = true,

			-- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
			-- Smears and particles will look a lot less blocky.
			legacy_computing_symbols_support = true,
			distance_stop_animating_vertical_bar = 0.1,

			-- Smear cursor in insert mode.
			-- See also `vertical_bar_cursor_insert_mode` and `distance_stop_animating_vertical_bar`.
			smear_insert_mode = true,
		},
	},

	--	{
	--		"HiPhish/rainbow-delimiters.nvim",
	--		config = function()
	--			vim.g.rainbow_delimiters = {
	--				highlight = {
	--					"RainbowDelimiterYellow",
	--					"RainbowDelimiterViolet",
	--					"RainbowDelimiterBlue",
	--				},
	--			}
	--		end,
	--	},
}
