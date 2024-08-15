-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

--[[ vim.g.rustaceanvim = {
  server = {
    default_settings = {
      -- rust-analyzer language server configuration
      ["rust-analyzer"] = {
        inlay_hints = {
          typeHints = true,
          chainingHints = true,
          parameterHints = true,
          maxLength = 100,
        },
      },
    },
  },
} ]]

--[[vim.api.nvim_create_autocmd("LspAttach", {
  callback = function()
    vim.lsp.inlay_hint.enable(true)
  end,
})]]

require("lspconfig").jdtls.setup({
  settings = {
    flags = {
      debounce_text_changes = 500,
    },
  },
})
