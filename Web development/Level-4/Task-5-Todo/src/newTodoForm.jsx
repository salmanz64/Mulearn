import { useState } from "react";



export function NewTodoForm({onSubmit}){


    const [newItem,setNewItem]= useState("")

    function handleSubmit(e){
        e.preventDefault();
        if(newItem === "") return
        onSubmit(newItem)
        setNewItem("")
      }



    return(
        <form  onSubmit={handleSubmit} className='new-item-form'>
         
        <div className='form-row'>
          
          <input type='text' className='textfield' placeholder="Enter A Task to be added" value={newItem} onChange={e=>setNewItem(e.target.value)}/>
          <button className='btn'>Add</button>
        </div>
        
      </form>
    )
}