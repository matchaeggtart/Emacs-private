cp -r Emacs-private ~/emacs.d
rm -rf ~/.emacs.d
mv .emacs.d ~
mkdir .emacs.d/site-lisp

cd ~/Downloads
git clone https://github.com/google/styleguide.git
mv styleguide google-style
mv google-style ~/.emacs.d/site-lisp

rm -rf ~/Emacs-private
