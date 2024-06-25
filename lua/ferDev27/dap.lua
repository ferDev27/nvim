local ok_dap, dap = pcall(require, "dap")
if not ok_dap then
	return
end

local ok_dapui, dapui = pcall(require, "dapui")
if not ok_dapui then
	return
end

local mason_registry = require("mason-registry");

dapui.setup()

dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	dapui.close()
end

-- C#
local netcoredbg = mason_registry.get_package("netcoredbg")
local extension_path = netcoredbg:get_install_path() .. "/libexec/"
local netcoredbg_path = extension_path .. "netcoredbg/netcoredbg"

dap.adapters.coreclr = {
  type = 'executable',
  command = netcoredbg_path,
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll ', vim.fn.expand('%:p:h') .. '/bin/Debug/' , 'file')
    end,
  },
}
