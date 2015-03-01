new-session -s admin -d -n console
split-window -d
split-window -d
split-window -d
select-layout tiled
attach-session -t admin

send-keys -t admin:console.0 "cd bin"       Enter
send-keys -t admin:console.1 "cd etc"       Enter
send-keys -t admin:console.2 "cd bin.local" Enter
send-keys -t admin:console.3 "cd etc.local" Enter
