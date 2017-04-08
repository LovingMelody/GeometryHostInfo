#!/usr/bin/zsh
# By Fuzen-py
# Todo: Add color customization
# Make it look nicer

geometry_prompt_host_info_setup() { true; }

geometry_prompt_host_info_render() {
    echo "[$(prompt_geometry_colorize blue "$USER")"@"$(prompt_geometry_colorize red "$HOST")]"

}

geometry_prompt_host_info_check() {
    if [[ ! -z $SSH_CONNECTION ]]; then return 0; else return 1; fi;
}
geometry_plugin_register host_info
