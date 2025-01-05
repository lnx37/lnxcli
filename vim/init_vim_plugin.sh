#!/bin/bash

set -e
set -o pipefail
set -u
set -x

cd "$(dirname "$0")"

date

cd /root/infra/vim/bundle/
echo "AutoComplPop          " && git clone https://github.com/vim-scripts/AutoComplPop
echo "Jenkinsfile-vim-syntax" && git clone https://github.com/martinda/Jenkinsfile-vim-syntax
echo "MatchTag              " && git clone https://github.com/gregsexton/MatchTag
echo "Vim-Jinja2-Syntax     " && git clone https://github.com/Glench/Vim-Jinja2-Syntax
echo "ack.vim               " && git clone https://github.com/mileszs/ack.vim
echo "ctrlp.vim             " && git clone https://github.com/ctrlpvim/ctrlp.vim
echo "emmet-vim             " && git clone https://github.com/mattn/emmet-vim
echo "indentLine            " && git clone https://github.com/Yggdroot/indentLine
echo "nerdtree              " && git clone https://github.com/scrooloose/nerdtree
echo "tabular               " && git clone https://github.com/godlygeek/tabular
echo "tagbar                " && git clone https://github.com/majutsushi/tagbar
echo "tlib_vim              " && git clone https://github.com/tomtom/tlib_vim
echo "typescript-vim        " && git clone https://github.com/leafgarland/typescript-vim
echo "vim-addon-mw-utils    " && git clone https://github.com/marcweber/vim-addon-mw-utils
echo "vim-commentary        " && git clone https://github.com/tpope/vim-commentary
echo "vim-easy-align        " && git clone https://github.com/junegunn/vim-easy-align
echo "vim-ft-go             " && git clone https://github.com/google/vim-ft-go
echo "vim-fugitive          " && git clone https://github.com/tpope/vim-fugitive
echo "vim-gitgutter         " && git clone https://github.com/airblade/vim-gitgutter
echo "vim-javascript        " && git clone https://github.com/pangloss/vim-javascript
echo "vim-jsx               " && git clone https://github.com/mxw/vim-jsx
echo "vim-multiple-cursors  " && git clone https://github.com/terryma/vim-multiple-cursors
echo "vim-snipmate          " && git clone https://github.com/garbas/vim-snipmate
echo "vim-snippets          " && git clone https://github.com/honza/vim-snippets
echo "vim-surround          " && git clone https://github.com/tpope/vim-surround
echo "vim-vue               " && git clone https://github.com/posva/vim-vue

mkdir -p /root/infra/vim/autoload
mkdir -p /root/infra/vim/bundle
curl -LSso /root/infra/vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

mkdir -p /root/infra/vim/bundle/misc/plugin/
cd /root/infra/vim/bundle/misc/plugin/
[ ! -f dragvisuals.vim ] && wget -q "https://raw.githubusercontent.com/thoughtstream/Damian-Conway-s-Vim-Setup/master/plugin/dragvisuals.vim" -O dragvisuals.vim
[ ! -f html.vim ] && wget -q "https://raw.githubusercontent.com/gregsexton/MatchTag/master/ftplugin/html.vim" -O html.vim && cp -a html.vim xml.vim

date
