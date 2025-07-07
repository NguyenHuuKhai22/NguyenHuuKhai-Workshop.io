+++
title = "Tạo S3 Bucket"
date = 2025
weight = 3
chapter = false
pre = "<b>2.3. </b>"
+++

Cuối cùng nhưng không kém phần quan trọng, chúng ta sẽ cần một **S3 Bucket** để lưu trữ dữ liệu hình ảnh. **S3 Bucket** là lựa chọn tuyệt vời để lưu trữ dữ liệu hình ảnh do khả năng mở rộng, độ bền và hiệu quả về chi phí.


1. Để điều hướng đến trang S3 bằng cách nhập S3 vào thanh tìm kiếm dịch vụ và chọn dịch vụ ‘S3’

![alt text](/images/2-Preparation/2-3-1.png)

2. Tại trang **S3**

- Chọn **Create Bucket** để tạo S3 Bucket mới.

![alt text](/images/2-Preparation/2-3-2.png)

3. Trong **Create Bucket** 
{{% notice note %}}
Bạn có thể tự đặt tên khác theo ý của các bạn nhé!
{{% /notice %}}
Lưu ý: Vì Bucket name là duy nhất trên mức độ toàn cầu, nếu sử dụng tên giống như trên sẽ xuất hiện thông báo: “Bucket with the same name already exists”. Do đó, cần thêm vài số phía sau để Bucket name của bạn phù hợp với policy.
- Mặc định Bucket type là **General purpose**
- Nhập tên Bucket name vào
- Sau chọn **ACLs enabled**

![alt text](/images/2-Preparation/2-3-3.png)


4. Xem lại thông tin tạo S3 Bucket và nhấp vào **Create Bucket**.

![alt text](/images/2-Preparation/2-3-4.png)

5. Xem **S3 Bucket** đã tạo.

![alt text](/images/2-Preparation/2-3-5.png)