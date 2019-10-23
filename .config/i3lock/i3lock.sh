#!/bin/sh
# NOTE: This script relies on package: i3lock-color-git


# Color for text
TEXT='#66ccff99'

# Line color between background (B) and ring (R)
LINE='00000000'

# Colors used when user enters password
B_INPUT='00669999'
R_INPUT='003366ff'

# Colors used when verifying password input
B_VERIFY='00993399'
R_VERIFY='003300ff'
T_VERIFY='66ff33ff'

# Colors used when wrong password entered
B_WRONG='ff000099'
R_WRONG='800000ff'
T_WRONG='ffffccff'


i3lock -i /home/mconway/.config/lockscreen.png -t \
\
--linecolor=$LINE \
--timecolor=$TEXT \
--datecolor=$TEXT \
--keyhlcolor=$TEXT \
--bshlcolor=$TEXT \
--layoutcolor=$TEXT \
\
--insidecolor=$B_INPUT \
--ringcolor=$R_INPUT \
\
--insidevercolor=$B_VERIFY \
--ringvercolor=$R_VERIFY \
--verifcolor=$T_VERIFY \
\
--insidewrongcolor=$B_WRONG \
--ringwrongcolor=$R_WRONG \
--wrongcolor=$T_WRONG \
\
--timestr="%H:%M:%S" \
--datestr="%A, %m %Y" \
--clock \
--keylayout 2

# OTHER OPTIONS
#
#--separatorcolor=
#--screen 1
#--blur 5
#--veriftext="Drinking verification can..."
#--wrongtext="Nope!"
#--textsize=20
#--modsize=10
#--timefont=comic-sans
#--datefont=monofur
