<p align="center"><img src="https://statamic.com/assets/branding/Statamic-Logo+Wordmark-Rad.svg" width="400" alt="Statamic Logo" /></p>

# Fit-TDC Web

Dự án **Fit-TDC Web**

## 🚀 Hướng dẫn cài đặt và chạy dự án

Làm theo các bước sau để cài đặt và chạy dự án trên máy của bạn:

### 1️⃣ Clone repository
```bash
git clone https://github.com/Van-Hoang-Dev/fit-tdc-web.git
cd fit-tdc-web
```

### 2️⃣ Cài đặt dependencies
- Cài đặt PHP dependencies với Composer:
```bash
composer install
```
- Cài đặt Node.js dependencies với npm:
```bash
npm install
```

### 3️⃣ Cấu hình môi trường
- Tạo file `.env` từ file mẫu `example.env`:
```bash
cp example.env .env
```

### 4️⃣ Tạo application key
```bash
php artisan key:generate
```

### 5️⃣ Import database
- Import file SQL vào MySQL để có dữ liệu ban đầu.

### 6️⃣ Chạy dự án
- Khởi động backend với Laravel:
```bash
php artisan serve
```
- Chạy frontend với Vite:
```bash
npm run dev
```

## 🎯 Công nghệ sử dụng
- **Laravel** (Backend)
- **HTML, CSS, JS** (Frontend)
- **MySQL** (Database)
- **Vite** (Build tool)

---
✨ Chúc bạn cài đặt thành công và có trải nghiệm tốt với dự án! 🚀
