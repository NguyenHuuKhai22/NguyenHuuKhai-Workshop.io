+++
title = "Create S3 Bucket"
date = 2025
weight = 3
chapter = false
pre = "<b>2.3. </b>"
+++

Last but not least, we will need an **S3 Bucket** to store the image data. **S3 Bucket** is a great choice for storing image data due to its scalability, durability, and cost-effectiveness.

1. Navigate to the S3 site by typing S3 in the service search bar and select the ‘S3’ service

![alt text](/images/2-Preparation/2-3-1.png)

2. Select **Create Bucket** to create a new S3 Bucket.

![alt text](/images/2-Preparation/2-3-2.png)

3. In **Create Bucket**
{{% notice note %}}
You can name it differently as you like!
{{% /notice %}}
Note: because Bucket name is globally unique, using Bucket name as above will appear the text: Bucket with the same name already exists. Therefore, it is necessary to add a number after it so that your Bucket name matches the policy.
- The default Bucket type is **General purpose**
- Enter the Bucket name
- Then select **ACLs enabled**

![alt text](/images/2-Preparation/2-3-3.png)

4. Review the S3 Bucket creation information and click **Create Bucket**.

![alt text](/images/2-Preparation/2-3-4.png)

5. View the created **S3 Bucket**.

![alt text](/images/2-Preparation/2-3-5.png)