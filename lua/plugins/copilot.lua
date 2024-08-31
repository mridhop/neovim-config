return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  opts = {
    suggestion = { enabled = false },
    panel = { enabled = false },
  },
  config = function(_, opts)
    require("copilot").setup(opts)
    -- Disable Copilot by default
    vim.cmd("Copilot disable")
  end,
  keys = {
    {
      "<leader>tc",
      function()
        if require("copilot.client").is_disabled() then
          vim.cmd("Copilot enable")
          print("Copilot enabled")
        else
          vim.cmd("Copilot disable")
          print("Copilot disabled")
        end
      end,
      desc = "Toggle Copilot",
    },
  },
}
