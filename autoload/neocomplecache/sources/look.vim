function! neocomplcache#sources#look#define()
        return s:source
endfunction

let s:source = {'name' : 'look', 'kind' : 'plugin'}


let s:keywords = [
      \{'word' : 'masuda'        , 'menu' : '[en-look]'},
      \{'word' : 'mdak'          , 'menu' : '[en-look]'},
      \{'word' : 'masuda'        , 'menu' : '[en-look]'},
      \{'word' : 'test-masuda'   , 'menu' : '[en-look]'},
      \]

function! s:source.initialize()
    call neocomplcache#set_completion_length('look', 3)
endfunction

function! s:source.finalize()
endfunction

function! s:source.get_keyword_list(cur_keyword_str)
    return neocomplcache#keyword_filter(copy(s:keywords), a:cur_keyword_str)
endfunction
