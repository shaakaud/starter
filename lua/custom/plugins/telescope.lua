-- File: lua/custom/plugins/telescope.lua
return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
      local actions = require("telescope.actions")
      local builtin = require("telescope.builtin")

      -- Telescope setup (ensure it's done before setting keymaps)
      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ["<S-d>"] = actions.delete_buffer,
              ["<Down>"] = actions.move_selection_next,
              ["<S-j>"] = actions.move_selection_next,
              ["<Up>"] = actions.move_selection_previous,
              ["<S-k>"] = actions.move_selection_previous,
            },
            n = {
              ["<S-d>"] = actions.delete_buffer,
              ["<Down>"] = actions.move_selection_next,
              ["<S-j>"] = actions.move_selection_next,
              ["<Up>"] = actions.move_selection_previous,
              ["<S-k>"] = actions.move_selection_previous,
            },
          },
        },
        pickers = {
          buffers = {
            theme = "dropdown",
            previewer = false,
            sort_mru = true,
          },
        },
      })

      -- Other keybindings
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<Leader>gf', builtin.git_files, {})
      vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
      end)
      vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    -- Keymaps
    --  vim.keymap.set('n', '<S-Up>', function()
    --    builtin.buffers()
    --  end, { noremap = true, silent = true })
      --
      vim.keymap.set('n', '<S-Up>', function() builtin.buffers() end, { noremap = true, silent = true })
    end,
  },
}
