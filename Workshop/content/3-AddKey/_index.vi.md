+++
title = "Thêm Accect key, Secret key, Region vào Environment Variables"
date = 2025
weight = 3
chapter = false
pre = "<b>3. </b>"
+++


Thêm access key, secret key, và region của AWS S3 vào environment variables giúp bảo mật thông tin nhạy cảm, dễ dàng quản lý cấu hình và làm cho ứng dụng di động giữa các môi trường khác nhau mà không cần thay đổi mã nguồn.

1. Truy cập biểu tượng **Window** và tìm kiếm **environment variables**.
- Chọn **Edit environment variables for your account**

![alt text](/images/3-Adding/3-1.png)

2. Tiếp theo bạn chọn **Environment Variables**.

![alt text](/images/3-Adding/3-2.png)


3. Trong bảng **Environment Variables**.


- Xem lại **Access key ID** và **Secret access key** trong file User_accessKeys.csv đã tải.

![alt text](/images/3-Adding/3-4.png)

- Quay lại ở dưới phần **System Variables** chọn **New**.

![alt text](/images/3-Adding/3-3.png)


- Nhập **AWS_ACCESS_KEY_ID** vào **variable name** và nhập key vừa nãy vào **variable value** sau đó nhấn **OK**.

![alt text](/images/3-Adding/3-5.png)



-  Tương tự bạn nhập **AWS_SECRET_ACCESS_KEY** vào **variable name** và nhập key vừa nãy vào **variable value** sau đó nhấn **OK** .

![alt text](/images/3-Adding/3-6.png)

- Nhập cho **AWS_BUCKET** vào **variable name** và nhập key vừa nãy vào **variable value** sau đó nhấn **OK**.
- **Lưu ý:** **variable value** là tên Bucket của bạn.

![alt text](/images/3-Adding/3-7.png)


- Tương tự vậy cũng điền cho **AWS_DEFAULT_REGION** mà bạn đang sử dụng sau đó nhấn **OK**.
- **Lưu ý:** điền **Variable value** cho region là region mà bạn tạo bucket s3
![alt text](/images/3-Adding/3-8.png)


4. Cuối cùng nhấn **OK** để lưu lại.

![alt text](/images/3-Adding/3-9.png)