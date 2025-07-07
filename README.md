# AWS S3 File Upload Workshop by Laravel

## 📋 Tổng quan

Workshop này hướng dẫn bạn cách tích hợp Amazon S3 (Simple Storage Service) với ứng dụng Laravel để tạo hệ thống upload file. Workshop được thiết kế để giúp bạn hiểu và thực hành việc sử dụng AWS S3 trong các ứng dụng web hiện đại.

## 🎯 Mục tiêu học tập

Sau khi hoàn thành workshop này, bạn sẽ có thể:
- Hiểu về Amazon S3 và các tính năng chính
- Tạo và cấu hình IAM User với quyền truy cập S3
- Thiết lập S3 Bucket và cấu hình bảo mật
- Tích hợp AWS S3 với ứng dụng Laravel
- Xây dựng giao diện upload file
- Kiểm tra và xác minh kết nối S3
- Dọn dẹp tài nguyên AWS sau khi hoàn thành

## 📚 Nội dung workshop

### 1. **Giới thiệu** 
- Tìm hiểu về Amazon S3 và các tính năng chính
- Hiểu về cấu trúc Bucket và Object trong S3
- Các lợi ích của việc sử dụng S3

### 2. **Chuẩn bị**
- **2.1** Tạo IAM User với quyền truy cập S3
- **2.2** Tạo Secret Key cho IAM User
- **2.3** Tạo S3 Bucket để lưu trữ file

### 3. **Cấu hình Environment Variables**
- Thiết lập AWS Access Key, Secret Key
- Cấu hình Region và Bucket name
- Bảo mật thông tin nhạy cảm

### 4. **Khởi tạo dự án**
- **4.1** Tạo dự án Laravel mới
- **4.2** Cấu hình source code để tích hợp S3
- **4.3** Tạo giao diện frontend cho upload file

### 5. **Kiểm tra kết nối S3**
- Chạy ứng dụng Laravel
- Test chức năng upload file
- Cấu hình public access cho S3 Bucket
- Xác minh file đã được upload thành công

### 6. **Dọn dẹp tài nguyên**
- Xóa S3 Bucket và các object bên trong
- Xóa IAM User và Access Key
- Đảm bảo không có chi phí phát sinh

## 🛠️ Yêu cầu hệ thống

### Phần mềm cần thiết:
- **Laravel** (phiên bản mới nhất)
- **Composer** (PHP package manager)
- **PHP** (phiên bản 8.1 trở lên)
- **Web browser** (Chrome, Firefox, Safari, Edge)

### Tài khoản AWS:
- Tài khoản AWS với quyền truy cập IAM và S3
- Khả năng tạo IAM User và S3 Bucket

## 🚀 Cách sử dụng

### 1. Cài đặt Hugo (nếu muốn chạy documentation locally)
```bash
# Cài đặt Hugo (tham khảo: https://gohugo.io/getting-started/installing/)
# Chạy server development
hugo server
```

### 2. Truy cập documentation
- Mở trình duyệt và truy cập: `http://localhost:1313`
- Hoặc xem trực tiếp từ thư mục `public/`

### 3. Thực hành theo hướng dẫn
- Làm theo từng bước trong workshop
- Đảm bảo hoàn thành mỗi phần trước khi chuyển sang phần tiếp theo

## 📁 Cấu trúc thư mục

```
Workshop/
├── content/                    # Nội dung workshop
│   ├── 1-Introduce/           # Giới thiệu về S3
│   ├── 2-Preparation/         # Chuẩn bị AWS resources
│   ├── 3-AddKey/              # Cấu hình environment variables
│   ├── 4-InitializeProject/   # Tạo dự án Laravel
│   ├── 5-VerifyS3Connection/  # Test và verify
│   └── 6-cleanup/             # Dọn dẹp tài nguyên
├── static/                     # Tài nguyên tĩnh (ảnh, CSS, JS)
├── layouts/                    # Template HTML
├── themes/                     # Hugo theme
└── public/                     # File build (không chỉnh sửa)
```

## 🌐 Hỗ trợ đa ngôn ngữ

Workshop hỗ trợ 2 ngôn ngữ:
- **Tiếng Anh**: File `_index.md`
- **Tiếng Việt**: File `_index.vi.md`

## ⚠️ Lưu ý quan trọng

1. **Bảo mật**: Không bao giờ commit Access Key và Secret Key vào source code
2. **Chi phí**: S3 có thể phát sinh chi phí, hãy dọn dẹp tài nguyên sau khi hoàn thành
3. **Quyền truy cập**: Chỉ cấp quyền tối thiểu cần thiết cho IAM User
4. **Backup**: Luôn backup dữ liệu quan trọng trước khi xóa

## 🔗 Tài liệu tham khảo

- [Amazon S3 Documentation](https://docs.aws.amazon.com/s3/)
- [Laravel Documentation](https://laravel.com/docs)
- [AWS IAM Best Practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)



---

**Thời gian ước tính**: 2-3 giờ  
**Độ khó**: Trung bình  
**Yêu cầu kiến thức**: Cơ bản về AWS, Laravel, PHP 