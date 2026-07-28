import { TiThMenu } from "react-icons/ti"; //burger menu utk sidebar

export default function Navbar({children, title, handleSideBar}) {
    return(
        <nav className="w-full bg-white p-4 lg:p-8 flex justify-between items-center shadow-lg">
            {/* burger menu  mobile*/}
            <TiThMenu 
            className="mr-2 md:hidden md:text-3xl"
            onClick={handleSideBar}/>

            <div className="w-full flex items-center justify-between">
            <h1 className="font-semibold">{title}</h1>

            <div className="flex items-center gap-2 md:gap-4 ml-auto">
                {children}
            </div>
            </div>

            
        </nav>
    )
}