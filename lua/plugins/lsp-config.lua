return {
  {
    "williamboman/mason.nvim",
    config = function()
      -- setting mason
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      -- setting mason lsp config
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "rust_analyzer", "tsserver" },
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- setting up lsp clients
      require("lspconfig").lua_ls.setup {}
      require("lspconfig").tsserver.setup {}

      -- setting up lsp clients keybinds
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
