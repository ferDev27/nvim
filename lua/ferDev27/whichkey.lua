local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  return
end

local mappings = {
    q = { ":q!<cr>", "Quit" },
    Q = { ":wq<cr>", "Save & Quit" },
    w = { ":w<cr>", "Save" },
    E = { ":e ~/.config/nvim/init.lua<cr>", "Edit config" },
    r = {"", "Quick Run"},

    b = {
    name = "Buffers",
        b = { ":Telescope buffers<cr>", "Show Buffers" },
        n = { ":bnext<cr>", "Next Buffer" },
        p = { ":bprevious<cr>", "Previous Buffer" },
        c = { ":bdelete<cr>", "Close Buffer" },
    },

    f = {
    name = "Telescope",
        f = { ":Telescope find_files<cr>", "Find Files" }, 
        g = { ":Telescope live_grep<cr>", "Live Grep" },
        r = { ":Telescope oldfiles<cr>", "Recent Files" },
        b = { ":Telescope file_browser<cr>", "File Browser" },
    },
    
    n = {
    name = "Nvim Tree",
        t = { ":NvimTreeToggle<CR>", "Toggle Nvim Tree"},
        f = { ":NvimTreeFindFile<CR>", "Find File Nvim Tree"},
    }, 
    
    t = {
    name = "Terminal",
        v = { ":ToggleTerm<cr>", "Vertical Split Terminal" },
        f = { ":ToggleTerm direction=float<cr>", "Floating Terminal" },
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
} 

local opts = { prefix = '<leader>' }
wk.register(mappings, opts)
