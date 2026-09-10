local ts = require("nvim-treesitter")

ts.setup()

ts.install({
	"help",
	"javascript",
	"c",
	"python",
	"lua",
	"rust",
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "c", "javascript", "python", "lua", "rust" },
	callback = function()
		vim.treesitter.start()
	end,
})
