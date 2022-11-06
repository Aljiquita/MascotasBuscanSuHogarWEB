const formulario = document.getElementById('formulario');

formulario.addEventListener('submit', (e) => {
    e.preventDefault();
    var object = {};
    const inputs = new FormData(formulario);

    inputs.forEach(function (value, key) {
        object[key] = value;
    });

    let information = JSON.stringify(object);
    console.log(information);
});
