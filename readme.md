# DevOps Monitoring Project

## 🚀 Overview

This project is a simple DevOps monitoring system built using Linux shell scripting. It helps monitor system health, network connectivity, website status, and performs automated backups.

It is designed for learning Linux, networking, automation, and Jenkins CI/CD basics.

---

## 📌 Features

### 1. System Health Monitoring
- CPU usage
- Memory usage
- Disk usage
- Running processes

### 2. Network Monitoring
- Ping test (connectivity check)
- DNS lookup
- Open ports check

### 3. Website Monitoring
- Checks HTTP status using curl
- Detects if website is UP or DOWN

### 4. Backup Automation
- Creates compressed backup using tar
- Stores backups with date timestamp

### 5. Master Script
- Runs all monitoring scripts in one command

---

## 🛠️ Tech Stack

- Linux (WSL / Ubuntu)
- Shell Scripting (Bash)
- Networking Commands
- Jenkins (CI/CD basics)
- Git (version control)

---

project structure

🧠 1. HEALTH CHECK SCRIPT
✅ What YOU WROTE / BUILT
health.sh

It ran commands like:

hostname
free -h
df -h
uptime
ps aux --sort=-%mem
📥 WHAT YOU GOT (OUTPUT)
Hostname:
DESKTOP-910IILJ

Memory Usage:
Mem: 7.6Gi total, 1.0Gi used, 6.1Gi free

Disk Usage:
C:\ 198G 188G 96% used

CPU Load:
load average: 0.27, 0.08, 0.02

Top Processes:
jenkins (Java) using highest memory
🧠 MEANING

✔ System is healthy
⚠ Disk is almost full (96%)
✔ Jenkins is running
✔ CPU is idle

🌐 2. NETWORK CHECK SCRIPT
✅ WHAT YOU WROTE
ping google.com
nslookup google.com
ss -tuln
📥 WHAT YOU GOT
✔ Ping output
0% packet loss
avg ~22 ms

👉 Internet is WORKING

✔ DNS output
google.com → 142.250.x.x

👉 DNS is WORKING

✔ Open ports
*:8080 → Jenkins
*:22 → SSH

👉 Services are RUNNING

🧠 MEANING

✔ Network is healthy
✔ DNS is working
✔ Jenkins port is open

🌐 3. WEBSITE CHECK SCRIPT
❌ YOUR ORIGINAL LOGIC
if [ $STATUS -eq 200 ]
then
   echo "Website UP"
else
   echo "Website DOWN"
fi
📥 WHAT YOU GOT
Status Code: 301
Website DOWN
🧠 REAL MEANING
Code	Meaning
200	OK
301	Redirect (NOT DOWN)

👉 Website is actually UP
👉 Your script logic was too strict

✅ FIX YOU NEEDED
if [[ $STATUS -ge 200 && $STATUS -lt 400 ]]
💾 4. BACKUP SCRIPT
✅ WHAT YOU WROTE
tar -czvf backup-2026-05-30.tar.gz .
📥 WHAT YOU GOT
backup/
project-2026-05-30.tar.gz
health.sh
network.sh
website.sh
🧠 MEANING

✔ Backup SUCCESS
✔ Files compressed properly

🔁 5. MASTER SCRIPT (run_all.sh)
✅ WHAT YOU WROTE
./health.sh
./network.sh
./website.sh
./backup.sh
📥 WHAT YOU GOT
Running health check ✔
Running network check ✔
Running website check ✔
Running backup ✔
⚠️ 6. JENKINS ERROR YOU GOT
❌ ERROR
./run_all.sh: not found
🧠 MEANING

👉 Jenkins workspace did NOT have your files

FIX YOU DID
cd $WORKSPACE
./run_all.sh
💥 FINAL SUMMARY (VERY IMPORTANT)
🧠 WHAT YOU BUILT

✔ Linux monitoring system
✔ Network troubleshooting tool
✔ Website health checker
✔ Backup automation
✔ Jenkins execution attempt
✔ Real DevOps debugging experience

🏁 ONE LINE INTERVIEW ANSWER

I built a Linux-based DevOps monitoring system using shell scripting. It checks system health, network connectivity, DNS resolution, website status, and performs automated backups. I also integrated it with Jenkins but faced workspace and path issues, which I resolved using $WORKSPACE and proper script placement.
