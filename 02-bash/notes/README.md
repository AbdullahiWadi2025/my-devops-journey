# 📘 Bash & Linux Notes

## 🧾 Description
This document contains my Bash and Linux notes covering scripting fundamentals, control structures, file operations, functions, debugging, and automation concepts. It serves as a quick reference for writing and understanding Bash scripts used in Linux and DevOps environments.

## 🧪 Example Use Case
A simple Bash script example that checks a file and prints a message:

```bash id="example1"
#!/bin/bash

file="test.txt"

if [ -f "$file" ]
then
    echo "File exists"
else
    echo "File does not exist"
fi
Shebang (#!)

Tells Linux which interpreter runs the script.

#!/bin/bash

Make script executable:

chmod +x file.sh

Run script:

./file.sh
bash file.sh
sh file.sh
Comments
# single line comment

Multi-line:

: '
multi line comment
'
Parameters
$1 = first argument
$2 = second argument
$@ = all arguments
$# = number of arguments
Arithmetic
echo $((5 + 3))
If Statements
if [ condition ]
then
    echo "hello"
fi
Operators
-eq = equal
-ne = not equal
-gt = greater than
-lt = less than
-ge = greater or equal
-le = less or equal

Logical:

&& = AND
|| = OR
else / elif
else = runs if condition is false
elif = check another condition
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
break = stop loop
continue = skip iteration
Functions
greet() {
    echo "Hello $1"
}

greet "Ahmed"
Empty Check
if [ -z "$name" ]
then
    echo "Empty"
fi
Command Output
files=$(ls)
Exit Status
$? = last command result
0 = success
anything else = error
Debugging
set -e  # stop on error
set -u  # error if variable not set
set -x  # show commands
Pipe Fail
set -o pipefail
Environment Variables
$PATH
$LANG
Write to File
echo "hello" >> file.txt

= append

File Checksum
sha256sum file.txt
md5sum file.txt

If file changes → checksum changes


---