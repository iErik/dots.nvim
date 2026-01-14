-- ESLint integration via LSP
-- Uses eslint-lsp which can be installed via Mason: :MasonInstall eslint-lsp

--[[
local filetypes = {
  'javascript',
  'javascriptreact',
  'javascript.jsx',
  'typescript',
  'typescriptreact',
  'typescript.tsx',
  'vue',
  'svelte',
  'astro',
  'html',
}

local function setup_eslint()
  vim.lsp.enable('eslint')
  vim.lsp.config('eslint', {
    filetypes = filetypes,
    settings = {
      -- Customize ESLint behavior
      codeAction = {
        disableRuleComment = {
          enable = true,
          location = 'separateLine',
        },
        showDocumentation = {
          enable = true,
        },
      },
      codeActionOnSave = {
        enable = false,
        mode = 'all',
      },
      experimental = {
        useFlatConfig = false,
      },
      format = true,
      nodePath = '',
      onIgnoredFiles = 'off',
      problems = {
        shortenToSingleLine = false,
      },
      quiet = false,
      rulesCustomizations = {},
      run = 'onType',
      validate = 'on',
      workingDirectory = {
        mode = 'location',
      },
    },
    on_attach = function(client, bufnr)
      -- Create command to fix all ESLint issues in the buffer
      vim.api.nvim_buf_create_user_command(bufnr, 'EslintFixAll', function()
        vim.lsp.buf.code_action({
          context = {
            only = { 'source.fixAll.eslint' },
            diagnostics = {},
          },
          apply = true,
        })
      end, { desc = 'Fix all ESLint issues' })
    end,
  })


  -- Optional: Auto-fix on save
  -- Uncomment the following to enable auto-fix on save
  --[[
  vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = { '*.js', '*.jsx', '*.ts', '*.tsx', '*.vue', '*.svelte' },
    callback = function()
      vim.lsp.buf.code_action({
        context = {
          only = { 'source.fixAll.eslint' },
          diagnostics = {},
        },
        apply = true,
      })
    end,
  })
end
--]]

return {
  --{
    --'neovim/nvim-lspconfig',
    --lazy = false,
    --config = setup_eslint,
  --},
  {
    'esmuellert/nvim-eslint',
    config = function()
      require('nvim-eslint').setup({})
    end,
  }
}
