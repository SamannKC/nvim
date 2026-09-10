local gs = require("gitsigns")

vim.keymap.set("n", "]h", gs.next_hunk)
vim.keymap.set("n", "[h", gs.prev_hunk)

vim.keymap.set("n", "<leader>ls", gs.stage_hunk)
vim.keymap.set("n", "<leader>lr", gs.reset_hunk)
vim.keymap.set("n", "<leader>lp", gs.preview_hunk)
vim.keymap.set("n", "<leader>lb", gs.blame_line)
vim.keymap.set("n", "<leader>ld", gs.diffthis)
