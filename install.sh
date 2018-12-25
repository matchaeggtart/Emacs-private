rm -rf ~/.emacs.d ~/.emacs
mkdir -p ~/.emacs.d/site-lisp/google-style
cp -r Emacs-private-old/* ~/.emacs.d/
mv Emacs-private-old/.git/ ~/.emacs.d/

cd ~/.emacs.d/site-lisp/google-style
curl -O https://raw.githubusercontent.com/google/styleguide/gh-pages/google-c-style.el
