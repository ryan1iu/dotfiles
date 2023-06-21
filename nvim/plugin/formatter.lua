require("formatter").setup {
  filetype = {
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}
