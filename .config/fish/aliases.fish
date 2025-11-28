function cat
    bat $argv
end

function ls
    eza --icons --all $argv
end

function q
    exit
end

function ff
    fastfetch
end

function jpgp
    ssh -i ~/.ssh/jpgp_oracle juanpa@jpgp.es -p 4723
end

function update_nebula
    sudo cp ~/dev/java/nebc/target/nebc /bin/nebc
end
