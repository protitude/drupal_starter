#! /bin/bash

if [ -d cd profiles/site ]; then
mv profiles/site profiles/$1
mv profiles/$1/site.info profiles/$1/$1.info
mv profiles/$1/site.profile profiles/$1/$1.profile
mv profiles/$1/site.install profiles/$1/$1.install
# Update info file.
sed s/thissite/$1/ profiles/$1/$1.info > profiles/$1/sed
cat profiles/$1/sed > profiles/$1/$1.info
rm profiles/$1/sed
# Update install file.
sed s/thissite/$1/ profiles/$1/$1.install > profiles/$1/sed
cat profiles/$1/sed > profiles/$1/$1.install
rm profiles/$1/sed
# Update profile file.
sed s/thissite/$1/ profiles/$1/$1.profile > profiles/$1/sed
cat profiles/$1/sed > profiles/$1/$1.profile
rm profiles/$1/sed
# Modules
mv profiles/$1/modules/custom/site_users profiles/$1/modules/custom/$1_users
mv profiles/$1/modules/custom/$1_users/site_users.info profiles/$1/modules/custom/$1_users/$1_users.info
mv profiles/$1/modules/custom/$1_users/site_users.install profiles/$1/modules/custom/$1_users/$1_users.install
mv profiles/$1/modules/custom/$1_users/site_users.module profiles/$1/modules/custom/$1_users/$1_users.module
# Update info file.
sed s/thissite/$1/ profiles/$1/modules/custom/$1_users/$1_users.info > profiles/$1/modules/custom/$1_users/sed
cat profiles/$1/modules/custom/$1_users/sed > profiles/$1/modules/custom/$1_users/$1_users.info
rm profiles/$1/modules/custom/$1_users/sed
# Update install file.
sed s/thissite/$1/ profiles/$1/modules/custom/$1_users/$1_users.install > profiles/$1/modules/custom/$1_users/sed
cat profiles/$1/modules/custom/$1_users/sed > profiles/$1/modules/custom/$1_users/$1_users.install
rm profiles/$1/modules/custom/$1_users/sed
# Update module file.
sed s/thissite/$1/ profiles/$1/modules/custom/$1_users/$1_users.module > profiles/$1/modules/custom/$1_users/sed
cat profiles/$1/modules/custom/$1_users/sed > profiles/$1/modules/custom/$1_users/$1_users.module
rm profiles/$1/modules/custom/$1_users/sed

# Update settings local file.
sed s/thissite/$1/ sites/default/settings.local.php > sites/default/sed
cat sites/default/sed > sites/default/settings.local.php
rm sites/default/sed


drush make -y drupal.make
drush si -y $1
drush uli admin
exit
fi
if [ -d cd profiles/$1 ]; then
echo already exists
exit
fi
