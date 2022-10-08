local present, treesitter = pcall(require, "nvim-treesitter.configs")
if not present then
  return
end

treesitter.setup {
  ensure_installed = { "lua", "python" },
  highlight = {
    enable = true,
    use_languagetree = true
  },
  indent = true,
}
