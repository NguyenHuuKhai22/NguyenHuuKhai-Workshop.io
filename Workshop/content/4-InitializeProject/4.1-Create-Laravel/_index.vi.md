+++
title = "Tạo Laravel"
date = 2025
weight = 1
chapter = false
pre = "<b>4.1. </b>"
+++

Đầu tiên chúng ta sẽ khởi tạo một Project Laravel bằng lệnh

1. Mở Visual Studio lên chọn **Open Folder** mới tạo

![alt text](/images/4-Create-Project/4.1-Create-Laravel/4-1-1.png)

2. Dùng lệnh **composer create-project laravel/laravel s3upload** để khởi tạo Project Laravel

![alt text](/images/4-Create-Project/4.1-Create-Laravel/4-1-2.png)

- Đợi 1-2  phút khởi tạo xong project rồi dùng lệnh **cd s3upload** để vào project.

![alt text](/images/4-Create-Project/4.1-Create-Laravel/4-1-3.png)

3. Cuối cùng cài đặt **AWS SDK cho Laravel**.
- Laravel sử dụng gói **league/flysystem-aws-s3-v3** để hỗ trợ **S3**.
- Dùng lệnh **composer require league/flysystem-aws-s3-v3 "^3.0"** và đợi 1-2 phút để chạy xong.

![alt text](/images/4-Create-Project/4.1-Create-Laravel/4-1-4.png)



