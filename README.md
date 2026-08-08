# Sistem Informasi Manajemen UMKM 
Aplikasi berbasis web untuk membantu pengelolaan data UMKM Toko Kue Bu Imas secara digital. Project ini dibuat sebagai platform manajemen UMKM yang memudahkan pengguna dalam mengelola informasi bisnis, produk, dan data terkait melalui sistem yang terintegrasi antara frontend dan backend.

## Preview

### Dashboard
<img width="960" height="504" alt="image" src="https://github.com/user-attachments/assets/bcb0e2a4-4e8a-4629-baa5-306cc54f1b6c" />

### Manajemen Produk
<img width="960" height="504" alt="image" src="https://github.com/user-attachments/assets/dcb32b59-4087-463c-a865-eaf9319f8459" />
<img width="960" height="504" alt="image" src="https://github.com/user-attachments/assets/11de7472-f16c-4d89-b43f-871b6d209de0" />

### Penjualan Harian
<img width="960" height="504" alt="image" src="https://github.com/user-attachments/assets/9a267f73-8fa0-4ccc-95a9-e0a11251b6a9" />
<img width="960" height="504" alt="image" src="https://github.com/user-attachments/assets/8f0f4e02-f8ca-4285-8863-a04ff3441fa1" />

### Laporan
<img width="960" height="504" alt="image" src="https://github.com/user-attachments/assets/63e79320-c406-4c9d-b421-7098ea7891b8" />

### Export Excel
<img width="960" height="504" alt="image" src="https://github.com/user-attachments/assets/7f5958f3-2493-4da1-8f13-8cbedcfdd30a" />

# Features
- Dashboard Analitik
- CRUD Data Produk
- Modul Input Stok Harian
- Kalkulasi Otomatis
- Laporan Keuangan
- Cetak data laporan ke format berkas Excel
- Responsive UI untuk berbagai ukuran layar (desktop, tablet, dan mobile):
  
<img width="276" height="276" alt="image" src="https://github.com/user-attachments/assets/152f031c-21b9-47bb-9026-95bc4a73f69d" />
<img width="277" height="277" alt="image" src="https://github.com/user-attachments/assets/93ac7cba-5585-46f6-b36d-df621da3fd4c" />
<img width="278" height="277" alt="image" src="https://github.com/user-attachments/assets/009d8523-201d-4e95-802d-7582d1f921cc" />

## Tech Stack
## Frontend:
- React.js
- Tailwind CSS
# Backend:
- Node.js
- Express.js
# Database:
- MySQL


---
## 🚀 Installation

### Clone Repository
```bash
git clone https://github.com/sauzanfaza/SIM_UMKM_APP.git
cd SIM_UMKM_APP
```

# Frontend Setup
```bash
cd frontend
npm install
npm run dev
```

# Backend Setup
```bash
cd backend
npm install
npm run start
```

## 🔑 Environment Variables

Create a `.env` file inside the backend folder:

```env
PORT=5000

DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_password
DB_NAME=umkm_db

JWT_SECRET=your_secret_key
```

# Database Setup
Create a MySQL database:
CREATE DATABASE umkm_db;

Import database file:
mysql -u root -p umkm_db < database/umkm_db.sql
