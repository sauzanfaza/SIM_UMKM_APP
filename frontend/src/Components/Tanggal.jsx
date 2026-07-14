import { useEffect, useState } from "react"

export default function Tanggal() {
    const [tanggal, setTanggal] = useState("")

    const getTanggal = async () => {
        try {
            const res = await axios.get("http://localhost:3000/penjualan/tanggal-aktif")
            setIdPenjualan(res.data.id_penjualan)
            const date = new Date(res.data.tanggal)
            const formatted = date.toLocaleDateString("id-ID", {
                weekday: "long", year: "numeric", month: "long", day: "numeric"
            })
            setTanggal(formatted)
        } catch {
            const formatted = new Date().toLocaleDateString("id-ID", {
                weekday: "long", year: "numeric", month: "long", day: "numeric"
            })
            setTanggal(formatted)
        }
    }

    useEffect(() => {
        getTanggal()
    }, [])

    return (
        <span className="text-slate-500 text-sm font-medium mr-4">{tanggal}</span>
    )
}