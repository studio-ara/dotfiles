-- [[ Configure Treesitter ]]
require('nvim-treesitter.configs').setup {
  ensure_installed = { 
    'lua', 'python','regex', 'bash', 'markdown', 'markdown_inline', 'sql', 'vimdoc', 'javascript'
  },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
}

