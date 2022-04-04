# Neovim Config
Forrest's Neovim configuration file

## Shortcuts
| Shortcut | Keymap |
---|---
gl | View line diagnostics
gd | Go to definition
gD | Go to declaration
K | Show doc string
:LspInstallInfo | Install new LSP servers

## Testing
Testing has been set up to work for pytest only within a docker container. The plugin vim-test uses the command:
`docker exec -name testing pytest`
to run the testing. To configure the testing container, create a docker container with the command:
`docker run -dit -rm --name testing -v "/LOCAL/REPO:/CONTAINER/HOMEDIR" CONTAINER bash`

## Useful Commands
| Command | Action|
---|---
echo maparg("<leader>q","n") | View action executed by keymap
