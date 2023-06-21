# PRTG sensors with Snmp  
To set up monitoring using the PRTG platform, please follow the steps below:  

1. **Learn about PRTG monitoring platform:** Visit https://www.paessler.com/prtg to familiarize yourself with the PRTG monitoring platform and its features.

2. **Install PRTG:** Install the PRTG software on your system following the installation instructions provided by Paessler. Ensure that you meet the system requirements for running PRTG.

3. **Configure Linux SNMP monitoring:** Set up SNMP monitoring for your Linux system, including monitoring of Ping, CPU, Memory, and Disk usage. Configure the SNMP settings on your Linux machine according to the PRTG guidelines.

4. **Push information to PRTG via Linux scheduling:** Create a Linux scheduling task to push relevant information to PRTG every minute. This can be achieved by configuring a cron job or using any other suitable method to regularly send data to PRTG.

5. **Configure PRTG Sensor:** Set up an HTTP Content sensor in PRTG with two channels: CPU and Memory usage. Configure the sensor to receive the data pushed from your Linux machine.

6. **Generate PRTG Report:** Utilize PRTG's reporting feature to generate reports based on the collected monitoring data. Customize the report settings as per your requirements and schedule automated report generation if needed.

7. **Create PRTG Map:** Use the PRTG Map feature to visually represent your network or system topology. Customize the map layout and add relevant monitoring elements to provide an overview of your monitored environment.

Please refer to the PRTG documentation and user guides for detailed instructions on each step and for further configuration options available within the platform.
