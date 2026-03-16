# Sử dụng image Node.js chính thức làm base image
FROM node:18-alpine

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Copy package.json và package-lock.json (nếu có)
COPY package*.json ./

# Cài đặt ccs dependencies
RUN npm install

# Copy toàn bộ mã nguồn vào thư mục làm việc trong container
COPY . .

# Expose port mà ứng dụng sẽ chạy
EXPOSE 3000

# Lệnh để chạy ứng dụng
CMD ["npm", "start"]
