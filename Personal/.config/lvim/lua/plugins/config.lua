lvim.plugins = {
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false,   -- This plugin is already lazy
  },
  {
    "stevearc/dressing.nvim"
  },
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("codecompanion").setup({
        strategies = {
          chat = { adapter = "ollama" },
          inline = { adapter = "ollama" },
        },
        adapters = {
                  ollama = function()
                    return require("codecompanion.adapters").extend("ollama", {
                      env = {
                        url = "http://127.0.0.1:11434",
                      },
                      schema = {
                        model = {
                          default = "qwen3.5",
                        },
                      },
                    })
                  end,
                },
      })
    end,
  },
  {
    "milanglacier/minuet-ai.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("minuet").setup({
        provider = "claude",
        provider_options = {
          claude = {
            model = "claude-haiku-4-5-20251001",
            stream = true,
            max_tokens = 512,
          },
        },
        cmp = {
          enable_auto_complete = false,
        },
      })
    end,
  },
  {
    "cordx56/rustowl",
    dependencies = { "neovim/nvim-lspconfig" }
  },
  {
    "azorng/goose.nvim",
    config = function()
      require("goose").setup({})
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MeanderingProgrammer/render-markdown.nvim",
    },
  }
}
