# wp-install TW

空機快速打造給 WordPress 的環境

## 部署步驟

1. 下載或 clone 本專案
2. 執行 `install.sh`
3. 設定 DB 和 web server（參見下一章）
4. 連線網站做剩下的設定

## 手動設定部分

### 資料庫設定

※請自行修改資料庫名稱、使用者名稱及密碼

執行 `sudo mariadb -u root` 進入資料庫伺服器中：

```sql=
CREATE DATABASE wordpress;
GRANT ALL PRIVILEGES ON wordpress.* TO "username"@"localhost" IDENTIFIED BY "password";
FLUSH PRIVILEGES;
```

### 網頁伺服器設定

以 Nginx 為例：

```conf=
server {
	listen 80;
	listen [::]:80; 
    
	root /var/www/wordpress;

	index index.php index.html; 

	server_name _;

	location / {
		try_files $uri $uri/ =404;
	}

	location ~ \.php$ {
		include snippets/fastcgi-php.conf;
		fastcgi_pass unix:/var/run/php/php7.4-fpm.sock;
	}

	location ~ /\.ht {
		deny all;
	}
}
```

## 參考資料
* https://hackmd.io/DLCTsoYCQi6RzklgLJTeEw?view#Wordpress-%E5%AE%89%E8%A3%9D
* [Server Environment – Make WordPress Hosting](https://make.wordpress.org/hosting/handbook/handbook/server-environment/)
