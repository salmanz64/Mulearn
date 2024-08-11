function validate(){
    let username = document.getElementById("uname");
    let password = document.getElementById("pass");
    if(username.value.trim() =="" || password.value.trim() ==""){
        alert("No blanks allowed");
        return false;
    }
    else{
        true;
    }
}