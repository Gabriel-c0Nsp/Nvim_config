return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    lazy = false,
    config = function()
      local harpoon = require('harpoon')
      harpoon:setup({})

      -- File Operations
      vim.keymap.set('n', '<leader>ha', function() harpoon:list():add() end, { desc = 'Harpoon: Add current file' })
      vim.keymap.set('n', '<leader>hh', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Harpoon: List all Harpoon files' })

      -- File Selection
      vim.keymap.set('n', '<leader>1', function() harpoon:list():select(1) end, { desc = 'Harpoon: Select Harpoon file 1'})
      vim.keymap.set('n', '<leader>2', function() harpoon:list():select(2) end, { desc = 'Harpoon: Select Harpoon file 2'})
      vim.keymap.set('n', '<leader>3', function() harpoon:list():select(3) end, { desc = 'Harpoon: Select Harpoon file 3'})
      vim.keymap.set('n', '<leader>4', function() harpoon:list():select(4) end, { desc = 'Harpoon: Select Harpoon file 4'})
      vim.keymap.set('n', '<leader>5', function() harpoon:list():select(5) end, { desc = 'Harpoon: Select Harpoon file 5'})
      vim.keymap.set('n', '<leader>6', function() harpoon:list():select(6) end, { desc = 'Harpoon: Select Harpoon file 6'})
      vim.keymap.set('n', '<leader>7', function() harpoon:list():select(7) end, { desc = 'Harpoon: Select Harpoon file 7'})
      vim.keymap.set('n', '<leader>8', function() harpoon:list():select(8) end, { desc = 'Harpoon: Select Harpoon file 8'})
      vim.keymap.set('n', '<leader>9', function() harpoon:list():select(9) end, { desc = 'Harpoon: Select Harpoon file 9'})

      vim.keymap.set('n', '<leader>hd', function() harpoon:list():clear() end, { desc = 'Harpoon: Clear all Harpoon files' })
      vim.keymap.set('n', '<leader>h1', function() harpoon:list():removeAt(1) end, { desc = 'Harpoon: Clear Harpoon file 1' })
      vim.keymap.set('n', '<leader>h2', function() harpoon:list():removeAt(2) end, { desc = 'Harpoon: Clear Harpoon file 2' })
      vim.keymap.set('n', '<leader>h3', function() harpoon:list():removeAt(3) end, { desc = 'Harpoon: Clear Harpoon file 3' })
      vim.keymap.set('n', '<leader>h4', function() harpoon:list():removeAt(4) end, { desc = 'Harpoon: Clear Harpoon file 4' })
      vim.keymap.set('n', '<leader>h5', function() harpoon:list():removeAt(5) end, { desc = 'Harpoon: Clear Harpoon file 5' })
      vim.keymap.set('n', '<leader>h6', function() harpoon:list():removeAt(6) end, { desc = 'Harpoon: Clear Harpoon file 6' })
      vim.keymap.set('n', '<leader>h7', function() harpoon:list():removeAt(7) end, { desc = 'Harpoon: Clear Harpoon file 7' })
      vim.keymap.set('n', '<leader>h8', function() harpoon:list():removeAt(8) end, { desc = 'Harpoon: Clear Harpoon file 8' })
      vim.keymap.set('n', '<leader>h9', function() harpoon:list():removeAt(9) end, { desc = 'Harpoon: Clear Harpoon file 9' })
    end,
  },
}
