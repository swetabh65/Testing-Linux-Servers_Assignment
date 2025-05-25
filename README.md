# Testing-Linux-Servers_Assignment

#Task 1:

🛠️ Step-by-Step Implementation Guide

📁 Step 0: Prepare Monitoring Directory
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


## 📌 Summary

| Requirement                         | Status      |
|------------------------------------|-------------|
| Installed htop or nmon             | ✅          |
| Monitored disk space with df & du  | ✅          |
| Identified high CPU/Memory Proc.   | ✅          |
| Set up Cron-based logging          | ✅          |
| Documented monitoring inst.        | ✅          |


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
***********************************************************************************************************************************************************************
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Task 2:

🛠️ Step-by-Step Implementation Guide


📁 Step 0: Create User Accounts

![image](https://github.com/user-attachments/assets/d0649ec8-5777-4746-8bf2-72d3189fb6e2)



📁 Step 1: Set a strong initial password

![image](https://github.com/user-attachments/assets/f9c5cae8-039e-486a-80b3-534c5644bd41)


A strong password can be entered manually or can be generated through

![image](https://github.com/user-attachments/assets/ebe7cb82-3dca-4505-9ea7-28cec8673555)



📁 Step 2: Create Dedicated Workspace Directories

![image](https://github.com/user-attachments/assets/97726a83-265c-4cf7-bd3b-4d32932adc98)


📁 Step 3: Set the Proper Ownership and Permissions, ensuring only Owner Access and No Group/World Access

![image](https://github.com/user-attachments/assets/558827b8-c456-4263-b176-3a6bf3eb1467)



📁 Step 4: Enforce Password Expiry Policy (should expire in 30 Days)

![image](https://github.com/user-attachments/assets/1ee6a93a-4501-4b89-841d-c2d07825a13e)


📁 Step 5: Enforce Password Complexity Policy

Edit the file from the location mentioned below:
![image](https://github.com/user-attachments/assets/05e2711b-8652-4cb0-aa80-9462ef36e45d)


Check and update the line below in the file:
![image](https://github.com/user-attachments/assets/3adfa5ac-3b21-42ed-b6b8-942b57446e84)







## 📌 Summary

| Requirement                         | Status      |
|------------------------------------|-------------|
| Users created with secure shells   | ✅          |
| Isolated workspace directories     | ✅          |
| Restricted directory access        | ✅          |
| Password policy: expiry + complex  | ✅          |
| Documentation provided             | ✅          |




-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
***********************************************************************************************************************************************************************
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Task 3:

🛠️ Step-by-Step Implementation Guide

📁 Step 0: Create Backup Destination Directory

Here Directory is being shared, though ownership is retained by the  root for security
![image](https://github.com/user-attachments/assets/4690ee89-0cba-4cd1-a846-6ba7a262c0a6)



📁 Step 1: Create Backup Scripts

Create Sarah's Apache Backup Script, and the file location would be: /usr/local/bin/apache_backup.sh
![image](https://github.com/user-attachments/assets/9ce88011-22d8-4cd1-a0b4-49ae174b4979)


Create Mike's Nginx Backup Script, and the file location would be: /usr/local/bin/nginx_backup.sh
![image](https://github.com/user-attachments/assets/983c3451-b860-41b0-974b-c15da2c922e5)


Set Executable Permissions for both the files
![image](https://github.com/user-attachments/assets/086d97e4-6249-44b3-bade-a77e77e581dd)



📁 Step 2: Schedule a Cron Job to run every Tuesday at 12:00 AM

Switch to Sarah's user account
![image](https://github.com/user-attachments/assets/b3cb357f-ae78-4808-bae4-57bb37cd8606)

Edit the crontab for Sarah

![image](https://github.com/user-attachments/assets/ca65bda5-186c-41bc-a2b6-dc7b7eb9d89d)

To check if the job was added successfully:
![image](https://github.com/user-attachments/assets/5d7b6a63-a51f-4a1e-9864-5451f6c40da3)


Use exit to log out from Sarah's User Account. Switch to Mike's user account
![image](https://github.com/user-attachments/assets/16e28f0c-7c99-4887-9699-34619a3bde86)

Edit the crontab for Mike
![image](https://github.com/user-attachments/assets/2925f523-ddff-46df-9024-8ba4b765a856)

To check if the job was added successfully:
![image](https://github.com/user-attachments/assets/034c104e-e24b-4483-95a7-94258bca5ac2)



📁 Step 3: Verification of Backups

Backup Verification for Mike:
![image](https://github.com/user-attachments/assets/1493eb02-ff17-44a6-97a2-51dd8e586fa7)


Backup verification for Sara:
![image](https://github.com/user-attachments/assets/7b529513-f837-472d-b22c-37235851f461)


## ✅ Summary

| Task                                | Completed |
|-------------------------------------|-----------|
| Apache and Nginx backup scripts     | ✅        |
| Cron job setup for Tuesday 12 AM    | ✅        |
| Backup file naming conventions      | ✅        |
| Verification logs generated         | ✅        |

