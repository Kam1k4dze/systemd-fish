# systemd abbreviations for fish

# --- Command lists ---
set user_commands cat get-default help is-active is-enabled is-failed is-system-running \
    list-dependencies list-jobs list-sockets list-timers list-unit-files list-units show \
    show-environment status

set sudo_commands add-requires add-wants cancel daemon-reexec daemon-reload default \
    disable edit emergency enable halt import-environment isolate kexec kill link list-machines \
    load mask preset preset-all reenable reload reload-or-restart reset-failed rescue restart \
    revert set-default set-environment set-property start stop switch-root try-reload-or-restart \
    try-restart unmask unset-environment

set power_commands hibernate hybrid-sleep poweroff reboot suspend

# --- Create abbreviations for user commands ---
for cmd in $user_commands
    abbr --add sc-$cmd "systemctl $cmd"
    abbr --add scu-$cmd "systemctl --user $cmd"
end

# --- Create abbreviations for sudo commands ---
for cmd in $sudo_commands
    abbr --add sc-$cmd "sudo systemctl $cmd"
    abbr --add scu-$cmd "systemctl --user $cmd"
end

# --- Create abbreviations for power commands ---
for cmd in $power_commands
    abbr --add sc-$cmd "systemctl $cmd"
end

# --- --now commands (explicitly defined) ---
abbr --add sc-enable-now "sudo systemctl enable --now"
abbr --add sc-disable-now "sudo systemctl disable --now"
abbr --add sc-mask-now "sudo systemctl mask --now"

abbr --add scu-enable-now "systemctl --user enable --now"
abbr --add scu-disable-now "systemctl --user disable --now"
abbr --add scu-mask-now "systemctl --user mask --now"

# --- --failed commands ---
abbr --add sc-failed "systemctl --failed"
abbr --add scu-failed "systemctl --user --failed"

# unset variables
set -e user_commands sudo_commands power_commands
