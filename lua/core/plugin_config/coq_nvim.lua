vim.g.coq_settings = {
  auto_start = true
}
-- Kích hoạt Coq khi mở một file mới
vim.cmd([[
  augroup coq
    autocmd!
    autocmd BufReadPost * COQnow
  augroup END
]])
