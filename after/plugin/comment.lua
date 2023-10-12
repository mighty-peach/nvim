require('Comment').setup({
  toggler = {
    ---Line-comment toggle keymap
    line = '<leader>gc',
    ---Block-comment toggle keymap
    block = '<leader>gC',
  },
  ---LHS of operator-pending mappings in NORMAL and VISUAL mode
  opleader = {
    ---Line-comment keymap
    line = '<leader>gc',
    ---Block-comment keymap
    block = '<leader>gC',
  },
})
