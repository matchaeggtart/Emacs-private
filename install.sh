cp -r Emacs-private ~/.emacs.d

cd ~/.emacs.d/site-lisp/
git clone https://github.com/google/styleguide.git
mv styleguide google-style

rm -rf ~/Emacs-private
