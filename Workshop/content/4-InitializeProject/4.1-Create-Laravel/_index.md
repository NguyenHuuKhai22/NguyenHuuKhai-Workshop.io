+++
title = "Create Laravel"
date = 2025
weight = 1
chapter = false
pre = "<b>4.1. </b>"
+++

First, we will initialize a Laravel Project using the command

1. Open Visual Studio and select **Open Folder** newly created

![alt text](/images/4-Create-Project/4.1-Create-Laravel/4-1-1.png)

2. Use the command **composer create-project laravel/laravel s3upload** to initialize the Laravel Project

![alt text](/images/4-Create-Project/4.1-Create-Laravel/4-1-2.png)

- Wait 1-2 minutes to initialize the project and then use the command **cd s3upload** to enter the project.

![alt text](/images/4-Create-Project/4.1-Create-Laravel/4-1-3.png)

3. Finally, install **AWS SDK for Laravel**.

- Laravel uses the package **league/flysystem-aws-s3-v3** to support **S3**.

- Use the command **composer require league/flysystem-aws-s3-v3 "^3.0"** and wait 1-2 minutes for it to finish.

![alt text](/images/4-Create-Project/4.1-Create-Laravel/4-1-4.png)