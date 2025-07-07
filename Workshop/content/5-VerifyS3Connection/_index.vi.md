+++
title = "Kiểm tra"
date = 2025
weight = 5
chapter = false
pre = "<b>5. </b>"
+++

Tiếp theo chúng ta sẽ chạy thử project xem trang web đã hoạt động ổn định chưa.

1. Để chạy được project Laravel thì phải bật terminal lên.

- Nhấn tổ hợp phím **Ctrl + `** để bật terminal lên nhanh.

- Sau đó nhấn lệnh chạy **php artisan serve** 

![alt text](/images/5-Test/5-1.png)

{{% notice note%}}
  Có thể truy cập web nhanh qua **Ctrl + click trái chuột** hoặc copy đường link **http://127.0.0.1:8000/** paste vào trình duyệt.   
  Nếu như nó bị lỗi chạy không được thì bạn có thể cd vào s3upload rồi chạy lệnh lại. Có thể nó chưa vào thư mục code của mình nên chạy bị lỗi.
{{% /notice%}}


2. Sau khi vào web rồi bạn có thể chọn file bạn muốn tải lên và nhấn **Upload**. 

![alt text](/images/5-Test/5-2.png)
![alt text](/images/5-Test/5-3.png)


3. Truy cập vào S3 bucket của bạn để kiểm tra xem ảnh đã được tải lên chưa.

![alt text](/images/5-Test/5-4.png)

4. Để có thể xem được ảnh bạn có thể truy cập vào **Permissons**
![alt text](/images/5-Test/5-5.png)

- Tại **Block public access (bucket settings)** bạn **edit** 
![alt text](/images/5-Test/5-6.png)
- Và tiến hành bỏ tick **Block all public access** và **Save changes** rồi **confirm**
![alt text](/images/5-Test/5-7.png)


- Vào phần **Bucket policy** chọn edit rồi paste vào  và **Save changes**

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
  Thay mybucket1222222111 thành tên Bucket của bạn 
{{% /notice%}}

5. Vào lại phần Object và vào Bucket của bạn 
- nhấn vào file ảnh đã tải lên 

![alt text](/images/5-Test/5-9.png)

6. Vào Object URL để xem file ảnh đã tải

![alt text](/images/5-Test/5-10.png)
- Đây là hình ảnh đã tải
![alt text](/images/5-Test/5-11.png)
