function right(){
    let code = document.getElementById('program').value;
    console.log(code);
    let result = document.getElementById('result');

    if (code == 'age = 20') {
        result.innerHTML = 'Will done! dogs live only for 20 years';
    }
    else{
        result.innerHTML = "try try but don't stop tring or you maybe didnt read the problem";
    }
}