+++
title = "Test"
date = 2025
weight = 5
chapter = false
pre = "<b>5. </b>"
+++

Next, we will test the project to see if the website is working properly.

1. To run the Laravel project, you must open the terminal.

- Press the key combination **Ctrl + `** to quickly open the terminal.

- Then press the command to run **php artisan serve**

![alt text](/images/5-Test/5-1.png)

{{% notice note%}}
You can quickly access the web by **Ctrl + left click** or copy the link **http://127.0.0.1:8000/** and paste it into the browser.

If it fails to run, you can cd to s3upload and run the command again. It may not be in your code folder, so it fails.

{{% /notice%}}

2. After accessing the web, you can select the file you want to upload and press **Upload**.

![alt text](/images/5-Test/5-2.png)
![alt text](/images/5-Test/5-3.png)

3. Go to your S3 bucket to check if the image has been uploaded.

![alt text](/images/5-Test/5-4.png)

4. To view the image, you can access **Permissons**
![alt text](/images/5-Test/5-5.png)

- At **Block public access (bucket settings)** you **edit**
![alt text](/images/5-Test/5-6.png)
- And uncheck **Block all public access** and **Save changes** then **confirm**
![alt text](/images/5-Test/5-7.png)

- Go to **Bucket policy** select edit then paste and **Save changes**

```
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Sid": "PublicReadGetObject",
			"Effect": "Allow",
			"Principal": "*",
			"Action": "s3:GetObject",
			"Resource": "arn:aws:s3:::mybucket1222222111/*"
		}
	]
}
```


![alt text](/images/5-Test/5-8.png)

{{% notice note%}}
Replace mybucket1222222111 with your Bucket name

{{% /notice%}}

5. Go back to Object and go to your Bucket

- click on the uploaded image file

![alt text](/images/5-Test/5-9.png)

6. Go to Object URL to see the uploaded image file

![alt text](/images/5-Test/5-10.png)
- This is the uploaded image
![alt text](/images/5-Test/5-11.png)