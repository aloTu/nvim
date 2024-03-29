return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- keys = {
    --   { "<leader>be", false },
    --   { "<leader>e", false },
    --   { "<A-m>", "<cmd>Neotree toggle reveal_force_cwd<cr>" },
    -- },
    keys = function()
      return {
        {
          "<A-m>",
          function()
            require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
          end,
          desc = "Explorer NeoTree (Root Dir)",
        },
        {
          "<A-S-m>",
          function()
            require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
          end,
          desc = "Explorer NeoTree (cwd)",
        },
        {
          "<leader>ge",
          "<cmd>Neotree toggle git_status<cr>",
          desc = "Git Explorer",
        },
      }
    end,
  },
}
