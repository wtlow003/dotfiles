local mkdp_status_ok, cmp = pcall(require, "mkdp")
if not mkdp_status_ok then
  return
end

vim.cmd[[
    let g:mkdp_auto_start = 1
    let g:mkdp_auto_close = 1
    let g:mkdp_browserfunc = ''
    let g:mkdp_filetypes = ['markdown', 'md']

    augroup pandoc_syntax
        au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
    augroup END
]]

