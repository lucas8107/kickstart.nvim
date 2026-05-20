vim.pack.add { 'https://github.com/nvim-telescope/telescope-file-browser.nvim' }

-- Register the extension with telescope after it loads
vim.api.nvim_create_autocmd('User', {
  pattern = 'PackLoaded',
  once = true,
  callback = function()
    local ok, telescope = pcall(require, 'telescope')
    if ok then
      telescope.load_extension 'file_browser'
    end
  end,
})
