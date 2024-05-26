local eventHandlers = {
  {
    event = "after_render",
    handler = function (state)
      if
        state.current_position == "left" or
        state.current_position == "right"
      then
        vim.api.nvim_win_call(state.winid, function ()
          local str = require("neo-tree.ui.selector").get()

          if str then
            _G.__cached_neo_tree_selector = str
          end
        end)
      end

    end
  }
}

return eventHandlers
