-- Explore remap.
vim.keymap.set("n", "<leader>v", vim.cmd.Ex)

-- Undotree toggle.
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Vim Fugitive status remap.
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- Highlight + move remap.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Search terms stay in middle of screen.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy to clipboard outside of nvim.
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Make script executable remap.
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Source file remap.
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- Copilot tab remap.
vim.g.copilot_no_tab_map = true
vim.keymap.set("i", "<C-g>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
