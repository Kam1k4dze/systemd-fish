# Systemd Plugin for Fish

The systemd plugin for Fish shell provides a collection of useful abbreviations to interact with systemd quickly. Inspired by the zsh systemd plugin, it offers aliases for common systemd commands, making it easier to manage services and units.

## Installation

### Manual Installation

1. Clone or download the repository.
2. Copy the `conf.d/systemd.fish` file to your Fish configuration directory:
   ```bash
   cp -R systemd-fish/conf.d ~/.config/fish/
   ```
3. Restart your terminal or source the file in your `config.fish`:
   ```fish
   source ~/.config/fish/conf.d/systemd.fish
   ```

### Installation with Fisher

If you use [Fisher](https://github.com/jorgebucaran/fisher), you can install the plugin directly:
```fish
fisher install Kam1k4dze/systemd-fish
```
## Abbreviations

The plugin defines abbreviations for several categories of systemd commands.

### User Commands

| Abbreviation          | Command                          | Description                                     |
|-----------------------|----------------------------------|-------------------------------------------------|
| `sc-cat`              | `systemctl cat`                  | Show backing files of one or more units         |
| `sc-get-default`      | `systemctl get-default`          | Get the default target                          |
| `sc-help`             | `systemctl help`                 | Display systemd help                            |
| `sc-is-active`        | `systemctl is-active`            | Check if a unit is active                       |
| `sc-is-enabled`       | `systemctl is-enabled`           | Check if a unit is enabled                      |
| `sc-status`           | `systemctl status`               | Show status information for unit(s)             |
| `sc-show`             | `systemctl show`                 | Display properties of units or jobs             |
| `sc-show-environment` | `systemctl show-environment`     | Dump the systemd manager environment block      |
| `sc-list-units`       | `systemctl list-units`           | List all active units                           |
| `sc-list-unit-files`  | `systemctl list-unit-files`      | List unit files installed on the system         |
| `sc-list-timers`      | `systemctl list-timers`          | List active timer units                         |
| `sc-failed`           | `systemctl --failed`             | List failed systemd units                       |

### Sudo Commands

| Abbreviation             | Command                                  | Description                                            |
|--------------------------|------------------------------------------|--------------------------------------------------------|
| `sc-start`               | `sudo systemctl start`                   | Start unit(s)                                          |
| `sc-stop`                | `sudo systemctl stop`                    | Stop unit(s)                                           |
| `sc-reload`              | `sudo systemctl reload`                  | Reload unit(s)                                         |
| `sc-restart`             | `sudo systemctl restart`                 | Restart unit(s)                                        |
| `sc-try-restart`         | `sudo systemctl try-restart`             | Attempt to restart unit(s)                             |
| `sc-isolate`             | `sudo systemctl isolate`                 | Start a unit (and its dependencies) and stop others    |
| `sc-kill`                | `sudo systemctl kill`                    | Send a signal to unit(s)                               |
| `sc-reset-failed`        | `sudo systemctl reset-failed`            | Reset the "failed" state of unit(s)                    |
| `sc-enable`              | `sudo systemctl enable`                  | Enable unit(s)                                         |
| `sc-disable`             | `sudo systemctl disable`                 | Disable unit(s)                                        |
| `sc-reenable`            | `sudo systemctl reenable`                | Reenable unit(s)                                       |
| `sc-preset`              | `sudo systemctl preset`                  | Reset the enable/disable status for unit files         |
| `sc-mask`                | `sudo systemctl mask`                    | Mask unit(s)                                           |
| `sc-unmask`              | `sudo systemctl unmask`                  | Unmask unit(s)                                         |
| `sc-link`                | `sudo systemctl link`                    | Link a unit file into the search path                  |
| `sc-load`                | `sudo systemctl load`                    | Load a unit file                                       |
| `sc-cancel`              | `sudo systemctl cancel`                  | Cancel a job                                           |
| `sc-set-environment`     | `sudo systemctl set-environment`         | Set one or more systemd manager environment variables   |
| `sc-unset-environment`   | `sudo systemctl unset-environment`       | Unset one or more systemd manager environment variables |
| `sc-edit`                | `sudo systemctl edit`                    | Edit a drop-in snippet or a full unit file (with `--full`) |

#### Now Commands

| Abbreviation       | Command                                   | Description                                    |
|--------------------|-------------------------------------------|------------------------------------------------|
| `sc-enable-now`    | `sudo systemctl enable --now`             | Enable and immediately start unit(s)           |
| `sc-disable-now`   | `sudo systemctl disable --now`            | Disable and immediately stop unit(s)           |
| `sc-mask-now`      | `sudo systemctl mask --now`               | Mask and immediately stop unit(s)              |

### Power Commands

| Abbreviation         | Command                    | Description                        |
|----------------------|----------------------------|------------------------------------|
| `sc-hibernate`       | `systemctl hibernate`      | Hibernate the system               |
| `sc-hybrid-sleep`    | `systemctl hybrid-sleep`   | Put the system into hybrid-sleep   |
| `sc-poweroff`        | `systemctl poweroff`       | Power off the system               |
| `sc-reboot`          | `systemctl reboot`         | Reboot the system                  |
| `sc-suspend`         | `systemctl suspend`        | Suspend the system                 |

### User Abbreviations

For user-level operations, the plugin provides equivalent abbreviations using the `scu-` prefix. For example:

- `scu-list-units` expands to `systemctl --user list-units`
- `scu-enable-now` expands to `systemctl --user enable --now`

This allows you to manage user services without needing `sudo`.

## Customization

The abbreviations are defined using Fish's `abbr --add` command. Feel free to modify or extend these abbreviations by editing the `conf.d/systemd.fish` file.
