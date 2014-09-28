new-session -s admin -d -n console
split-window -h -d
attach-session -t admin

send-keys -t admin:console.0 "cd bin" Enter
send-keys -t admin:console.1 "cd etc" Enter
