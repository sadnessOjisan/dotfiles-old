if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
        \ 'workspace_config': {'rust': {'clippy_preference': 'on'}},
        \ 'whitelist': ['rust'],
        \ })
endif

if executable('typescript-language-server')
    augroup LspTypeScript
        au!
        autocmd User lsp_setup call lsp#register_server({
                    \ 'name': 'typescript-language-server',
                    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
                    \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
                    \ 'whitelist': ['typescript'],
                    \ })
        autocmd FileType typescript setlocal omnifunc=lsp#complete
    augroup END :echomsg "vim-lsp with `typescript-language-server` enabled"
else
    :echomsg "vim-lsp for typescript unavailable"
endif

if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd', '-background-index']},
        \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
        \ })
endif

echo "loaded lsp.vim"