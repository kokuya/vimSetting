" vim�N�����̂�runtimepath��neobundle.vim��ǉ�
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" neobundle.vim�̏����� 
call neobundle#rc(expand('~/.vim/bundle'))

" NeoBundle���X�V���邽�߂̐ݒ�
NeoBundleFetch 'Shougo/neobundle.vim'

" �ǂݍ��ރv���O�C�����L��
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'troydm/easybuffer.vim'
NeoBundle 'haya14busa/vim-easymotion'

" �ǂݍ��񂾃v���O�C�����܂߁A�t�@�C���^�C�v�̌��o�A�t�@�C���^�C�v�ʃv���O�C��/�C���f���g��L��������
syntax on
filetype on
filetype plugin indent on

" �C���X�g�[���̃`�F�b�N
NeoBundleCheck

" Unite
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>


nnoremap <silent> ,eb :<C-u>EasyBuffer<CR>

 
" vim-eazymotion {{{
" �f�t�H���g����<Leader><Leader>�ƂȂ��Ă�prefix�L�[��ύX
let g:EasyMotion_leader_key = ';'
 
" ���I��: ��₪�ŏ�����2�L�[�\�������̂ő啶����ł��ɂ��������͑S�ʓI�ɏ���
" �Ȃ��A�Ō�̐�������2�L�[�̎��̍ŏ��̃L�[�ɂȂ�̂őł��₷�����̂�I�ԂƂ悳�����ł��B
let g:EasyMotion_keys='hklyuiopnm,qwertzxcvbasdgjf;'
 
" �g���ŋ@�\"{{{
 
" �����Ƃ��悭�g���ł��낤'<Leadr><Leader>s'motion ��s�Ɋ��蓖��
nmap s <Plug>(easymotion-s)
vmap s <Plug>(easymotion-s)
omap z <Plug>(easymotion-s) " surround.vim�Ƃ��Ԃ�̂�z
 
" keep cursor column
let g:EasyMotion_startofline = 0
 
" smartcase
let g:EasyMotion_smartcase = 1
 
" Migemo
let g:EasyMotion_use_migemo = 1
"}}}
 
"}}}
"---------------------------------------------------------------------------
" �ҏW�Ɋւ���ݒ�:
"
" �^�u�̉�ʏ�ł̕�
set tabstop=2
set shiftwidth=2
set softtabstop=2

" �^�u���X�y�[�X�ɓW�J���Ȃ� (expandtab:�W�J����)
set expandtab
" �����I�ɃC���f���g���� (noautoindent:�C���f���g���Ȃ�)
set autoindent
" �o�b�N�X�y�[�X�ŃC���f���g����s���폜�ł���悤�ɂ���
set backspace=2
" �������Ƀt�@�C���̍Ō�܂ōs������ŏ��ɖ߂� (nowrapscan:�߂�Ȃ�)
set wrapscan
" ���ʓ��͎��ɑΉ����銇�ʂ�\�� (noshowmatch:�\�����Ȃ�)
set showmatch
" �R�}���h���C���⊮����Ƃ��ɋ������ꂽ���̂��g��(�Q�� :help wildmenu)
set wildmenu
" �e�L�X�g�}�����̎����܂�Ԃ�����{��ɑΉ�������
set formatoptions+=mM
" ���{�ꐮ�`�X�N���v�g(by. ������m����)�p�̐ݒ�
let format_allow_over_tw = 1	" �Ԃ牺��\��

" �o�b�N�A�b�v�t�@�C�����쐬���Ȃ� (���s�̐擪�� " ���폜����ΗL���ɂȂ�)
set nobackup
set noswapfile

"---------------------------------------------------------------------------
" GUI�ŗL�ł͂Ȃ���ʕ\���̐ݒ�:
"
" �s�ԍ����\�� (number:�\��)
set number
" ���[���[��\�� (noruler:��\��)
set ruler
" �^�u����s��\�� (list:�\��)
set list
" �ǂ̕����Ń^�u����s��\�����邩��ݒ�
set listchars=tab:>-,extends:<,trail:-,eol:<
" �����s��܂�Ԃ��ĕ\�� (nowrap:�܂�Ԃ��Ȃ�)
set wrap
" ��ɃX�e�[�^�X�s��\�� (�ڍׂ�:he laststatus)
set laststatus=2
" �R�}���h���C���̍��� (Windows�pgvim�g�p����gvimrc��ҏW���邱��)
set cmdheight=2
" �R�}���h���X�e�[�^�X�s�ɕ\��
set showcmd
" �^�C�g����\��
set title

" �J�[���\���s���n�C���C�g
set cursorline
" �J�����g�E�B���h�E�ɂ̂݌r��������
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

:hi clear CursorLine
:hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black

" �R�}���h���s���͍ĕ`�悵�Ȃ�
:set lazyredraw

" CTRL-hjkl�ŃE�B���h�E�ړ�
nnoremap <C-j> ;<C-w>j
nnoremap <C-k> ;<C-k>j
nnoremap <C-l> ;<C-l>j
nnoremap <C-h> ;<C-h>j

set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

"�N���b�v�{�[�h���g�p����悤�ɐݒ�
set clipboard=unnamed

noremap <C-f> :vim <cword>\> **/*
set tags+=tags;

"==========================================
"neocomplete.vim
"==========================================
"use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" _(�A���_�[�o�[)��؂�̕⊮��L����
let g:neocomplete#enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
      \ }
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" Plugin key-mappings.
inoremap <expr><C-g>  neocomplete#undo_completion()
inoremap <expr><C-l>  neocomplete#complete_common_string()

