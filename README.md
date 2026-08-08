# Sistem Informasi Manajemen UMKM 
Aplikasi berbasis web untuk membantu pengelolaan data UMKM Toko Kue Bu Imas secara digital. Project ini dibuat sebagai platform manajemen UMKM yang memudahkan pengguna dalam mengelola informasi bisnis, produk, dan data terkait melalui sistem yang terintegrasi antara frontend dan backend.

## Preview

### Dashboard
<img width="960" height="504" alt="image" src="https://github.com/user-attachments/assets/bcb0e2a4-4e8a-4629-baa5-306cc54f1b6c" />

### Manajemen Produk
<img width="960" height="504" alt="image" src="https://github.com/user-attachments/assets/518b38e2-075d-4650-a964-02f232f086af" />
<img width="960" height="504" alt="image" src="https://github.com/user-attachments/assets/6416e74a-d388-4d47-a10f-63ea9a9f31fb" />

### Penjualan Harian
<img width="960" height="504" alt="image" src="https://github.com/user-attachments/assets/fe7e8921-ddfb-4458-ae67-dfc9ed1fd462" />
<img width="960" height="504" alt="image" src="https://github.com/user-attachments/assets/4b95ad72-caf1-4721-8a95-d300e93a6701" />

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
- Responsive UI untuk berbagai ukuran layar (desktop, tablet, dan mobile)

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

#Database Setup
Create a MySQL database:
CREATE DATABASE umkm_db;

Import database file:
mysql -u root -p umkm_db < database/umkm_db.sql
