#!/bin/bash
usage=$(df / | tail -1 | awk '{print $5}' | tr -d '%')

if [ "$usage" -ge 80 ]; then
  echo "⚠️ Disk usage is high: ${usage}%"
else
  echo "✅ Disk usage is normal: ${usage}%"
fi
