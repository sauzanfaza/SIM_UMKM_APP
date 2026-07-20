# Sistem Informasi Manajemen UMKM 
Aplikasi berbasis web untuk membantu pengelolaan data UMKM Toko Kue Bu Imas secara digital. Project ini dibuat sebagai platform manajemen UMKM yang memudahkan pengguna dalam mengelola informasi bisnis, produk, dan data terkait melalui sistem yang terintegrasi antara frontend dan backend.

## Preview

#Features
- Dashboard Analitik
- CRUD Data Produk
- Modul Input Stok Harian
- Kalkulasi Otomatis
- Laporan Keuangan
- Cetak data laporan ke format berkas Excel

## Tech Stack
## Frontend:
- React.js
- Tailwind CSS
# Backend:
- Node.js
- Express.js
#Database:
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

#Backend Setup
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
DB_NAME=sim_umkm

JWT_SECRET=your_secret_key
```

#Database Setup
Create a MySQL database:
CREATE DATABASE umkm_db;

Import database file:
mysql -u root -p umkm_db < database/umkm_db.sql
