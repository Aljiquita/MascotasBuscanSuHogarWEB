document.addEventListener('DOMContentLoaded', (event) => {

    const heroesContainer = document.querySelector('#heroesContainer');
    const shuffle = (array) => {
        array.sort(() => Math.random() - 0.5);
    }

    fetch('./data/heroes.json')
        .then(response => response.json())
        .then(data => {

            shuffle(data);
            data.forEach(hero => {
                heroesContainer.innerHTML += `
            <article class="col-3">
                <h2>${hero.nombreMascota}</h2>
                <img src="./img/${hero.id}.jpg" alt="" width="200">
                <p><strong>Raza: </strong>${hero.raza}</p>
                <a class="btn btn-outline-primary w-75" href="./pet-detail.html?id=${hero.id}">Ver Detalles</a>
            </article>
            `
            })

            console.log(data);
        })
})