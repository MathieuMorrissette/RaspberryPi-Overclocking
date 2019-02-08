# Information
Using a Raspberry Pi 3 B+ with smraza case and fan


# Monitor Temperature
```
while true ; do vcgencmd measure_temp ; sleep 1 ; done
```

# Final Results
It crashed at 1.6Ghz, I had to move it back to 1.575Ghz

# Final Config

```
arm_freq=1575
gpu_freq=500
over_voltage=6
```

### Source
https://eltechs.com/overclock-raspberry-pi-3/

https://www.youtube.com/watch?v=SWl0n-uNdLc
