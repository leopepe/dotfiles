lvim.builtin.treesitter.ensure_installed = {
  "python",
}

-- require('lspconfig').ruff.setup {
--   init_options = {
--     settings = {
--       logLevel = 'debug',
--     }
--   }
-- }

-- Optional: Only required if you need to update the language server settings
-- vim.lsp.config('ty', {
--   init_options = {
--     settings = {
--       -- ty language server settings go here
--     }
--   }
-- })

vim.lsp.config('ruff', {
  init_options = {
    settings = {
      logLevel = 'debug',
    }
  }
})

-- Required: Enable the language server
vim.lsp.enable('ty')
vim.lsp.enable('ruff')
-- add `pyright` to `skipped_servers` list
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- remove `jedi_language_server` from `skipped_servers` list
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "ty"
end, lvim.lsp.automatic_configuration.skipped_servers)
