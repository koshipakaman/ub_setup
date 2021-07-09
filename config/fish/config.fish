alias vim="nvim"
alias ls="lsd"

export LSCOLORS=Gxfxcxdxbxegedabagacad

# set -g theme display_user yes
# set -g default_user your_default_username

fish_default_key_bindings

#peco
function fish_user_key_bindings
    bind \cr peco_select_history
end

function cd
    builtin cd $argv; and ls
end

set -g theme_display_git yes
set -g theme_display_git_dirty no
set -g theme_display_git_untracked no
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_stashed_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_git_worktree_support yes
set -g theme_use_abbreviated_branch_name yes
set -g theme_display_vagrant yes
set -g theme_display_docker_machine no
set -g theme_display_k8s_context yes
set -g theme_display_hg yes
set -g theme_display_virtualenv yes
set -g theme_display_ruby no
set -g theme_display_nvm yes
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi no
set -g theme_display_date no
