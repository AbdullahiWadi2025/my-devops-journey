# Bash & Linux Notes

## Key Concepts

- Bash scripting basics
- Variables and parameters ($1, $2, $@, $#)
- If/else and conditional logic
- Loops (while, for)
- Functions
- File operations and permissions
- Debugging (set -e, set -u, set -x)
- Command output and pipelines

---

## Commands

`chmod +x file.sh` - makes a script executable  
`./file.sh` - runs a script  
`bash file.sh` - runs a script using bash  
`sh file.sh` - runs a script using sh  
`echo` - prints output  
`read` - takes user input  
`test [ ]` - checks conditions  
`ls` - lists files  
`cp` - copies files  
`mv` - moves files  
`tar` - creates backups  
`df -h` - shows disk usage  
`uptime` - shows system uptime  

---

## Examples

### File Check
```bash
#!/bin/bash

file="test.txt"

if [ -f "$file" ]
then
    echo "File exists"
else
    echo "File does not exist"
fi
While Loop
COUNT=1
while [ $COUNT -le 5 ]
do
    echo $COUNT
    COUNT=$((COUNT + 1))
done
Function
greet() {
    echo "Hello $1"
}

greet "Ahmed"
What I Learned

I learned how to write Bash scripts to automate tasks in Linux. I now understand how to use variables, conditions, loops, and functions. I can also work with files, handle user input, and debug scripts using set options. This helps me build automation scripts useful for DevOps tasks like backups, monitoring, and system checks.


---