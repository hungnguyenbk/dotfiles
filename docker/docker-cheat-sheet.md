# Install

## Docker compose

# Chead Sheet

Dưới đây là **Docker CLI Cheat Sheet** – tổng hợp các lệnh Docker phổ biến và hay dùng nhất dành cho bạn 🚀:

---

## 🐳 **Docker Image**

| Hành động                 | Lệnh                              |
| ------------------------- | --------------------------------- |
| Xem danh sách image       | `docker images`                   |
| Tải image từ Docker Hub   | `docker pull <image>:<tag>`       |
| Xóa image                 | `docker rmi <image>`              |
| Build image từ Dockerfile | `docker build -t myapp:latest .`  |
| Tag image                 | `docker tag <image> <repo>:<tag>` |

---

## 📦 **Docker Container**

| Hành động                         | Lệnh                                            |
| --------------------------------- | ----------------------------------------------- |
| Xem container đang chạy           | `docker ps`                                     |
| Xem tất cả container (cả đã stop) | `docker ps -a`                                  |
| Chạy container                    | `docker run -d --name myapp -p 8080:80 myimage` |
| Vào bên trong container           | `docker exec -it <container> bash`              |
| Stop container                    | `docker stop <container>`                       |
| Start container                   | `docker start <container>`                      |
| Xóa container                     | `docker rm <container>`                         |
| Xem log container                 | `docker logs <container>`                       |
| Xem 100 dòng log cuối             | `docker logs --tail 100 <container>`            |

---

## 🔁 **Docker Compose**

| Hành động                               | Lệnh                            |
| --------------------------------------- | ------------------------------- |
| Khởi động dịch vụ                       | `docker compose up -d`          |
| Tắt dịch vụ                             | `docker compose down`           |
| Xem log tất cả service                  | `docker compose logs`           |
| Xem log 1 service cụ thể                | `docker compose logs <service>` |
| Restart dịch vụ                         | `docker compose restart`        |
| Dừng và xóa toàn bộ container + network | `docker compose down -v`        |

---

## 🧹 **Dọn dẹp**

| Hành động                                              | Lệnh                     |
| ------------------------------------------------------ | ------------------------ |
| Xóa container đã dừng                                  | `docker container prune` |
| Xóa image không dùng                                   | `docker image prune`     |
| Xóa tất cả (container/image/volume/network không dùng) | `docker system prune -a` |

---

## 🔗 **Volume & Network**

| Hành động       | Lệnh                           |
| --------------- | ------------------------------ |
| Tạo volume      | `docker volume create <name>`  |
| Liệt kê volume  | `docker volume ls`             |
| Xóa volume      | `docker volume rm <name>`      |
| Tạo network     | `docker network create <name>` |
| Liệt kê network | `docker network ls`            |

---

📌 **Tip**: Sử dụng `docker container ls`, `docker image ls` để nhớ dễ hơn (`ls` = list).

---

Nếu bạn muốn mình tạo bản PDF cheat sheet hoặc có ví dụ thực hành cụ thể, mình sẵn sàng giúp!
