#/bin/sh
curl -fLo /tmp/yadm https://raw.githubusercontent.com/TheLocehiliosan/yadm/master/yadm
chmod a+x /tmp/yadm
/tmp/yadm clone https://github.com/Lodour/dotfiles.git
/tmp/yadm alt
/tmp/yadm decrypt
/tmp/yadm bootstrap
rm -f /tmp/yadm
