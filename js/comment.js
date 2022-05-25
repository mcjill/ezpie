function right(){
    let code = document.getElementById('program').value;
    console.log(code);
    let result = document.getElementById('result');

    if (code == 'this program prints hello world!') {
        result.innerHTML = 'Will done!';
    }
    else{
        result.innerHTML = "try try but don't stop tring or you maybe didnt read the problem";
    }
}