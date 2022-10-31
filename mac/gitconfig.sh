git config --global user.name "Lancelot"
git config --global user.email "1984737645@qq.com"



# How to export & import gpg
# gpg -k
# gpg -a -o public-file.key --export xxxxxxxxxx
# gpg -a -o private-file.key --export-secret-keys xxxxxxxxxx
#
# gpg --import public-file.key
# gpg --import private-file.key
# gpg
# https://docs.github.com/cn/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key?platform=mac
git config --global --unset gpg.format
# brew install gpg
gpg --list-secret-keys --keyid-format=long

git config --global user.signingkey xxxxxxxxxxxxxxxx

git config --global commit.gpgsign true


# zsh
if [ -r ~/.zshrc ]; then echo 'export GPG_TTY=$(tty)' >> ~/.zshrc; \
  else echo 'export GPG_TTY=$(tty)' >> ~/.zprofile; fi


brew install pinentry-mac
echo "pinentry-program $(which pinentry-mac)" >> ~/.gnupg/gpg-agent.conf
killall gpg-agent

