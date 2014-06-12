" Map Leader: Reset from \ to ,
let mapleader = ","

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" TABS: Navigation
nmap tp :tabprevious<CR>
nmap tn :tabnext<CR>
nmap te :tabedit<CR>
nmap to :tabonly<CR>

" recall history without moving our hands
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" NERDTree: Open with F2
nmap <F2> :NERDTreeToggle<CR>
nmap <Leader>N :NERDTreeToggle<CR>

" AckVim: <leader>s to search
" map <leader>s :Ack<Space>

" AgVim: <leader>s to search
map <leader>s :Ag<Space>

" Redraw
map <Leader>r :redraw!<cr>

" Toggle line numbers
:set nonumber
nmap <Leader>n :set number! number?<cr>

" Toggle search highlights
nmap <Leader>h :set hlsearch! hlsearch?<cr>

" Shortcuts for writing the file...
map <Leader>w :w<cr>
imap <Leader>w <esc>:w<cr>

" and quitting
map <Leader>q :qall<cr>
imap <Leader>q <esc>:qall<cr>

" and deleting buffers
map <Leader>bd :bd<cr>
imap <Leader>bd <esc>:bd<cr>
map <Leader>BD :BufOnly<cr>
imap <Leader>BD <esc>:BufOnly<cr>

" and turning on word-wrap
map <Leader>ww :set wrap linebreak<cr>
map <Leader>wwo :set nowrap nolinebreak<cr>

" moving around windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

" and resizing windows
" nmap <c-H> <c-w><
" nmap <c-L> <c-w>>
" nmap <c-J> <c-w>-
" nmap <c-K> <c-w>+

" ExitInsertMode: Alternative keybinding
imap jj <Esc>

" JSLint for current javascript file
:nmap <F4> :w<CR>:make<CR>:cw<CR>

" CtrlP
nnoremap <Leader>f :CtrlP<CR>
nnoremap <Leader>ff :CtrlPClearCache<CR>
noremap <Leader>fb :CtrlPBuffer<CR>

" Copy/Paste
map <Leader>yf :let @*=expand("%")<CR>
map <Leader>yff :let @*=expand("%:p")<CR>

" Editing
" Ctrl+r replace highlighted text with prompted replacement
" doesn't work if special characters in selection
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Ragtag
inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
let g:ragtag_global_maps = 1

" RailsVim
map <Leader>a :A<cr>
map <Leader>as :AS<cr>
map <Leader>av :AV<cr>
map <Leader>at :AT<cr>

map <Leader>re :R<cr>
map <Leader>rs :RS<cr>
map <Leader>rv :RV<cr>
map <Leader>rt :RT<cr>

" Fugitive
map <leader>gb :Gblame<CR>
map <leader>gs :Gstatus<CR>
map <leader>gd :Gdiff<CR>
map <leader>gl :Glog<CR>
map <leader>gc :Gcommit<CR>
map <leader>gpu :Git pull --rebase<CR>
map <leader>gps :Git push<CR>

nmap <leader>gr :Ggrep
" ,gw for global git serach for word under the cursor (with highlight)
nmap <leader>gw :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>
" same in visual mode
vmap <leader>gw y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ggrep -F "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>

" QuickLook Markdown
" nmap <leader>md :!qlmanage -c net.daringfireball.markdown -g ~/Library/QuickLook/QLMarkdown.qlgenerator -p %<CR>
nmap <leader>md :!ruby -w -e 'puts ARGV[0]' %<CR>

" Default Keybindings for NerdCommenter
"
" [count]<leader>cc |NERDComComment|
" Comment out the current line or text selected in visual mode.
"
" [count]<leader>cn |NERDComNestedComment|
" Same as <leader>cc but forces nesting.
"
" [count]<leader>c |NERDComToggleComment|
" Toggles the comment state of the selected line(s). If the topmost selected
" line is commented, all selected lines are uncommented and vice versa.
"
" [count]<leader>cm |NERDComMinimalComment|
" Comments the given lines using only one set of multipart delimiters.
"
" [count]<leader>ci |NERDComInvertComment|
" Toggles the comment state of the selected line(s) individually.
"
" [count]<leader>cs |NERDComSexyComment|
" Comments out the selected lines ``sexily''
"
" [count]<leader>cy |NERDComYankComment|
" Same as <leader>cc except that the commented line(s) are yanked first.
"
" <leader>c$ |NERDComEOLComment|
" Comments the current line from the cursor to the end of line.
"
" <leader>cA |NERDComAppendComment|
" Adds comment delimiters to the end of line and goes into insert mode between
" them.
"
" |NERDComInsertComment|
" Adds comment delimiters at the current cursor position and inserts between.
" Disabled by default.
"
" <leader>ca |NERDComAltDelim|
" Switches to the alternative set of delimiters.
"
" [count]<leader>cl
" [count]<leader>cb |NERDComAlignedComment|
" Same as |NERDComComment| except that the delimiters are aligned down the
" left side (<leader>cl) or both sides (<leader>cb).
"
" [count]<leader>cu |NERDComUncommentLine|
" Uncomments the selected line(s).
"
