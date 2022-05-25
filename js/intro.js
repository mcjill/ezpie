function right(){
    let code = document.getElementById('program').value;
    console.log(code);
    const right_code = {
        one: 'print("hello world!")',
        second: "print('hello world!')"
    };
    let result = document.getElementById('result');

    if (code == right_code.one || code == right_code.second) {
        result.innerHTML = 'Will done!';
    }
    else{
        result.innerHTML = "try try but don't stop tring or you maybe didnt read the problem";
    }
}