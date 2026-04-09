-- Using Rustecean.nvim
--
-- local lspconfig = require('lspconfig')

-- lspconfig.rust_analyzer.setup {
--   on_attach = function(bufnr)
--         vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
--   end,
--   settings = {
--     ['rust-analyzer'] = {
--       imports = {
--         granularity = {
--           group = "module",
--         },
--         prefix = "self",
--       },
--       cargo = {
--         buildScripts = {
--           enable = true,
--         },
--       },
--       procMacro = {
--         enable = true
--       },
--       checkOnSave = {
--         enable = true
--       },
--       check = {
--         command = "clippy"
--       }
--     },
--   },
-- }

vim.g.rustaceanvim = {
  -- Plugin configuration
  -- tools = {
  -- },
  -- LSP configuration
  server = {
    on_attach = function(bufnr)
      -- vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
    end,
    default_settings = {
      -- rust-analyzer language server configuration
      ['rust-analyzer'] = {
        imports = {
          granularity = {
            group = "module",
          },
          prefix = "self",
        },
        cargo = {
          buildScripts = {
            enable = true,
          },
        },
        procMacro = {
          enable = true
        },
        checkOnSave = {
          enable = true
        },
        check = {
          command = "clippy"
        }
      },
    },
  },
  -- DAP configuration
  -- dap = {
  -- },
}
