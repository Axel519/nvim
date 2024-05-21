local M = {
  "folke/which-key.nvim",
}

function M.config()
  local mappings = {
    q = { "<cmd>confirm q<CR>", "Quit" },
    h = { "<cmd>nohlsearch<CR>", "NOHL" },
    [";"] = { "<cmd>Alpha<CR>", "Dashboard" },
    v = { "<cmd>vsplit<CR>", "Split" },
    b = {
      name = "Buffers",
      j = { "<cmd>BufferLinePick<cr>", "Jump" },
      f = { "<cmd>Telescope buffers previewer=false<cr>", "Find" },
      b = { "<cmd>BufferLineCyclePrev<cr>", "Previous" },
      n = { "<cmd>BufferLineCycleNext<cr>", "Next" },
      W = { "<cmd>noautocmd w<cr>", "Save without formatting (noautocmd)" },
      e = {
        "<cmd>BufferLinePickClose<cr>",
        "Pick which buffer to close",
      },
      h = { "<cmd>BufferLineCloseLeft<cr>", "Close all to the left" },
      l = {
        "<cmd>BufferLineCloseRight<cr>",
        "Close all to the right",
      },
      D = {
        "<cmd>BufferLineSortByDirectory<cr>",
        "Sort by directory",
      },
      L = {
        "<cmd>BufferLineSortByExtension<cr>",
        "Sort by language",
      },
    },
    d = { 
      name = "Debug",
        t = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
        b = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
        c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
        C = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
        d = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
        g = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
        i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
        o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
        u = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
        p = { "<cmd>lua require'dap'.pause()<cr>", "Pause" },
        r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
        s = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
        q = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
        U = { "<cmd>lua require'dapui'.toggle({reset = true})<cr>", "Toggle UI" },
    },
    f = { name = "Find" },
    g = { name = "Git" },
    l = { name = "LSP" },
    p = { name = "Plugins" },
    t = { name = "Test" },
    a = {
      name = "Tab",
      n = { "<cmd>$tabnew<cr>", "New Empty Tab" },
      N = { "<cmd>tabnew %<cr>", "New Tab" },
      o = { "<cmd>tabonly<cr>", "Only" },
      h = { "<cmd>-tabmove<cr>", "Move Left" },
      l = { "<cmd>+tabmove<cr>", "Move Right" },
    },
    T = { name = "Treesitter" },
  }

  local which_key = require "which-key"
  which_key.setup {
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      presets = {
        operators = false,
        motions = false,
        text_objects = false,
        windows = false,
        nav = false,
        z = false,
        g = false,
      },
    },
    window = {
      border = "rounded",
      position = "bottom",
      padding = { 2, 2, 2, 2 },
    },
    ignore_missing = true,
    show_help = false,
    show_keys = false,
    disable = {
      buftypes = {},
      filetypes = { "TelescopePrompt" },
    },
  }

  local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
  }

  which_key.register(mappings, opts)
end

return M
