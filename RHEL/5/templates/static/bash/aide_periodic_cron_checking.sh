# platform = Red Hat Enterprise Linux 5
echo "/usr/sbin/aide --config=/etc/aide.conf --check" > /etc/cron.weekly/aide
chmod 700 /etc/cron.weekly/aide
