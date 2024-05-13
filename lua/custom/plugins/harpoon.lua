return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup {}
    -- basic telescope configuration
    -- require('telescope.make_entry').gen_from_file(),
    local conf = require('telescope.config').values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
          .new({}, {
            prompt_title = 'Harpoon',
            finder = require('telescope.finders').new_table {
              results = file_paths,
              entry_maker = require('telescope.make_entry').gen_from_file(),
            },
            previewer = conf.file_previewer {},
            sorter = conf.generic_sorter {},
          })
          :find()
    end

    vim.keymap.set('n', '<leader>v', function()
      harpoon:list():add()
    end, { desc = '[v] Add file to harpoon' })
    vim.keymap.set('n', '<leader>R', function()
      harpoon:list():remove()
    end, { desc = '[R]emove file from harpoon' })
    vim.keymap.set('n', '<leader>f', function()
      toggle_telescope(harpoon:list())
    end, { desc = '[f] Open harpoon window' })
  end,
}
