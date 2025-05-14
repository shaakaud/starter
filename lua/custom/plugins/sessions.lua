return {
  {
    "natecraddock/sessions.nvim",
    lazy = false,
    config = function()
      require("sessions").setup({
        -- Optional: customize session directory
        events = { "BufEnter" },
        session_filepath = vim.fn.stdpath("data") .. "/sessions",
        absolute = true,
      })
    end,
  },
}
