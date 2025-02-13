vim.cmd("set expandtab")
vim.cmd("set tabstop=3")
vim.cmd("set softtabstop=3")
vim.cmd("set shiftwidth=3")
--editor options
vim.cmd('set nu')
vim.cmd('set relativenumber')
vim.cmd('set smartindent')
vim.cmd('set nowrap')
   --mozda za undotree namesti da imas dugu istoriju
vim.cmd('set nohlsearch')
vim.cmd('set incsearch')
vim.cmd('set scrolloff=8')
vim.cmd('set updatetime=50')
--remaps
   -- ova dva kad smo u visual modu pomeraju highlightovan kod gore ili dole
vim.keymap.set("v","J",":m '>+1<CR>gv=gv", {desc = 'Moving highlighted text down'})
vim.keymap.set("v","K",":m '<-2<CR>gv=gv", {desc = 'Moving highlighted text up'})
   -- J appenduje liniju koda ispod i appenduje u trenutnu liniju, ovaj dodatan deo namesta da se kursor ne pomera na kraj
vim.keymap.set("n","J","mzJ`z", {desc = 'Appending line below the current, to the current'})
   -- half page jumping da kursor ostane na mestu
vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = 'Half page jumping down'})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = 'Half page jumping up'})
   -- search terms ostaju na sredini znaci kad pretrazujem uvek ce na sredini biti
vim.keymap.set("n","n","nzzzv", {desc = 'Search term jumping down'})
vim.keymap.set("n","N","Nzzzv", {desc = 'Search term jumping up'})
   -- kada kopiram jedan deo koda i hocu da ga paste-ujem u drugi i time smenim drugi, a da mi se buffer cuvanja ne menja...
vim.keymap.set("x","<leader>p","\"_dP", {desc = 'Yanking first piece code and swaping with the other, while keeping the same buffer'})
   -- kopiranje u sys clipboard
vim.keymap.set("n","<leader>y","\"+y", {desc = 'Copying to sys clipboard'})
vim.keymap.set("v","<leader>y","\"+y", {desc = 'Copying to sys clipboard'})
vim.keymap.set("n","<leader>Y","\"+Y", {desc = 'Copying to sys clipboard'})
   --menja rec u celom fajlu na kojoj se nalazimo, sa onim sto unesemo
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {desc = 'Swapping curent word from a file'})

--keymap
vim.g.mapleader=" "
   --harpoon
   --undotree
vim.keymap.set("n","<leader>u", vim.cmd.UndotreeToggle, {desc = 'UndoToggleTree'})
   --vim-fugitive
vim.keymap.set("n","<leader>gs",vim.cmd.Git, {desc = 'VimFugitive Git'})
   --oil
vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>", { desc = "Oil - Open parent directory" })
   --lsp-config
vim.keymap.set('n','K',vim.lsp.buf.hover,{desc = 'Lsp-Config Hover'})
vim.keymap.set('n','gd',vim.lsp.buf.definition,{desc = 'Lsp-Config jump to definition'})
vim.keymap.set({'n', 'v'},'<leader>ca',vim.lsp.buf.code_action,{desc = 'Lsp-Config code action'})

