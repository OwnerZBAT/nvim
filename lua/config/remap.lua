
-- [[ Basic Keymaps ]]
-- Create a new tab
vim.keymap.set("n", "<leader>n", ":tabnew <bar> :Ex<Enter>", { desc="Open [n]ew Tab" })
-- Switch between tabs shortcut
vim.keymap.set("n", "<C-m>", vim.cmd.tabn, { desc="Goto the next tab"})
vim.keymap.set("n", "<C-n>", vim.cmd.tabN, { desc="Goto the previous tab"})

-- Open File Explorer
vim.keymap.set("n", "<leader>o", vim.cmd.Ex, { desc="[O]pen File Explorer" })


-- Move lines up and down in visual mode "V" by pressing J or K (must hold shift)
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")

-- makes its so that the cursor stays at the beginning when using <shift>j
vim.keymap.set("n", "J", "mzJ`z")
-- Makes it so that the cursor stays in the middle of the sceen while using <C-d> or <C-u>
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Makes it so that the cursor stays in the middle when using search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- pastes text witout copying the text replaced in the clipboard
vim.keymap.set("x", "<leader>p", [["_dP]], { desc="[p]astes/Replaces selected without copying the text" })

-- copyies to system clipboard insted of vim's clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc="Copies text to clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc="Copies text to clipboard" })

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
