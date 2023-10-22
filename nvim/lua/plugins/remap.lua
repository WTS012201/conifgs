vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- highlight move and autoindent
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- cursor remain in place
vim.keymap.set("n", "J", "mzJ`z")
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- cursor remain in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- highlight replace without yanking
vim.keymap.set("x", "<leader>p", [["_dP]])

-- copy text into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to void register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- no cap q
vim.keymap.set("n", "Q", "<nop>")

-- change all occurences
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- save
vim.keymap.set({ "n", "i" }, "<C-s>", "<CMD>:w<CR><CMD>:e<CR>")

-- shift tab
vim.keymap.set({ "n", "i" }, "<s-tab>", "<cmd><<cr>")
vim.keymap.set("n", "<tab>", "<cmd>><cr>")
vim.keymap.set("v", "<tab>", ">")
vim.keymap.set("v", "<S-Tab>", "<")

-- window
vim.keymap.set("n", "<M-v>", ":vsplit <cr>")
vim.keymap.set("n", "<M-q>", ":q <cr>")
vim.keymap.set("n", "<M-l>", ":wincmd l<cr>")
vim.keymap.set("n", "<M-h>", ":wincmd h<cr>")
