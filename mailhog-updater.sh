#!/bin/bash
#
# Updates MailHog and mhsendmail to their latest versions.
#

# download latest MailHog version
mailhog_latest=$(curl -s "https://api.github.com/repos/mailhog/MailHog/releases/latest" | grep "browser_download_url" | grep "linux_amd64" | cut -d\" -f4)
wget $mailhog_latest -O mailhog_
chmod +x mailhog_
mv mailhog_ mailhog/usr/bin/mailhog

# download latest mhsendmail version
mhsendmail_latest=$(curl -s "https://api.github.com/repos/mailhog/mhsendmail/releases/latest" | grep "browser_download_url" | grep "linux_amd64" | cut -d\" -f4)
wget $mhsendmail_latest -O mhsendmail
chmod +x mhsendmail
mv mhsendmail mailhog/usr/bin/mhsendmail
