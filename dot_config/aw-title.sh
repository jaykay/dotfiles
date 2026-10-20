# --- ActivityWatch: put the project path into the terminal title ------------
# ActivityWatch categorises on the window app+title. Without this the title is
# whatever the foreground program sets, which carries no project information.

__aw_title() {
    local p="${PWD/#$HOME/\~}"
    printf '\033]0;%s\007' "$p"
}
starship_precmd_user_func=__aw_title

# Claude Code overwrites the title with its own session label for the whole
# session. --name is injected so the project stays visible in that label.
claude() {
    local a
    for a in "$@"; do
        [ "$a" = "--name" ] || [ "$a" = "-n" ] && { command claude "$@"; return; }
    done
    local root name
    root=$(git rev-parse --show-toplevel 2>/dev/null) || root="$PWD"
    case "$root" in
        "$HOME"/projects/*) name="projects/${root#"$HOME"/projects/}" ;;
        *)                  name="${root##*/}" ;;
    esac
    command claude --name "$name" "$@"
}
