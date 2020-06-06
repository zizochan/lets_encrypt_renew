# lets encrypt renew

## USAGE

### clone certbot
```
cd /usr/local
sudo git clone https://github.com/certbot/certbot
```

### crontab設定
```
sudo crontab -e
0 4 1 * * /path/to/lets_encrypt_renew/renew.sh
```