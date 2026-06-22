# Linux Command Line & DevOps Notes

## Key Concepts

- A command has 3 parts:
  - Command (what you run)
  - Options (modify behavior, start with `-`)
  - Arguments (what the command acts on)

- The shell is the bridge between you and the computer:
  - You type a command
  - Shell runs it
  - You get output back

- Everything in Linux is treated as a file (even devices and processes)

---

## Commands

### File & Directory Management

ls - list directory contents  
ls -a - show hidden files  
ls -l - detailed view (permissions, owner, size)  
ls -R - recursive listing  

mkdir - create directory  
mkdir -p - create nested directories  

rmdir - remove empty directory  

touch - create file / update timestamp  

cp - copy file  
cp -r - copy directory  

mv - move or rename file  

rm - remove file  
rm -r - remove directory  
rm -f - force remove  

⚠️ rm -f / is dangerous

---

### Navigation

cd .. - move up one directory  

---

### File Viewing & Text

cat file.txt - show file contents  
echo "text" - print text  
echo "text" > file.txt - write to file  
grep "word" file.txt - search text  

head - first 10 lines  
head -n 5 - first 5 lines  
tail - last 10 lines  
tail -n 5 - last 5 lines  

head file | tail -n 5 - get specific lines  

---

### System & Shell

echo $SHELL - show current shell  
cat /etc/shells - list available shells  

sudo apt-get install zsh - install Zsh  
chsh -s /bin/zsh - change default shell  

---

### Users & Permissions

sudo - run as admin  
su - switch user  

sudo useradd newuser - add user  
sudo usermod -aG sudo newuser - give admin access  
sudo deluser newuser sudo - remove admin access  

chown - change owner  
chgrp - change group  

---

### Networking & Security

openssl s_client -connect localhost:30001 - secure connection  

---

### Processes

ps aux - show running processes  
top - live process view  
kill PID - stop process  

---

### Streams

stdin (0) - input  
stdout (1) - output  
stderr (2) - errors  

/dev/null - black hole (data disappears)

---

### Variables & Environment

variable = stored value  
echo $VAR - read variable  
export VAR=value - make global  
PATH - where commands are found  
source file - run file in current shell  

---

## Examples

ls -l  
mkdir test  
touch file.txt  
echo "hello" > file.txt  
cat file.txt  
grep "hello" file.txt  

head -n 10 file.txt | tail -n 5  

ps aux | grep python  
kill 1234  

echo $PATH  

---

## What I Learned

Linux commands follow a pattern: command + options + arguments.

The shell connects the user to the OS.

Key DevOps skills include:
- file management
- permissions
- processes
- networking
- environment variables (PATH)
- streams (stdin, stdout, stderr)

Linux is powerful because everything is a file and can be controlled through commands.