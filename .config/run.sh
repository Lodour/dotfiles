#/bin/sh
YADM="/tmp/yadm"
curl -fLo $YADM https://raw.githubusercontent.com/TheLocehiliosan/yadm/master/yadm
chmod a+x $YADM
$YADM clone https://github.com/Lodour/dotfiles.git --bootstrap
rm -f $YADM
