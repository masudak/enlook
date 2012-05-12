function! neocomplcache#sources#enlook#define()
        return s:source
endfunction

let s:source = {'name' : 'enlook', 'kind' : 'plugin'}


let s:keywords = [
      \{'word' : 'masuda'        , 'menu' : '[enlook]'},
      \{'word' : 'mdak'          , 'menu' : '[enlook]'},
      \{'word' : 'masuda'        , 'menu' : '[enlook]'},
      \{'word' : 'test-masuda'   , 'menu' : '[enlook]'},
      \]

function! s:source.initialize()
    call neocomplcache#set_completion_length('enlook', 3)
endfunction

function! s:source.finalize()
endfunction

function! s:source.get_keyword_list(cur_keyword_str)
    return neocomplcache#keyword_filter(copy(s:keywords), a:cur_keyword_str)
endfunction
