## 如何運行這個程式
首先伺服器安裝相慶的Docker套件，然后運行下面幾行命令
```
// 構建鏡像
$ docker compose build 

// 初始數據寫在 db/seed.rb里
// entrypoint.sh 程式運行一些關于數據庫命令
$ docker compose up -d 

$ docker compose down 
```
