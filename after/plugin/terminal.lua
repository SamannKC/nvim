local Terminal = require("toggleterm.terminal").Terminal

local term = Terminal:new({
	direction = "float",
})

local function toggle_terminal()
	term:toggle()
end

vim.keymap.set({ "n", "t" }, "<leader>t", toggle_terminal)

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
