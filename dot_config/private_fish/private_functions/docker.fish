function docker --wraps=nerdctl --wraps=/opt/homebrew/bin/docker --description 'alias docker=/opt/homebrew/bin/docker'
    /opt/homebrew/bin/docker $argv
end
