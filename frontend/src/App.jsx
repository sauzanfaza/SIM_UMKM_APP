import { Routes, Route } from 'react-router-dom'
import Dashboard from './pages/Dashboard'
import Produk from './pages/Produk'
import PenjualanHarian from './pages/PenjualanHarian'
import Laporan from './pages/Laporan'

export default function App() {
  return (
    <Routes>
      <Route path='/' element={<Dashboard />} />
      <Route path='/produk' element={<Produk />} />
      <Route path='/penjualanHarian' element={<PenjualanHarian />} />
      <Route path='/laporan' element={<Laporan />} />
    </Routes>
  )
}