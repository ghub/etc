new-session    -s devel -c ws/devel -d -n console
new-window     -t devel -c ws/devel -d -n editor
new-window     -t devel -c ws/devel -d -n compiler
attach-session -t devel

#send-keys -t devel:editor   "vi" Enter
#send-keys -t devel:compiler "schroot -c centos5_i386 -s /bin/csh" Enter
#send-keys -t devel:compiler "source env.csh" Enter

