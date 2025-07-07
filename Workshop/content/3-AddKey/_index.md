+++
title = "Add Accect key, Secret key, Region to Environment Variables"
date = 2025
weight = 3
chapter = false
pre = "<b>3. </b>"
+++

Adding AWS S3 access key, secret key, and region to environment variables helps secure sensitive information, easily manage configurations, and make applications portable between different environments without changing the source code.

1. Go to the **Window** icon and search for **environment variables**.

- Select **Edit environment variables for your account**

![alt text](/images/3-Adding/3-1.png)

2. Next, select **Environment Variables**.

![alt text](/images/3-Adding/3-2.png)

3. In the **Environment Variables** table.

- Review the **Access key ID** and **Secret access key** in the downloaded User_accessKeys.csv file.

![alt text](/images/3-Adding/3-4.png)

- Go back to the **System Variables** section and select **New**.

![alt text](/images/3-Adding/3-3.png)

- Enter **AWS_ACCESS_KEY_ID** into **variable name** and enter the previous key into **variable value** then press **OK**.

![alt text](/images/3-Adding/3-5.png)

- Similarly, enter **AWS_SECRET_ACCESS_KEY** into **variable name** and enter the previous key into **variable value** then press **OK** .

![alt text](/images/3-Adding/3-6.png)

- Enter **AWS_BUCKET** into **variable name** and enter the previous key into **variable value** then press **OK**.

- **Note:** **variable value** is your Bucket name.

![alt text](/images/3-Adding/3-7.png)

- Similarly, fill in **AWS_DEFAULT_REGION** that you are using then press **OK**.

- **Note:** fill in **Variable value** for the region that you created the s3 bucket
![alt text](/images/3-Adding/3-8.png)

4. Finally press **OK** to save.

![alt text](/images/3-Adding/3-9.png)