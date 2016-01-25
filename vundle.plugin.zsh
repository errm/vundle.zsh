function vundle-init () {
  if [ ! -d ~/.vim/bundle/vundle/ ]
  then
    mkdir -p ~/.vim/bundle/vundle/
  fi

  if [ ! -d ~/.vim/bundle/vundle/.git ] && [ ! -f ~/.vim/bundle/vundle/.git ]
  then
    git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
    echo "\n\tRead about vim configuration for vundle at https://github.com/VundleVim/Vundle.vim\n"
  fi
}

function vundle () {
  vundle-init
  vim -u ~/.vim/bundles.vim +VundleInstall +q
}

function vundle-update () {
  vundle-init
  vim -u ~/.vim/bundles.vim +VundleUpdate +q
}

function vundle-clean () {
  vundle-init
  vim -u ~/.vim/bundles.vim +VundleClean! +q
}
