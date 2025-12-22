import { createFileRoute } from '@tanstack/react-router'
import { useState } from 'react'

export const Route = createFileRoute('/')({ component: App })

function App() {
  const [pass, setPass] = useState('')
  const correctPass = pass === 'Louvre'
  return (
    <div className='container mx-auto bg-white p-15 mt-5 rounded overflow  -hidden shadow-lg'>
      {!correctPass && 
      (
        <>
        <div className="text-center text-xl">Login</div>
      <div className="text-center">Password: 
        <input onInput={(e) => { setPass(e.currentTarget.value)}} type="password" className="border rounded ml-5" />
      </div>
        </>
      )}
      {correctPass && (
        <div> Clue #^ asdijflaskdjvlekrjekrj</div>
      )}
    </div>
  )
}
