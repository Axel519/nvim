local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  require("nvim-treesitter.configs").setup {
    sync_install = false,
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python" },
    highlight = { 
      enable = true,
      disable = { "" },
      additional_vim_regex_highlighting = true,
    },
    rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil,
    },
    indent = { enable = true },
  }
end

return M
