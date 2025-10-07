return {
  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
    },
    config = function()
      local cmp = require('cmp')
      
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'nvim_lsp_signature_help' },
          { name = 'buffer' },
          { name = 'path' },
        })
      })
    end,
  },
  
  -- LSP Configuration
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      
      -- Example: setup TypeScript/JavaScript LSP
      vim.lsp.config['ts_ls'] = {
        cmd = { 'typescript-language-server', '--stdio' },
        filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
        root_markers = { 'package.json', 'tsconfig.json', 'jsconfig.json' },
        capabilities = capabilities,
      }
      vim.lsp.enable('ts_ls')
      
      -- Add more language servers as needed
      -- Python LSP (pyright)
      vim.lsp.config['pyright'] = {
        cmd = { 'pyright-langserver', '--stdio' },
        filetypes = { 'python' },
        root_markers = { 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', 'Pipfile' },
        capabilities = capabilities,
      }
      vim.lsp.enable('pyright')
    end,
  },

  -- Prettier
  {
    'prettier/vim-prettier',
    build = 'yarn install --frozen-lockfile --production',
    ft = {
      'javascript',
      'typescript',
      'css',
      'scss',
      'json',
      'graphql',
      'markdown',
      'vue',
      'yaml',
      'html'
    },
  },
}
