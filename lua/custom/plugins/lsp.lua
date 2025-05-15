return {
  -- ... other plugins ...

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",      -- Optional: For managing LSP servers
      "williamboman/mason-lspconfig.nvim", -- Optional: For managing LSP server installations
      "hrsh7th/nvim-cmp",             -- Required: For autocompletion
      "hrsh7th/cmp-nvim-lsp",         -- Required: For LSP completion source
    },
    config = function()
      local lspconfig = require("lspconfig")
      local cmp_nvim_lsp = require("cmp_nvim_lsp")

      -- Configure nvim-cmp to use LSP sources
      require("cmp").setup({
        sources = {
          { name = "nvim_lsp" },
        },
        -- (other cmp configurations...)
      })

      -- Function to attach LSP handlers (e.g., keymaps)
      local on_attach = function(client, bufnr)
        -- Example keymaps (you can customize these)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to definition" })
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr, desc = "Show documentation" })
        vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { buffer = bufnr, desc = "Format code" })
        vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, { buffer = bufnr, desc = "Code actions" })
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { buffer = bufnr, desc = "Previous diagnostic" })
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { buffer = bufnr, desc = "Next diagnostic" })

        -- Enable completion capabilities
        client.server_capabilities.documentFormattingProvider = true
        client.server_capabilities.documentRangeFormattingProvider = true
      end

      -- Configure LSP servers
      lspconfig.pyright.setup { on_attach = on_attach } -- Python
      lspconfig.clangd.setup { on_attach = on_attach } -- C and C++
      lspconfig.gopls.setup { on_attach = on_attach }   -- Go
      lspconfig.pylsp.setup { on_attach = on_attach }    -- Python (alternative to pyright)
      lspconfig.golangci_lint_ls.setup { on_attach = on_attach } -- Go linter
      lspconfig.helm_ls.setup { on_attach = on_attach }   -- Helm
      lspconfig.terraformls.setup { on_attach = on_attach } -- Terraform
      lspconfig.tflint.setup { on_attach = on_attach }    -- Terraform linter            

      -- You can also configure a general lspconfig setup that might work for C and C++
      -- if clangd is not your preferred choice, or in addition to it.
      -- Example for a more basic C/C++ setup (might require adjustments):
      -- lspconfig.ccls.setup {
      --   on_attach = on_attach,
      --   -- cmd = { "ccls" },
      --   -- init_options = { ... },
      -- }

      -- Configure diagnostics (optional)
      vim.diagnostic.config({
        virtual_text = false,
        signs = false,
        underline = false,
        update_in_insert = false,
        severity_sort = true,
      })
    end,
  },

  -- ... other plugins ...
}
