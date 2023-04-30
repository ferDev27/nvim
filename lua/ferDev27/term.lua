local status_ok, term = pcall(require, "toggleterm")
if not status_ok then
	return
end

term.setup({
	size = 67,
	--open_mapping = [[<c-\>]],
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = "1",
	start_in_insert = true,
	persist_size = true,
	direction = "vertical",
})
