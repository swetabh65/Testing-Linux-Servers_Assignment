# Testing-Linux-Servers_Assignment

#Task 1:

🛠️ Step-by-Step Implementation Guide

📁 Step 0: Prepare Monitoring Directory!
![image](https://github.com/user-attachments/assets/542512b8-79f6-46f0-99d9-36ceba8b915a)


📁 Step 1: Install and Configure Monitoring Tools

🔹 Option A: Install htop
sudo apt update && sudo apt install -y htop
Run: htop


![image](https://github.com/user-attachments/assets/89cfabaa-ea28-4be2-96e8-b9bd6306cb98)

🔹 Option B: Install nmon
sudo apt install -y nmon
Run: nmon

![image](https://github.com/user-attachments/assets/c88bfb51-5db6-4531-b4e8-858830c06e2f)

The above screen presentation is for CPU Long-Term with Top-process\

📁 Step 2: Disk Usage Monitoring with df and du


🔸 Check Disk Space with df
df -h

![image](https://github.com/user-attachments/assets/86e4c0a0-d81d-44f6-9d2d-875988eadda2)



🔸 Identify Large Directories with du
sudo du -ah /home | sort -rh | head -n 20 

![image](https://github.com/user-attachments/assets/3469c173-8480-446d-937f-142263055e5e)


📁 Step 3: Identify Resource-Intensive Processes

🔸 Capture Top 10 CPU & Memory Using Processes
Top 10 CPU Consumers
![image](https://github.com/user-attachments/assets/fe46d5e9-dc49-4ba1-9d45-1b9dca315fa4)

Top 10 Memory Consumers
![image](https://github.com/user-attachments/assets/0d0b08d0-1f17-482a-9d0f-ffed2cdebba4)


📁 Step 4: Identify Resource-Intensive Processes

Create a Shell Script for monitoring
sudo nano /usr/local/bin/system_monitoring.sh

Now, make it executable
sudo chmod +x /usr/local/bin/system_monitoring.sh
Then add a Cron job for the automation task to run every 10 minutes
crontab -e
![image](https://github.com/user-attachments/assets/a80e4949-9bc3-41b7-b4dc-3621d411ab08)




📁 Step 5: Identify Resource-Intensive Processes

Created the Monitoring Guide in text format
![image](https://github.com/user-attachments/assets/c63431f4-6d66-4c8c-898d-9af143a5dbdf)







