return {
  {
    "nvzone/showkeys",
    opts = {
      timeout = 1,
      maxkeys = 5,
      position = "bottom-right",
    },
    config = function(_, opts)
      require("showkeys").setup(opts)
      vim.cmd("ShowkeysToggle")
    end,
  },
}

