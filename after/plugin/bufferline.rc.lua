local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    separator_style = 'slant',
    always_show_bufferline = true,
    show_buffer_close_icons = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#073642',
      bg = '#002b36',
    },
    separator_selected = {
      fg = '#073642',
    },
    background = {
      fg = '#002b36',
      bg = '#002b36'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
    },
    fill = {
      bg = '#073642'
    }
  },
})

vim.keymap.set('n', '<C-]>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<C-[>', '<Cmd>BufferLineCyclePrev<CR>', {})
