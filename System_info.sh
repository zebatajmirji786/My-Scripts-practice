
#!/bin/bash

set -euo pipefail

host() {
    echo "Hostname: $(hostname)"
    echo "OS Info:"
    cat /etc/os-release
}

uptime_info() {
    echo "Uptime: $(uptime)"
}

disk_usage() {
    du -xhd1  / 2>/dev/null | sort -rh | head -5 || true
}

memory_usage() {
    echo "Memory:"
    free -mh
}

top_cpu() {
    ps aux --sort=-%cpu | head -6 || true
}

main() {
    echo "========== SYSTEM INFORMATION =========="

    echo
    echo "---------- HOST AND OS ----------"
    host

    echo
    echo "---------- UPTIME ----------"
    uptime_info

    echo
    echo "---------- TOP 5 DISK USAGE ----------"
    disk_usage

    echo
    echo "---------- MEMORY USAGE ----------"
    memory_usage

    echo
    echo "---------- TOP 5 CPU PROCESSES ----------"
    top_cpu
}

main
