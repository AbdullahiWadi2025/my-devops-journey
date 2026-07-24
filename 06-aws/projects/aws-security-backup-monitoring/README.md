# AWS Security & Backup Monitoring Service

This project demonstrates a complete setup for **AWS Security & Backup Monitoring**, including automated backups, real-time monitoring, alerts, and reporting. It’s ideal for IT professionals or cloud engineers managing client data securely.

***Architecture Diagram***
 <img width="1171" height="365" alt="AWS backup project diagram" src="https://github.com/user-attachments/assets/6ada3ea7-12dd-494e-8f5a-8efcd303adbb" />


## Services Used
- **AWS Backup** – Automated backup for EC2, RDS, S3
- **CloudWatch** – Monitor backup jobs and instance metrics
- **SNS (Simple Notification Service)** – Email notifications for alerts
- **Trusted Advisor** – Security, cost, and fault-tolerance insights
- **IAM** – Roles and permissions management

## Setup Steps

### Step 1: AWS Account Setup
- Create or use existing AWS account
- Ensure IAM admin access

  
***IAM User***
<img width="1435" height="650" alt="Screenshot 2025-10-16 at 6 36 14 PM" src="https://github.com/user-attachments/assets/99e5dfb1-e2ff-42eb-828c-236da3a3d256" />


### Step 2: Configure AWS Backup
- Create a backup plan for EC2, RDS, and S3
- Set daily and weekly backup schedules
- Assign retention policies (daily: 7–14 days, weekly: 30 days)
- Assign resources and IAM roles

***AWS Backup Plan*** 
<img width="998" height="697" alt="Critical Backup " src="https://github.com/user-attachments/assets/b75ac948-c9da-4a59-9fa8-271469b23c73" />

***Critical Daily Backups*** 
<img width="997" height="704" alt="Backup plan" src="https://github.com/user-attachments/assets/78151bbd-ab7a-4668-ae49-9c215952fabd" />


### Step 3: CloudWatch Alarms
- Monitor failed backups (`BackupJobsFailed`) from AWS Backup
- Monitor EC2 metrics (CPU, disk, etc.) and S3/IAM changes
- Configure SNS for email notifications on backup failures or other issues

***CloudWatch Backup Failed Alarm***
<img width="1425" height="687" alt="Cloudwatch backupfailed alarm" src="https://github.com/user-attachments/assets/e98825cc-a57c-46d0-ba73-2b2cfc2a07b0" />

***SNS Subscription Confirmed***  
<img width="660" height="288" alt="SNS Subscription " src="https://github.com/user-attachments/assets/ccbac52c-9047-4640-a110-6e0b17120762" />

***SNS Email Notification – Backup Failed Alert***:
<img width="1293" height="367" alt="Email Notification backup failed" src="https://github.com/user-attachments/assets/8a5ff36f-5414-466e-8019-495bfbcd350c" />


### Step 4: Run Trusted Advisor
- Check security (open S3 buckets, unused keys)
- Evaluate fault tolerance (RDS replication, backup status)
- Analyze cost optimization (idle or oversized resources)
- Export recommendations for reporting

### Step 5: Monthly Client Report
- Include backup status, security alerts, and recommendations
  
  ***screenshots for clarity***
   <img width="1439" height="582" alt="Trust Advisor report" src="https://github.com/user-attachments/assets/93d1628e-4e45-4ea5-8309-c6f0c307c4d0" />



---

## ✅ Summary
This setup ensures **data protection, real-time monitoring, and actionable insights** for clients.  
It combines AWS Backup, CloudWatch, SNS, Trusted Advisor, and IAM to create a robust, automated cloud backup and monitoring solution.
