#!/usr/bin/env python3

import json
import os
import platform
import socket
import shutil
from datetime import datetime

report = {
    "timestamp": datetime.now().isoformat(timespec="seconds"),
    "hostname": socket.gethostname(),
    "os": platform.platform(),
    "kernel": platform.release(),
    "cpu_count": os.cpu_count(),
}

total, used, free = shutil.disk_usage("/")
report["root_disk_gb"] = {
    "total": round(total / 1024**3, 2),
    "used": round(used / 1024**3, 2),
    "free": round(free / 1024**3, 2),
}

print(json.dumps(report, indent=2))
