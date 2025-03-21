#!/bin/bash

FILE="/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode"

if [ ! -f "$FILE" ]; then
  notify-send "Battery Toggle" "Conservation mode not available."
  exit 1
fi

MODE=$(cat "$FILE")
if [ "$MODE" = "1" ]; then
  echo 0 | sudo /usr/bin/tee "$FILE" > /dev/null
  notify-send "Battery Mode" "Charging to 100%"
else
  echo 1 | sudo /usr/bin/tee "$FILE" > /dev/null
  notify-send "Battery Mode" "Charging limited to 60%"
fi
