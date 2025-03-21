#!/bin/sh

FILE="/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode"

if [ "$(cat "$FILE")" = "1" ]; then
  echo "0" | sudo tee "$FILE" > /dev/null
  notify-send "Charging Mode" "Charging to 100%"
else
  echo "1" | sudo tee "$FILE" > /dev/null
  notify-send "Charging Mode" "Charging limited to 60%"
fi
