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
        virtualtext = {
          auto_trigger_ft = { "*" },
          keymap = {
            accept     = "<A-a>",
            accept_line = "<A-l>",
            next       = "<A-]>",
            prev       = "<A-[>",
            dismiss    = "<A-e>",
          },
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
  },
  {
    "coder/claudecode.nvim",
    dependencies = { "folke/snacks.nvim" },
    opts = {
      terminal = {
        split_side = "right",
        split_width_percentage = 0.35,
        provider = "native",
      },
    },
    config = true,
    keys = {
      { "<leader>cc", "<cmd>ClaudeCode<cr>",            desc = "Toggle Claude" },
      { "<leader>cf", "<cmd>ClaudeCodeFocus<cr>",       desc = "Focus Claude" },
      { "<leader>cr", "<cmd>ClaudeCode --resume<cr>",   desc = "Resume Claude" },
      { "<leader>cb", "<cmd>ClaudeCodeAdd %<cr>",       desc = "Add buffer to Claude" },
      { "<leader>cs", "<cmd>ClaudeCodeSend<cr>",        mode = "v", desc = "Send selection to Claude" },
      { "<leader>ca", "<cmd>ClaudeCodeDiffAccept<cr>",  desc = "Accept diff" },
      { "<leader>cd", "<cmd>ClaudeCodeDiffDeny<cr>",    desc = "Deny diff" },
    },
  },
}
