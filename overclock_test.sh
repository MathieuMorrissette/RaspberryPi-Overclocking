#!/bin/bash
clear

# show CPU frequency & temperature
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq
vcgencmd measure_temp

# quick sysbench to force cpu to turbo
sysbench --test=cpu --cpu-max-prime=1000 --num-threads=4 run >/dev/null 2>&1

#show CPU frequency
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq

# test cpu stability
sysbench --test=cpu --cpu-max-prime=50000 --num-threads=4 run

# show CPU frequency & temperature
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq
vcgencmd measure_temp
