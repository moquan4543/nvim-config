return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  config = function()
    vim.keymap.set("n", "<leader-C-s>", ":MarkdownPreview<CR>")
  end,
        
  ft = { "markdown" },
}
