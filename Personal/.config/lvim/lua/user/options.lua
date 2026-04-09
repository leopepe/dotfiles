lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.nvimtree.active = true
vim.diagnostic.config(
  {
    virtual_text = true,
    float = {
      true,
      scope = "cursor"
    }
  }
)
-- safe way to load telescope extensions
lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "project")
  -- any other extensions loading
end

lvim.autocommands = {
    {
        "CursorHold",
        {
            pattern = "*",
            callback = function()
              for _, winid in pairs(vim.api.nvim_tabpage_list_wins(0)) do
                  if vim.api.nvim_win_get_config(winid).zindex then
                      return
                  end
              end
              vim.diagnostic.open_float({
                  scope = "cursor",
                  focusable = false,
                  close_events = {
                      "CursorMoved",
                      "CursorMovedI",
                      "BufHidden",
                      "InsertCharPre",
                      "WinLeave",
                  },
              })
            end
        }
    },
}
lvim.keys.normal_mode["nn"] = "<cmd>lua vim.diagnostic.open_float(nil, {focus=false, scope='line'})<cr>"

-- Register minuet as a cmp source for AI completions
table.insert(lvim.builtin.cmp.sources, { name = "minuet" })
