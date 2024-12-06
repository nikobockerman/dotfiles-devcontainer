set -e aws_profile

if type -q aws_completer
  if not set -q aws_completer_path
    set -g aws_completer_path (type -P aws_completer)
  end
end
