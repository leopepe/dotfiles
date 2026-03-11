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
  c = { "<cmd>CodeCompanionChat Toggle<cr>", "Toggle chat" },
  a = { "<cmd>CodeCompanionActions<cr>", "Actions" },
  i = { "<cmd>CodeCompanion<cr>", "Inline assistant" },
  n = { "<cmd>CodeCompanionChat<cr>", "New chat" },
}
lvim.builtin.which_key.vmappings["a"] = {
  name = "+AI",
  a = { "<cmd>CodeCompanionChat Add<cr>", "Add selection to chat" },
  i = { "<cmd>CodeCompanion<cr>", "Inline assistant" },
}
-- Minuet manual completion trigger (insert mode)
vim.keymap.set("i", "<C-y>", function()
  require("minuet").complete()
end, { desc = "Minuet AI complete" })
