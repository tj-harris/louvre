import { Link } from '@tanstack/react-router'
import {
  Menu,
} from 'lucide-react'

export default function Header() {

  return (
    <>
      <header className="p-4 flex items-center bg-purple-600 text-white shadow-lg">
        <button
          onClick={() => {}}
          className="p-2 hover:bg-gray-700 rounded-lg transition-colors"
          aria-label="Open menu"
        >
          <Menu size={24} />
        </button>
        <h1 className="ml-4 text-xl font-semibold">
          <Link to="/">
            LOUVRE SECURITY
          </Link>
        </h1>
      </header>
    </>
  )
}
