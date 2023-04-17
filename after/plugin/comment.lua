require('Comment').setup({
  toggler = {
    ---Line-comment toggle keymap
    line = 'gcl',
    ---Block-comment toggle keymap
    block = 'gcb',
  },
  ---LHS of operator-pending mappings in NORMAL and VISUAL mode
  opleader = {
    ---Line-comment keymap
    line = 'gcl',
    ---Block-comment keymap
    block = 'gcb',
  },
})
