git config --global credential.helper store
# git config --global user.email "you@example.com"
git config --global user.email "ezharjan@outlook.com"
# git config --global user.name "Your Name"
git config --global user.name "Ezharjan"

# only for current repository
# project overrides global and global overrides system
git config --local credential.helper store
git config --local user.email "ezharjan@outlook.com"
git config --local user.name "Ezharjan"

# git pull --rebase origin master
# https://medium.com/@rajlaxmii/git-error-you-have-divergent-branches-and-need-to-specify-how-to-reconcile-them-75e97bd8abd2