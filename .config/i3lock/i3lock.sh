#!/bin/sh

# Color for text
TEXT='#66ccff99'

# Line color between background (B) and ring (R)
LINE='#00000000'

# Colors used when user enters password
B_INPUT='#ffff00ff'
R_INPUT='#ffffffff'

# Colors used when verifying password input
B_VERIFY='#000000ff'
R_VERIFY='#000000ff'
T_VERIFY='#000000ff'

# Colors used when wrong password entered
B_WRONG='#000000ff'
R_WRONG='#000000ff'
T_WRONG='#000000ff'

i3lock -i /home/mconway/.config/lockscreen.jpg -t \
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
