if type -q starship
  starship init fish | source
end

if type -q task
  task --completion fish | source
end

fish_add_path -Pa ~/.local/bin
