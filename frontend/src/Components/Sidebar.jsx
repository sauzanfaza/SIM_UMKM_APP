import { Link } from "react-router-dom"
import { LuLayoutDashboard } from "react-icons/lu";
import { LuCakeSlice } from "react-icons/lu";
import { LuClipboardList } from "react-icons/lu";
import { GoChecklist } from "react-icons/go";
import { FaRegCalendarCheck } from "react-icons/fa";
import { IoClose } from "react-icons/io5";

export default function Sidebar({isSideBarOpen, setIsSideBarOpen, handleSideBar}) {

    const menuClass = "flex items-center gap-2 md:gap-3 px-4 py-2 lg:py-3 rounded-lg hover:bg-[#346739] text-[14px] md:text-[16px] lg:text-xl font-semibold"
    
      return (
        <>        
        {/* mobile menu */}
            <aside className={`fixed z-50 md:static md:translate-x-0 md:flex md:flex-col 
                ${isSideBarOpen ? "translate-x-0" : "-translate-x-full"}
                w-40 md:w-48 lg:w-64 md:min-h-screen bg-[#004030] text-white p-4 h-screen`}>
            <div className="realtive w-full md:hidden">
                <IoClose 
                className="absolute top-4 right-4"
                onClick={() => setIsSideBarOpen(false)}
                />
            </div>
            <div className="flex items-center gap-2 mt-6 mb-10 md:mb-10 md:mx-4">
                <img src="./donat-web-removebg-preview.png" alt="" className="w-10 h-10 md:w-12 md:h-12 object-contain"/>
                <h1 className="font-bold">Toko Kue Bu Imas</h1>
            </div>
            
            <nav className="space-y-4">
                <Link to="/" 
                className={menuClass}
                onClick={() => setIsSideBarOpen(false)}> 
                {/* setelah salah satu menu diklik toggle kembali false */}
                    <LuLayoutDashboard/> Dashboard
                </Link>
                <Link to="/produk" 
                className={menuClass}
                onClick={() => setIsSideBarOpen(false)}>
                    <LuCakeSlice /> Produk
                </Link>
                <Link to="/penjualanHarian" 
                className={menuClass}
                onClick={() => setIsSideBarOpen(false)}>
                    <LuClipboardList className="text-xl"/> Penjualan Harian
                </Link>
                <Link to="/laporan" 
                className={menuClass}
                onClick={() => setIsSideBarOpen(false)}>
                    <GoChecklist /> Laporan
                </Link>
            </nav>
        </aside>
        </> 
    )
}