lvim.builtin.which_key.mappings["S"]= {
  name = "Session",
  c = { "<cmd>lua require('persistence').load()<cr>", "Restore last session for current dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
}
lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  v = { "<cmd>2ToggleTerm size=60 direction=vertical<cr>", "Split vertical" },
  h = { "<cmd>2ToggleTerm size=10 direction=horizontal<cr>", "Split horizontal" },
}
lvim.builtin.which_key.mappings["n"] = {
  name ="DiagnosticFloat",
  n = { "<cmd>lua vim.diagnostic.open_float(nil, {focus=false, scope='line'})<cr>", "Toggle diagnostic float" },
}

-- lvim.builtin.which_key.mappings["C"] = {
--   name = "Python",
--   c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose env" }
-- }

lvim.builtin.which_key.mappings["a"] = {
  name = "+AI",
  c = { "<cmd>ClaudeCode<cr>", "Toggle Claude" },
  f = { "<cmd>ClaudeCodeFocus<cr>", "Focus Claude" },
  r = { "<cmd>ClaudeCode --resume<cr>", "Resume Claude" },
  b = { "<cmd>ClaudeCodeAdd %<cr>", "Add buffer to Claude" },
  a = { "<cmd>ClaudeCodeDiffAccept<cr>", "Accept diff" },
  d = { "<cmd>ClaudeCodeDiffDeny<cr>", "Deny diff" },
  m = { "<cmd>ClaudeCodeSelectModel<cr>", "Select model" },
}
lvim.builtin.which_key.vmappings["a"] = {
  name = "+AI",
  s = { "<cmd>ClaudeCodeSend<cr>", "Send selection to Claude" },
}
-- Minuet manual completion trigger (insert mode)
vim.keymap.set("i", "<C-y>", function()
  require("minuet").complete()
end, { desc = "Minuet AI complete" })
