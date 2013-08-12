# Creating a starter profile for a Drupal Skeleton.
- After forking/cloning this repo you can tweak the drupal.make file for any
other modules you want to pull in.
- Feel free to edit the settings.local.php file accordingly. Anything with
'thissite' will be replaced with the 'SITE-NAME' you type in the next step or
you can manually input it in this step.
- Once you are ready for a full site install you can type
'./profile-builder.sh SITE-NAME' in your terminal. Replace 'SITE-NAME' with what you
are going to call the profile. This will rename the profile and files
appropriately then run the make file and lastly run a site install.
- After you successfully create/install this profile, you'll want to add
the settings.local.php file to the .gitignore file. It's only in here
to help get you started quicker, you don't want to store any passwords
in your git repository.
