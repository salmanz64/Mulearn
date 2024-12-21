export function TodoItem({completed,title,value,id,toggleTodo,deleteTodo}){
    return (
      
        <li value={value} className="item">
          <label>
            <input type='checkbox' checked={completed} onChange={e=>toggleTodo(id,e.target.checked)}/>
            {title}
          </label>
          <button onClick={()=>deleteTodo(id)} className='btn btn-danger'>Delete</button>
          
        </li>
        
    )
}