if status --is-interactive
  abbr gd git diff
  abbr gdst git diff --staged
  abbr gfa git fetch --all --prune
  abbr glog git log --oneline --graph --decorate
  abbr gloga git log --oneline --graph --decorate --all
  abbr grba git rebase --autostash
  abbr grbc git rebase --continue
  abbr grbi git rebase --interactive --autostash --autosquash
  abbr gst git status
  abbr gsw git switch
  abbr gswc git switch --create
end
