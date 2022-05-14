# Installing dotfiles for the first time

`echo ".cfg" >> .gitignore`
`git clone https://github.com/MapleLeaves-7/dotfiles $HOME/.cfg`
`alias config='/usr/bin/git --git-dir=<path to .cfg’s Git directory> --work-tree=$HOME'`
`config config --local status.showUntrackedFiles no`
`config checkout`

### Explaination of bare repos

- https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/
- https://www.atlassian.com/git/tutorials/dotfiles
