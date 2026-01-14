return {
  "nvim-mini/mini.statusline",
  event = "VeryLazy",
  version = false,
  -- opts = {
 --   use_icons = vim.g.have_nerd_font,
  -- }
  init = function()
    local statusline = require 'mini.statusline'

    -- set use_icons to true if you have a Nerd Font
    statusline.setup { use_icons = vim.g.have_nerd_font }


    statusline.section_location = function()
      return '%2l:%-2v'
    end
  end
}
