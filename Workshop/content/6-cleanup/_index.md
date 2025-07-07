+++
title = "Cleaning Up Resources"
date = 2025
weight = 6
chapter = false
pre = "<b>6. </b>"
+++

At the end of this workshop, we will clean up all the resources we have created!

1. Delete S3 Bucket: Be careful when deleting a bucket, as it will also delete all the objects stored inside. Make sure you have a backup if needed.

- Locate the S3 Bucket you created.

- Select the Bucket by clicking on **Bucket name** and select **Delete**.
![alt text](/images/6-clean/6-1.png)
- If the Bucket contains objects, you can click the **Empty** button to clean up that object.

- Fill in **permanently delete** and **Empty** to delete.
![alt text](/images/6-clean/6-2.png)
- After deleting the objects will look like this.
![alt text](/images/6-clean/6-3.png)
- And go back to select **Bucket** and **Delete** the Buckets. Fill in the Bucket name and Delete.

![alt text](/images/6-clean/6-4.png)
2. Delete IAM User
- Access IAM and select the user name you want to delete.
- Press **deactivated Access key**
- Press **Delete** and confirm deletion.
![alt text](/images/6-clean/6-5.png)