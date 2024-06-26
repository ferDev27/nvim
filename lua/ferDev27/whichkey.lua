local status_ok, wk = pcall(require, "which-key")
if not status_ok then
	return
end

local mappings = {
	s = { ":w<CR>", "Save changes" },
	q = { ":wq!<CR>", "Save and quit" },
	Q = { ":q!<CR>", "Force quit" },
	b = {
		name = "Buffers",
		b = { ":Telescope buffers<cr>", "Show Buffers" },
		n = { ":bnext<cr>", "Next Buffer" },
		p = { ":bprevious<cr>", "Previous Buffer" },
		k = { ":bdelete!<cr>", "Kill Buffer" },
	},

	n = {
		name = "Null-ls",
		f = { ":lua vim.lsp.buf.format()<cr>", "Format" },
	},

	p = {
		name = "Preview",
		m = { ":MarkdownPreview<cr>", "Markdown" },
	},

	f = {
		name = "Telescope",
		f = { ":Telescope find_files<cr>", "Find Files" },
		g = { ":Telescope live_grep<cr>", "Live Grep" },
		r = { ":Telescope oldfiles<cr>", "Recent Files" },
		b = { ":Telescope file_browser<cr>", "File browser" },
	},

	t = {
		name = "Neotree",
		t = { ":Neotree toggle<CR>", "Toggle Neotree" },
		b = { ":Neotree toggle buffers<CR>", "Buffers Neotree" },
	},

	o = {
		name = "Open",
		t = {
			name = "Terminal",
			v = { ":ToggleTerm<cr>", "Vertical Split Terminal" },
			s = { ":ToggleTerm direction=horizontal size=10<cr>", "Horizontal Split Terminal" },
			f = { ":ToggleTerm direction=float<cr>", "Floating Terminal" },
		},
	},

	w = {
		name = "Window",
		v = { ":vsp<cr>", "Vertical window" },
		s = { ":sp<cr>", "Horizontal window" },
		c = { ":q<cr>", "Close window" },
		w = { "<C-w>w<cr>", "Switch window" },
	},

	l = {
		name = "LSP",
		c = { ":LspInfo<cr>", "Connected Language Servers" },
		A = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "Add workspace folder" },
		R = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "Remove workspace folder" },
		D = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Go To Declaration" },
		d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Go To Definition" },
		i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Go To Implementation" },
		n = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
		K = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Hover" },
		r = { "<cmd>lua vim.lsp.buf.references()<CR>", "Show References" },
		a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code actions" },
		e = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Show line diagnostics" },
		q = { "<cmd>lua vim.diagnostic.setloclist()<CR>", "Show loclist" },
	},

	m = {
		name = "Mason",
		m = { ":Mason<CR>", "Main menu" },
		u = { ":MasonUpdate<CR>", "Update mason" },
	},

	d = {
		name = "Debug",
		c = { ":DapContinue<CR>", "Continue" },
		b = { ":DapToggleBreakpoint<CR>", "Toggle breakpoint" },
		o = { ":DapStepOver<CR>", "Step over" },
		i = { ":DapStepInto<CR>", "Step into" },
		r = { ":DapToggleRepl<CR>", "Open builtin REPL" },
		x = { ":DapTerminate<CR>", "Terminate" },
	},
}

local opts = { prefix = "<leader>" }
wk.register(mappings, opts)
