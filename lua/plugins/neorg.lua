-- lazy.nvim spec
local M = {
  "nvim-neorg/neorg",
  ft = "norg",
  dependencies = {
    "luarocks.nvim",
    -- "nvim-treesitter/nvim-treesitter",
    -- "nvim-treesitter/nvim-treesitter-textobjects",
    -- "nvim-cmp",
    -- "nvim-lua/plenary.nvim",
  },
  lazy = false,
  ver = "*",
  config = true,
  cmd = "Neorg",
}
local modules = {
  ["core.summary"] = {},
  ["core.export"] = {},
  ["core.export.markdown"] = { config = { extensions = "all" } },
  ["core.presenter"] = { config = { zen_mode = "zen-mode" } },
  ["core.defaults"] = {},
  ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
  ["core.integrations.nvim-cmp"] = {},
  ["core.concealer"] = { config = { icon_preset = "basic", conceallevel = "2" } },
  ["core.keybinds"] = {
    -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
    config = {
      default_keybinds = true,
      -- neorg_leader = "<leader>n",
    },
  },
  ["core.tempus"] = {},
  ["core.journal"] = {
    config = {
      strategy = "flat",
      workspace = "notes",
    },
  },
  ["core.dirman"] = {
    config = {
      workspaces = {
        notes = "~/zed/neorg/notes",
      },
      default_workspace = "notes",
      index = "~/zed/neorg/notes/index.norg",
    },
  },
}
M.opts = {
  load = modules,
}
return M
