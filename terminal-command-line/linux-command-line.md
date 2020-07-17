# linux command line

### Getting a list of users
```
cat /etc/passwd
```

### Shows some info about the ownership of current dir
```
ls -l
```

### Creates user with a home dir
```
useradd -m <user-name>
```

### Change ownership of file or dir
1st `<user-name>` changes user ownership for file `<file-name>` <br>
2nd `<user-name>` changes group ownership for file `<file-name>` <br>
```
chown <user-name>:<user-name> <file-name> -c
Note: In case of working with dir, use the -R option for doing things recursively
```

### Delete `<user-name>` with its home dir
```
userdel -r <user-name>
```

### Switches to `<user-name>`
```
su - <user-name>
```
