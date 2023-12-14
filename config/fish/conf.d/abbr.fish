if status --is-interactive
  abbr gst git status
  abbr glog git log --oneline --graph --decorate
  abbr gloga git log --oneline --graph --decorate --all
  abbr gd git diff
  abbr gdst git diff --staged
  abbr gsw git switch
  abbr gswc git switch --create
  abbr grba git rebase --autostash
  abbr grbi git rebase --interactive --autostash --autosquash
  abbr gfa git fetch --all --prune
end
