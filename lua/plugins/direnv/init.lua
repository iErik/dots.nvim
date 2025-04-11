local config = {
  -- "buffer" direnv uses directory based on the
  -- current buffer. By default this is based around
  -- the 'FileType' autocmd.
  --
  -- "dir" direnv uses directory based on vim's cwd
  -- (see this with `:pwd`). By default this is based
  -- around the 'DirChanged' autocmd.
  type = "buffer", -- "buffer" | "dir"

  -- allows you to control the type = 'buffer'
  -- setup's autocmd options.
  buffer_setup = {
    autocmd_event = "BufEnter",
    autocmd_pattern = "*"
  },

  -- allows you to control the type = 'dir'
  -- setup's autocmd options.
  dir_setup = {
    autocmd_event = "DirChanged",
    autocmd_pattern = "*"
  },

  -- if false, loading environment from direnv into
  -- vim is done synchronously. This will block the
  -- UI, so if the direnv setup takes a while, you
  -- may want to look into setting this to true.
  --
  -- if true, vim will evaluate the direnv environment
  -- in the background. direnv.nvim will then fire
  -- various autocmds depending on how the evaluation
  -- went. See below for more detail here!
  async = false,

  hook = {
    -- message printed to the status line when direnv
    -- environment changes.
    msg = "status", -- "status" | "diff" | nil

    -- - 'status' - shows the output of 'direnv status'.
    -- - 'diff' - shows the diff of environment variables.
    -- - nil - disables the message entirely.
  },

  -- if non-nil, this option is called when direnv
  -- has finished
  on_direnv_finished = nil, -- nil | function () end

  on_direnv_finished_opts = {
   -- can be amended to include additional autocmd events
   -- from the list below
		pattern = { "DirenvReady", "DirenvNotFound" },
    -- can be a table of filetypes. the
    -- `on_direnv_finished` function will only be
    -- called if the buffer filetype is in this list
    filetype = nil,
    once = nil
  }
}

return {
  {
    --"actionshrimp/direnv.nvim",
    "direnv/direnv.vim",
    --opts = config
  }
}
