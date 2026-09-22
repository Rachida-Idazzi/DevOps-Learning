#!/bin/bash
# ============================================================
# Objective: Present an interactive menu of system tasks:
#              -disk space
#              -uptime
#              -list users
#             And run the chosen one.
# ============================================================

set -euo pipefail

show_menu() {

echo "========Interactive menu======="
echo "1. Disk Space"
echo "2. Uptime"
echo "3. List Users"
echo "4. Quit"

}

while true; do 

    show_menu
    read -rp echo "Please enter your choice [1-4]:" choice
    
    case "$choice" in 
    1) 
     echo "===Disk Space==="
     df -hT
     ;;

    2)
      echo "===Uptime==="
      uptime
      ;;

    3) 
     echo "===Users==="
     who
     ;;
     






done

