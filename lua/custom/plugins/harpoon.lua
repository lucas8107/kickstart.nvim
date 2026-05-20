vim.pack.add {{ src = 'https://github.com/ThePrimeagen/harpoon', version = 'harpoon2' }}

-- config harpoon
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup({
settings = {
save_on_toggle = true
}
})
-- REQUIRED
--
vim.keymap.set("n", "<C-a>", function() harpoon:list():append() end)
vim.keymap.set("n", "<C-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = 'Harpoon 1' })
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = 'Harpoon 2' })
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = 'Harpoon 3' })
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = 'Harpoon 4' })
