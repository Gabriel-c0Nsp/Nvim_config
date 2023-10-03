local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  print('ERROR: Something wrong with treesitter plugin')
end

treesitter.setup {
  indent = {
    enable = true
  }
}
