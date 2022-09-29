local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  return
end

local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
  local float = Terminal:new({ direction = "float" })
  return float:toggle()
end

local mappings = {
    q = { ":q!<cr>", "Quit" },
    Q = { ":wq<cr>", "Save & Quit" },
    w = { ":w<cr>", "Save" },
    x = { ":bdelete<cr>", "Close" },
    E = { ":e ~/.config/nvim/init.lua<cr>", "Edit config" },

    f = {
    name = "Telescope",
        f = { ":Telescope find_files<cr>", "Telescope Find Files" }, 
        g = { ":Telescope live_grep<cr>", "Telescope Live Grep" },
        r = { ":Telescope oldfiles<cr>", "Telescope Recent Files" },
        b = { ":Telescope file_browser<cr>", "Telescope File Browser" },
    },
    
    n = {
    name = "Nvim Tree",
        t = { ":NvimTreeToggle<CR>", "Toggle Nvim Tree"},
        f = { ":NvimTreeFindFile<CR>", "Find File Nvim Tree"},
    }, 
    
    t = {
    name = "Terminal",
        v = { ":ToggleTerm<cr>", "Vertical Split Terminal" },
        f = { toggle_float, "Floating Terminal" },
    },

    l = {
    name = "LSP",
        c = {":LspInfo<cr>", "Connected Language Servers"},
        A = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', "Add workspace folder"},
        R = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', "Remove workspace folder"},
        D = {'<cmd>lua vim.lsp.buf.declaration()<CR>', "Go To Declaration"},
        d = {'<cmd>lua vim.lsp.buf.definition()<CR>', "Go To Definition" },
        i = {'<cmd>lua vim.lsp.buf.implementation()<CR>', "Go To Implementation" },
        n = {'<cmd>lua vim.lsp.buf.rename()<CR>', "Rename"},
        K = {'<cmd>lua vim.lsp.buf.hover()<CR>', "Hover"},
        r = {'<cmd>lua vim.lsp.buf.references()<CR>', "Show References"},
        a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', "Code actions"},
        e = {'<cmd>lua vim.diagnostic.open_float()<CR>', "Show line diagnostics"},
        q = {'<cmd>lua vim.diagnostic.setloclist()<CR>', "Show loclist"}
    },

    r = {
    name = "REST Client",
        r = {'', 'Run'},
        l = {'', 'Run Last'}
        
    },
} 

local opts = { prefix = '<leader>' }
wk.register(mappings, opts)
