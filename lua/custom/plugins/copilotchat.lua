return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    lazy = false,
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    keys = {
      -- Normal mode keybindings
      { "<leader>zc", "<cmd>CopilotChat<cr>", desc = "Chat with Copilot" },
      { "<leader>zm", "<cmd>CopilotChatCommit<cr>", desc = "Generate Commit Message" },

      -- Visual mode keybindings
      { "<leader>ze", ":CopilotChatExplain<cr>", mode = "v", desc = "Explain Code" },
      { "<leader>zr", ":CopilotChatReview<cr>",  mode = "v", desc = "Review Code" },
      { "<leader>zf", ":CopilotChatFix<cr>",     mode = "v", desc = "Fix Code Issues" },
      { "<leader>zo", ":CopilotChatOptimize<cr>",mode = "v", desc = "Optimize Code" },
      { "<leader>zd", ":CopilotChatDocs<cr>",    mode = "v", desc = "Generate Docs" },
      { "<leader>zt", ":CopilotChatTests<cr>",   mode = "v", desc = "Generate Tests" },
      { "<leader>zs", ":CopilotChatCommit<cr>",  mode = "v", desc = "Generate Commit for Selection" },
    },        
    -- See Commands section for default commands if you want to lazy load on them
  },
}
