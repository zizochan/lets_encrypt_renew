# confing
certbot_dir=$1
if [ ! -n "$certbot_dir" ]; then
        certbot_dir='/usr/local/certbot/'
fi

# log
script_dir=$(cd $(dirname $0); pwd)
today=$(TZ=UTC-9 date '+%Y%m%d')
log_path="$script_dir/log/$today.txt"

# action
systemctl stop nginx
sh -c "cd $certbot_dir; ./certbot-auto renew" > $log_path
systemctl start nginx
