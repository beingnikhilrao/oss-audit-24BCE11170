# Open Source Software Audit Project

- Student Name: Abhishek
- Registration Number: 24BCE10272
- Course: Open Source Software 
- Chosen Software: Python (PSF License)


# About This Project
This repository is the technical submission for the Open Source Audit capstone. The project involves a structured audit of a real open-source software project — covering its origin story, license analysis, Linux footprint, FOSS ecosystem, and a comparison with its proprietary alternative — alongside five shell scripts that demonstrate practical Linux and shell scripting skills.
The full written report (12–16 pages) is submitted separately as a PDF on the VITyarthi portal.

# Repository Structure
### oss-audit-24BCE10272/
### ├── README.md
### ├── script1.sh
### ├── script2.sh
### ├── script3.sh
### ├── script4.sh
### └── script5.sh

# Scripts
##  Script 1 — System Identity Report
### File: script1_system_identity.sh
### Purpose: Displays a welcome screen with key system information — the Linux distribution, kernel version, current user, home directory, system uptime, date/time, and the open-source license that covers the OS.
Shell concepts used: Variables, echo, command substitution ($()), basic output formatting.
### How to run:
- bashchmod +x script1.sh
- ./script1.sh

## Script 2 — FOSS Package Inspector
### File: script2_package_inspector.sh
### Purpose: Checks whether Python is installed on the system, retrieves its version and license info, and uses a case statement to print a short philosophy note about Python and related packages.
Shell concepts used: if-then-else, case statement, rpm -qi / dpkg -l, pipes with grep.
### How to run:
- bashchmod +x script2.sh
- ./script2.sh

## Script 3 — Disk and Permission Auditor
### File: script3_disk_auditor.sh
### Purpose: Loops through a list of important system directories (/etc, /var/log, /home, /usr/bin, /tmp) and reports the disk usage, owner, and permissions of each. Also checks whether Python's site-packages or config directory exists.
Shell concepts used: for loop, df, ls -ld, awk, du.
### How to run:
- bashchmod +x script3.sh
- ./script3.sh

## Script 4 — Log File Analyzer
### File: script4_log_analyzer.sh
### Purpose: Reads a specified log file line by line, counts how many lines contain a given keyword (default: error), and prints a summary along with the last 5 matching lines.
Shell concepts used: while read loop, if-then, counter variables, command-line arguments ($1, $2), grep.
### How to run:
- bashchmod +x script4.sh

- Basic usage (searches for 'error' by default)
./script4.sh /var/log/syslog

- Custom keyword
./script4.sh /var/log/syslog WARNING
Dependencies: A readable log file on the system (e.g., /var/log/syslog on Debian/Ubuntu or /var/log/messages on RHEL/Fedora).

## Script 5 — Open Source Manifesto Generator
### File: script5_manifesto_generator.sh
### Purpose: Interactively asks the user three questions about their relationship with open source, then generates a personalised philosophy statement and saves it to a .txt file named after the current user.
Shell concepts used: read for user input, string concatenation, writing to a file with > and >>, date command, aliases (demonstrated via comments).
### How to run:
- bashchmod +x script5.sh
- ./script5.sh
The output is saved as manifesto_Abhishek.txt in the current directory.

- Running All Scripts
To make all scripts executable at once:
- bashchmod +x *.sh
All scripts are written for bash and tested on Linux. They require no external dependencies beyond standard GNU coreutils and bash (version 4+).

# Dependencies
ToolPurposeUsually available onbashScript interpreterAll Linux distrosuname, uptime, whoami, dateSystem info (Script 1)All Linux distrosrpm or dpkgPackage inspection (Script 2)RHEL/Fedora or Debian/Ubuntudu, ls, awkDisk/permission audit (Script 3)All Linux distrosgrepLog analysis (Script 4)All Linux distros

Note: Script 2 uses rpm by default. If you are on a Debian/Ubuntu system, replace rpm -qi with dpkg -l and use the package name python3. Python is typically pre-installed on most Linux distributions.
