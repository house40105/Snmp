#!/bin/bash

# 使用 SNMP 命令從 Linux 主機收集 CPU 使用率
cpu_usage=$(snmpwalk -v2c -c acom_snmp localhost laLoad.1 | awk -F' ' '{print $4}')

# 使用 SNMP 命令從 Linux 主機收集記憶體使用率
mem_usage=$(snmpwalk -v2c -c acom_snmp localhost memAvailReal| awk -F' ' '{print $4}')
total_mem=$(snmpwalk -v2c -c acom_snmp localhost memTotalReal| awk -F' ' '{print $4}')


echo "$cpu_usage"
echo "$mem_usage"
echo "$total_mem"

#echo "$mem_usage_percentage"
# 使用 cURL 將資訊推送至 PRTG
#curl -X POST -H "Content-Type: application/json" -d '{"cpu_usage": '$cpu_usage', "mem_usage": '$mem_usage'}' https://your-prtg-server/api/sensors/12345/data

#curl -X POST -d '<prtg><result><channel>First channel</channel><value>10</value></result><result><channel>Second channel</channel><value>10</value></result></prtg>' http://125.227.161.91:5050/AF65B7AD-D8F0-4B9B-AD9C-7D48577D38E0
