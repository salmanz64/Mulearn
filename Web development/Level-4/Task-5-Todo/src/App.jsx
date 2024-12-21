import { useEffect, useState } from 'react';
import './styles.css';
import { NewTodoForm } from './newTodoForm';
import { Todolist } from './TodoList';

export default function App() {
 
  const [todos,setTodos] = useState(()=>{
    const localvalue = localStorage.getItem("ITEMS")
    if(localvalue==null) return []
    return JSON.parse(localvalue)
  })

  useEffect(()=>{
    localStorage.setItem("ITEMS",JSON.stringify(todos))
  },[todos])


 function addTodo(item){
  setTodos(currentTodos=>{
    return [
      ...currentTodos,
    {
      id:crypto.randomUUID(),title:item,completed:false
    }
    ]
  })
 }
  


  function toggleTodo(id,completed){
    setTodos(currentTodos=>{
      return currentTodos.map(todo=>{
        if(todo.id===id){
          return {...todo,completed:completed}
        }
        return todo
      })
    })
  }

  function deleteTodo(id){
    setTodos(currentTodos=>{
      return currentTodos.filter(todo=>todo.id!==id)
    })
  }

  return (
    <div className='container'>
      <h1 className='header'>Todo List</h1>
      <NewTodoForm onSubmit={addTodo}/>
      
      <Todolist todos={todos} toggleTodo={toggleTodo} deleteTodo={deleteTodo}/>
    </div>
  )
}