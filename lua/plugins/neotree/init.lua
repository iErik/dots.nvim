local mappings = require "plugins.neotree.mappings"
local eventHandlers = require "plugins.neotree.events"

local componentConfigs = {
  container = {
    enable_character_fade = true
  },

  indent = {
    indent_size = 2,
    padding = 1,
    with_markers = true,
    indent_marker = "|",
    last_indent_marker = "└",
    highlight = "NeoTreeIndentMarker",
    with_expanders = nil,
    expander_collapsed = "",
    expander_expanded = "",
    expander_highlight = "NeoTreeExpander"
  },

  icon = {
    folder_closed = "",
    folder_open = "",
    folder_empty = "󰜌",
    default = "*",
    highlight = "NeoTreeFileIcon"
  },

  modified = {
    symbol = "[+]",
    highlight = "NeoTreeModified"
  },

  name = {
    trailing_slash = false,
    use_git_status_colors = true,
    highlight = "NeoTreeFileName"
  },

  git_status = {
    symbols = {
      -- Change type
      added     = "",
      modified  = "",
      deleted   = "✖",
      renamed   = "󰁕",
      -- Status type
      untracked = "",
      ignored   = "",
      unstaged  = "󰄱",
      staged    = "",
      conflict  = "",
    }
  },

  file_size = {
    enabled = true,
    required_width = 64
  },

  type = {
    enabled = true,
    required_width = 122
  },

  last_modified = {
    enabled = true,
    required_width = 88
  },

  created = {
    enabled = true,
    required_width = 110
  },

  symlink_target = {
    enabled = false
  }
}

local window = {
  position = "float",
  width = 40,
  mapping_options = { noremap = true, nowait = true },
  mappings = mappings
}

local buffers = {
  window = {
    mappings = {
      ["D"] = "buffer_delete",
      ["H"] = ""
    }
  }
}

local config = {
  close_if_last_window = true,
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  open_files_do_not_replace_types = {
    "terminal",
    "trouble",
    "qf"
  },

  sort_case_insensitive = false,
  sort_function = nil,

  event_handlers = eventHandlers,
  default_component_configs = componentConfigs,
  window = window,
  buffers = buffers
}

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-tree/nvim-web-devicons" },
    { "MunifTanjim/nui.nvim" }
  },

  config = function ()
    require("neo-tree").setup(config)
  end
}
