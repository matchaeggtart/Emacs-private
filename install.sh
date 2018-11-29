rm -rf ~/.emacs.d ~/.emacs
mkdir -p ~/.emacs.d/site-lisp/google-style
cp -r Emacs-private/* ~/.emacs.d/
mv Emacs-private/.git/ ~/.emacs.d/

cd ~/.emacs.d/site-lisp/google-style
curl -O https://raw.githubusercontent.com/google/styleguide/gh-pages/google-c-style.el

rm -rf ~/Emacs-private
