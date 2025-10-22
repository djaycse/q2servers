# q2servers

Pre-built compilation of Quake II server directories and configurations.

NOTE: Does not include `pak0.pak`, which you must obtain from an official copy of Quake II.

# Instructions

1. Clone this repository.
2. Put your copy of `pak0.pak` into the baseq2 directory.
3. Copy admin_sample.txt to admin.txt and set a valid password for `adminpassword`.
4. Create a `home.cfg` file under each mod directory (currently `openffa`, `opentdm`, `tourney-ffa`, `tourney-insta`).
5. Enter relevant configuration in each home.cfg (see sample below). Refer to `docs`directory for help with cvars/settings.
6. Edit `sh/start_*.sh` files to set the desired port to run the mod on (e.g. `+set net_port 27910`) and starting map (e.g. `+map q2dm1`).
7. Run the relevant `./sh/start_*.sh` file to start the mod instance via linux `screen`.
8. Run `.sh/psaux_all.sh` to check running instances.
9. Run `.sh/kill_all.sh` to kill all running instances.

## Sample home.cfg

```
set hostname "CSE - OSP Tourney Insta-gib"
set public 1
set motd_file "motd/home-insta.txt" // You will need to create motd as per mod instructions
set #location "Sydney, Australia" s
set #admins ".cse" s
set #contact "your email" s
set #website "your website" s// Passwords (DO NOT EXPOSE TO PUBLIC!)

// Set any passwords (do NOT commit expose to public! home.cfg is ignored from commits by default)
set rcon_password "..."
set lrcon_password "..."
set sv_password ""
set sv_reserved_password "..."
set referee_password "..."
```

# Synchronising with remote repository
The .cfg files in this repository have a 'Last updated' string at the top of the file, which gets automatically updated upon commit of the file.

This can be done via a pre-commit hook with the following code:
```bash
#!/bin/bash

# Automatically update timestamp and author in .cfg files before commit

for file in $(git diff --cached --name-only --diff-filter=ACM | grep '\.cfg$'); do
    if [ -f "$file" ]; then
        author=$(git config user.name)
        timestamp=$(date +"%Y-%m-%d %H:%M:%S")

        # Ensure Windows-safe sed (uses Git Bash sed)
        if grep -q "^# Last modified:" "$file"; then
            sed -i "1s|^# Last modified:.*|# Last modified: $timestamp by $author|" "$file"
        else
            sed -i "1i # Last modified: $timestamp by $author" "$file"
        fi

        git add "$file"
    fi
done
```

# Change log

## Version 1.0
- First release.
- Linux-based scripts (Windows batch files coming later).
