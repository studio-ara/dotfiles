vim.opt.spell = true
vim.opt.encoding = "utf-8" -- set encoding
vim.opt.nu = true -- enable line numbers
vim.opt.number = true -- relative line numbers

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.autoindent = true -- auto indentation

vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- unless capital letter in search

vim.opt.incsearch = true -- incrementally highlight searches as you type

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- set directory where undo files are stored
vim.opt.undofile = true -- save undo history to a file



vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = "*",
    callback = function()
      if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
        vim.cmd("normal! g`\"")
      end
    end
}) -- return to last edit position when opening files

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = {"*.js", "*.html", "*.css", "*.lua"},
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
  end
}) -- javascript formatting

local RuffSort = vim.api.nvim_create_augroup("RuffSort", { clear = true })
vim.api.nvim_create_autocmd("bufWritePost", {
  group = RuffSort,
  pattern = "*.py",
  callback = function()
    vim.cmd("silent !ruff check --select I --fix %")
    vim.cmd("silent !ruff format %")
  end,

})
