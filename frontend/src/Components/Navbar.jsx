import { TiThMenu } from "react-icons/ti"; //burger menu utk sidebar

export default function Navbar({children, title, handleSideBar}) {
    return(
        <nav className="w-full bg-white p-4 md:p-8 flex items-center shadow-lg">
            {/* burger menu  mobile*/}
            <TiThMenu 
            className="mr-2 md:hidden md:text-3xl"
            onClick={handleSideBar}/>

            <div className="w-full flex items-center justify-between">
            <h1 className="font-semibold">{title}</h1>

            <div>
                {children}
            </div>
            </div>

            
        </nav>
    )
}