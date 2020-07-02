# dotfiles


From https://www.atlassian.com/git/tutorials/dotfiles 


```bash
git clone --bare https://github.com/jaykay/config.git $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
```

Call this with 

    $ curl -Lks https://git.io/JJJF1 | /bin/bash