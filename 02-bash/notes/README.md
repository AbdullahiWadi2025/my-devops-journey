# Bash & Linux Notes

## Key Concepts

- Bash scripting is used to automate Linux tasks.
- Scripts run using an interpreter like bash or sh.
- Variables store data for reuse.
- Conditions control logic flow.
- Loops automate repeated tasks.
- Functions group reusable code.
- File operations are used for automation and system tasks.
- Debugging helps track script execution.
- Environment variables store system-level data.

---

## Commands

`chmod +x file.sh` - makes script executable  
`./file.sh` - runs script  
`bash file.sh` - runs script using bash  
`sh file.sh` - runs script using sh  
`echo` - prints output  
`read` - takes user input  
`ls` - lists files  
`cp` - copy files  
`mv` - move files  
`rm` - delete files  
`tar -czf` - create compressed backup  
`df -h` - disk usage  
`uptime` - system running time  
`who` - logged in users  
`wc -l` - count lines  
`grep` - search text  

---

## Variables & Parameters

- `name=value` → create variable  
- `$name` → use variable  

### Parameters:
- `$1` → first argument  
- `$2` → second argument  
- `$@` → all arguments  
- `$#` → number of arguments  

### Command substitution:
```bash
$(command)

Example:

file_count=$(ls | wc -l)
Arithmetic
echo $((5 + 3))
Conditions
if [ condition ]
then
    echo "true"
fi
Operators:
-eq = equal
-ne = not equal
-gt = greater than
-lt = less than
-ge = greater or equal
-le = less or equal
Logical operators:
&& = AND
|| = OR
== = equal (strings)
!= = not equal
else / elif
else → runs when condition is false
elif → checks another condition
Nested If

An if inside another if.

if [ condition ]
then
    if [ another_condition ]
    then
        echo "nested"
    fi
fi
Loops
While Loop
COUNT=1
while [ $COUNT -le 5 ]
do
    echo $COUNT
    COUNT=$((COUNT + 1))
done
For Loop
for i in $(seq 1 5)
do
    echo $i
done
Loop Control
break → stop loop
continue → skip iteration
Functions
greet() {
    local name="$1"
    echo "Hello $name"
}

greet "Ahmed"
File Checks
if [ -f "file.txt" ]
then
    echo "File exists"
fi
Other checks:
-f → file exists
-d → directory exists
-z → string is empty
-r → readable
-w → writable
-x → executable
Input Validation
if [ -z "$name" ]
then
    echo "Please enter a name"
fi
Exit Status
$? → last command result
0 → success
anything else → error
Debugging
set -e  # stop on error
set -u  # error if variable not set
set -x  # show commands while running
Toggle:
set +x  # stop debug mode
Pipe Failure
set -o pipefail

If one command in a pipeline fails → whole pipeline fails.

Example:

cat file.txt | grep "error"
Environment Variables
$PATH → system command locations
$LANG → system language
File Operations
echo "hello" >> file.txt   # append to file
echo "hello" > file.txt    # overwrite file
File Permissions
r → read
w → write
x → execute
Checksum

A checksum is a file fingerprint used to detect changes.

sha256sum file.txt
md5sum file.txt

If file changes → checksum changes.

Redirection
> → overwrite file
>> → append to file
< → input from file
Loops Keywords
break → exit loop
continue → skip iteration
What I Learned

I learned how to use Bash scripting to automate Linux tasks.  

I understand variables, conditions, loops, functions, file operations, debugging, and system commands.  

I can now build scripts for automation tasks like backups, file checks, monitoring, and system administration.  

This is the foundation for DevOps and Linux system automation.
