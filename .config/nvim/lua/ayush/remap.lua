
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":q<CR>") -- exit 

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move lines up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move lines down

vim.keymap.set("n", "J", "mzJ`z") -- append lines below
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- move down rlly fast 
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- move up rlly fast
vim.keymap.set("n", "n", "nzzzv") -- next
vim.keymap.set("n", "N", "Nzzzv") -- idk something with next

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])


-- next greatest remap ever : asbjornHaland ?? what
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])


-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- tree view
vim.keymap.set("n", "<leader>pe", ":NvimTreeToggle<CR>")

-- error diagnostic
vim.keymap.set("n", "<leader>e", ":lua vim.diagnostic.open_float(0, {scope=\"line\"})<CR>")
vim.keymap.set("n", "<leader>ef", "<cmd>lua vim.lsp.buf.code_action()<CR>") -- fix

-- <leader>t to start a terminal session below
vim.keymap.set("n", "<leader>t", "<cmd>:sp|term<CR>")
-- terminal normal mode
vim.keymap.set("t", "<C-c>", "<C-\\><C-N>")

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>") -- save

