# Bash Scripting Lab: Arena Challenges

## 🧾 Description
This project contains a structured set of Bash scripting challenges designed to build Linux automation skills step by step. It covers file operations, loops, conditions, functions, arguments, system monitoring, backups, and menu-driven automation. Each level increases in complexity and simulates real-world DevOps scripting tasks.

---

## Level 1: The Basics

Create a directory named Arena and inside it create:
- warrior.txt
- mage.txt
- archer.txt

Then list the contents of the Arena directory.

---

## Level 2: Variables and Loops

Script outputs numbers 1 to 10, one per line using a loop.

---

## Level 3: Conditional Statements

Check if hero.txt exists inside Arena directory:
- If yes → print "Hero found!"
- If no → print "Hero missing!"

---

## Level 4: File Manipulation

Copy all `.txt` files from Arena directory to a Backup directory.

---

## Level 5: Boss Battle - Combining Basics

Script performs:
1. Creates a directory called Battlefield
2. Creates files: knight.txt, sorcerer.txt, rogue.txt
3. Checks if knight.txt exists
4. If yes, moves it to Archive directory
5. Lists contents of Battlefield and Archive

---

## Level 6: Argument Parsing

Script that:
- Accepts a filename as argument
- Prints number of lines in the file
- If no filename is provided → prints "No file provided"

---

## Level 7: File Sorting Script

Sorts all `.txt` files in a directory by file size (smallest to largest) and displays results.

---

## Level 8: Multi-File Searcher

Searches for a word or phrase across all `.log` files in a directory and displays filenames that contain the match.

---

## Level 9: Directory Monitor Script

Monitors a directory for changes:
- File creation
- Modification
- Deletion  
Logs all changes with timestamps.

---

## Level 10: Boss Battle 2 - Intermediate Scripting

Script performs:
1. Creates Arena_Boss directory
2. Creates file1.txt to file5.txt
3. Generates random number of lines (10–20) in each file
4. Sorts files by size and displays list
5. Moves files containing "Victory" into Victory_Archive

---

## Level 11: Disk Space Monitor

Checks disk usage of a directory and alerts if usage exceeds a defined threshold.

---

## Level 12: Configuration File Parser

Reads a KEY=VALUE configuration file and prints each pair.

---

## Level 13: Backup Script with Rotation

Backs up a directory and keeps only the last 5 backups.

---

## Level 14: Interactive Menu Script

Creates a menu with options:
- Check disk space
- Show system uptime
- List users
- Run system tasks

Executes selected option.

---

## Level 15: Boss Battle 3 - Advanced Scripting

Full menu-driven automation script that:
- Checks disk space
- Shows system uptime
- Backs up Arena directory (keeps last 3 backups)
- Parses settings.conf and displays values

---

## 🧠 What I Learned

Through these challenges, I learned how to:
- Work with Linux file systems
- Write Bash scripts using variables, loops, and conditions
- Handle user input and arguments
- Automate backups and file management
- Monitor system resources
- Build interactive menu-driven scripts

This project builds a strong foundation for DevOps and Linux automation workflows.