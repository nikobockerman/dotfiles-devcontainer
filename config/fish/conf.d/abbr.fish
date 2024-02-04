if status --is-interactive
  abbr g git
  abbr gb git branch
  abbr gco git checkout
  abbr gch git cherry-pick
  abbr gchc git cherry-pick --continue
  abbr gd git diff
  abbr gdst git diff --staged
  abbr gfa git fetch --all --prune
  abbr gfmain git fetch origin main:main
  abbr glog git log --oneline --graph --decorate
  abbr gloga git log --oneline --graph --decorate --all
  abbr gpu "git push -u origin (git branch --show-current)"
  abbr gpuf "git push -u fork (git branch --show-current)"
  abbr grba git rebase --autostash
  abbr grbc git rebase --continue
  abbr grbi git rebase -i --autostash --autosquash --update-refs
  abbr gst git status
  abbr gsw git switch
  abbr gswc git switch --create
end
