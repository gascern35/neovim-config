local M = {
  "nvim-telescope/telescope.nvim",
  dependencies = { { "nvim-lua/plenary.nvim" } },
}


function M.config()
  
  -- Telescope --
  local builtin = require('telescope.builtin')
  vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
  -- vim.keymap.set('n', '<C-p>', builtin.git_files, {})
  vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
  end)
  vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

  require("telescope").setup {
    defaults = {
      entry_prefix = "   ",
      initial_mode = "insert",
      selection_strategy = "reset",
      path_display = { "smart" },
      color_devicons = true,
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
        "--glob=!.git/",
      },
    },
    }
end

return M
