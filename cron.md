# Automating jobs

See elias - tons in cron dirs

# example daily backup

1 30 20 * * 1-5 root /root/back.sh

run every 1 day
at 30 min past
8pm
every day
every day of the month
M-F
as root
as root/back.sh?

# user cron jobs

taylor@elias:~ $ sudo crontab -l (i.e., list root cronjobs)
[sudo] password for taylor: 
PATH=/root/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

`# m h  dom mon dow   command` (this mean s month hour day-of-month)

`32 14 1 * * snapshot-ec2.sh >> /var/log/snapshot-ec2.log 2>&1`

`#17 */6 * * * ubuntu-mirror-sync.sh >> /var/log/ubuntu-mirror-sync.log 2>&1`
`17 23 * * * ubuntu-mirror-sync.sh >> /var/log/ubuntu-mirror-sync.log 2>&1`