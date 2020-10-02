# linux command line

| Mac commands | functionality |
| ----------------- | ----------------------- |
| `cat /etc/passwd` | Getting a list of users |
| `ls -l` | Shows some info about the ownership of current dir |
| `useradd -m <user-name>` | Creates user with a home dir |
| `chown <user-name>:<user-name> <file-name> -c` | Change ownership of file or dir <ul><li> 1st `<user-name>` changes user ownership for file `<file-name>`</li> <li> 2nd `<user-name>` changes group ownership for file `<file-name>` </li><li> In case of working with dir, use the -R option for doing things recursively </li></ul>|
| `userdel -r <user-name>` | Delete `<user-name>` with its home dir |
| `su - <user-name>` | Switches to `<user-name>` |