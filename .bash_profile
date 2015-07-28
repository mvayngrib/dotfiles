
ulimit -n 65536 65536 # increase open files limit

# Add `~/bin` to the `$PATH`
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

export PATH="$PATH:$HOME/bin:/Users/tenaciousmv/npm/bin/:/Users/tenaciousmv/Code/bin:/usr/local/sbin:/usr/local/git/bin:/Applications/ImageMagick-6.8.9/bin:$PATH";

# Go
export GOPATH=$HOME/go
export PATH="$PATH:/usr/local/Cellar/go/1.4.2/bin/:$GOPATH/bin"

# add ruby version manager
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
# ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# /opt/local/bin:/opt/local/sbin:

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt1,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
	source "$(brew --prefix)/etc/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;

alias nw='/Applications/node-webkit.app/Contents/MacOS/node-webkit'
export PYTHONPATH=/Users/tenaciousmv/Library/Python/2.7/site-packages
##
# Your previous /Users/tenaciousmv/.bash_profile file was backed up as /Users/tenaciousmv/.bash_profile.macports-saved_2014-12-31_at_10:19:03
##

# . ~/Code/bin/z.sh

# docker

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/tenaciousmv/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
