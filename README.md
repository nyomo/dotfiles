## 使い方

1. gitとなんかコンパイラとか一式入れておく
2. git clone git@github.com:nyomo/dotfiles.git .dotfiles
3. sh .dotfiles/init.sh

## よく使うやつ

- ssh鍵を作る
`ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519`  
https://qiita.com/hana_shin/items/2003698873a5782b7efd
- ssh鍵を置く  `ssh-copy-id -i ~/.ssh/id_ed25519 hostname` 
