# eCommerce Shop

Dự án e-commerce được xây dựng bằng Next.js, Node.js và MySQL.

## Hướng dẫn cài đặt và chạy dự án

### 1. Cài đặt các công cụ cần thiết

- Cài đặt [Node.js và npm](https://nodejs.org/en)
- Cài đặt [MySQL](https://dev.mysql.com/downloads/installer/)
- (Tùy chọn) Cài đặt [HeidiSQL](https://www.heidisql.com) để quản lý database

### 2. Cài đặt và cấu hình dự án

1. **Tải và giải nén dự án**

2. **Tạo file môi trường**
   - Tạo file `.env` trong thư mục gốc với nội dung:
   ```
   DATABASE_URL="mysql://username:password@localhost:3306/singitronic_nextjs"
   NEXTAUTH_SECRET=12D16C923BA17672F89B18C1DB22A
   NEXTAUTH_URL=http://localhost:3000
   ```
   - Tạo file `.env` trong thư mục `server` với nội dung:
   ```
   DATABASE_URL="mysql://username:password@localhost:3306/singitronic_nextjs"
   ```
   (Thay `username` và `password` bằng thông tin MySQL của bạn)

3. **Cài đặt dependencies**
   ```bash
   # Trong thư mục gốc
   npm install

   # Trong thư mục server
   cd server
   npm install
   ```

4. **Khởi tạo database**
   ```bash
   # Trong thư mục server
   npx prisma migrate dev
   ```

5. **Thêm dữ liệu mẫu**
   ```bash
   # Từ thư mục server
   cd utills
   node insertDemoData.js
   ```

### 3. Chạy dự án

1. **Chạy backend**
   ```bash
   # Trong thư mục server
   cd ..
   node app.js
   ```

2. **Chạy frontend** (mở terminal mới)
   ```bash
   # Trong thư mục gốc
   npm run dev
   ```

3. Truy cập [http://localhost:3000](http://localhost:3000)

