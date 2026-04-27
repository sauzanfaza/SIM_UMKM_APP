import Sidebar from "../Components/Sidebar"
import Navbar from "../Components/Navbar"
import TambahStok from "../Components/TambahStok"
import { useState, useEffect } from "react"
import axios from "axios"

export default function PenjualanHarian() {
    const [data, setData] = useState([])

    const getData = async () => {
        const res = await axios.get("http://localhost:3000/penjualan")
        setData(res.data)
    }

    useEffect(() => {
        getData()
    }, [])

    return(
        <div className="flex">
                    {/* sidebar */}
                    <Sidebar />
        
                    {/* kanan: navbar + content */}
                    <div className="flex-1">
                        {/* Navbar */}
                        <Navbar>
                            <TambahStok onSuccess={getData}/>
                        </Navbar>
        
                        {/* content */}
                        <div className="h-screen overflow-hidden py-8 px-8 text-lg">
                            <div className="grid grid-cols-8 bg-slate-200 border border-slate-400 rounded-lg">
                                <div className="p-2 text-center">No</div>
                                <div className="p-2 text-center">Nama</div>
                                <div className="p-2 text-center">Harga</div>
                                <div className="p-2 text-center">Stok</div>
                                <div className="p-2 text-center">Stok Akhir</div>
                                <div className="p-2 text-center">Total Terjual</div>
                                <div className="p-2 text-center">Total</div>
                                <div className="p-2 text-center">Edit Stok</div>
                            </div>

                        {data.map((item, index) => (
                            <div key={item.id_detail}
                            className="grid grid-cols-8 my-2 py-2 rounded-lg bg-white border border-slate-400">
                                    <div className="p-2 text-center">{index + 1}</div>
                                    <div className="p-2 text-center">{item.nama_produk}</div>
                                    <div className="p-2 text-center">{item.harga}</div>
                                    <div className="p-2 text-center">{item.stok_awal}</div>
                                    <div className="p-2 text-center">{item.stok_akhir ?? "-"}</div>
                                    <div className="p-2 text-center">{item.jumlah_terjual ?? "-"}</div>
                                    <div className="p-2 text-center">{item.subtotal ?? "-"}</div>
                                    <div className="p-2 text-center">edit</div>
                            </div>
                        ))}
                        </div>

                    </div>
                </div>
    )
}