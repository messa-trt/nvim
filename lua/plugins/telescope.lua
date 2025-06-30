return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      local telescope = require('telescope')
      local builtin = require('telescope.builtin')

      -- telescope setup
      telescope.setup({
        defaults = {
          prompt_prefix = "  ",
          selection_caret = "> ",
          path_display = { "smart" },
          file_ignore_patterns = { "node_modules" },
        },
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
          },
        },
      })
      telescope.load_extension('fzf')

      -- keymaps for telescope
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files" })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Live grep" })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Buffers" })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Help tags" })
      vim.keymap.set('n', '<leader>ft', builtin.treesitter, { desc = "Treesitter symbols" })

      -- LSP-specific
      vim.keymap.set('n', '<leader>lr', builtin.lsp_references, { desc = "LSP References" })
      vim.keymap.set('n', '<leader>ld', builtin.lsp_definitions, { desc = "LSP Definitions" })
      vim.keymap.set('n', '<leader>lt', builtin.lsp_type_definitions, { desc = "LSP Type Definitions" })
      vim.keymap.set('n', '<leader>li', builtin.lsp_implementations, { desc = "LSP Implementations" })
      vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, { desc = "Document Symbols" })
      vim.keymap.set('n', '<leader>lw', builtin.lsp_dynamic_workspace_symbols, { desc = "Workspace Symbols" })
      vim.keymap.set('n', '<leader>lc', builtin.lsp_incoming_calls, { desc = "Incoming Calls" })
      vim.keymap.set('n', '<leader>lo', builtin.lsp_outgoing_calls, { desc = "Outgoing Calls" })
    end,
  }
}
