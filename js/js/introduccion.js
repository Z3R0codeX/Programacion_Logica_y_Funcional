// Referencia al elemento <ul> en el DOM
var ul = document.getElementById("lista");
// URL base de la API
const url = "https://thesimpsonsapi.com/api/";
// Cadena para construir el HTML de la lista
var list = "";
// Arreglo para almacenar todos los datos de los personajes
let arr_original = [];

/**
 * Función que genera el HTML de la lista de personajes y lo inyecta en el DOM.
 * @param {Array} arr - El arreglo de personajes a imprimir.
 */
const imprimir = (arr) => {
    var todo = "";
    arr.forEach(item => {
        // Genera la clase de estilo según el estado para un toque Cyberpunk
        const statusClass = item.personaje.status === "Deceased" ? "status-deceased" : "status-alive";
        const ageDisplay = item.personaje.age !== null ? `<p>Edad: ${item.personaje.age}</p>` : '';

        todo += `
        <li>
            <img src="https://cdn.thesimpsonsapi.com/200${item.personaje.portrait_path}" alt="Retrato de ${item.personaje.name}" />
            <h2>${item.personaje.name}</h2>
            <p><strong>Estado:</strong> <span class="${statusClass}">${item.personaje.status}</span></p>
            ${ageDisplay}
            <p><strong>Ocupación:</strong> ${item.personaje.occupation || 'Desconocida'}</p>
        </li>`;
    });
    ul.innerHTML = todo;
};

/**
 * Función para obtener los personajes de una página específica de la API.
 * @param {number} page - El número de página a solicitar.
 */
const getLista = (page) => {
    fetch(url + "characters?page=" + page)
        .then(response => {
            if (!response.ok) {
                console.error("Error en la red al obtener la página " + page);
                throw new Error("Error en la red");
            }
            return response.json();
        })
        .then(data => {
            console.log(`Datos de la página ${page}:`, data);

            data.results.forEach(personaje => {
                arr_original.push({
                    personaje: personaje,
                    datos: null 
                });
                
                
                list += `
                <li>
                    <img src="https://cdn.thesimpsonsapi.com/200${personaje.portrait_path}" width="200px" alt="Retrato de ${personaje.name}">
                    <h2>${personaje.name}</h2>
                </li>`;
            });

           
            if (page === 1) { 
                 ul.innerHTML = list;
            }
         
            if (page === 5) { 
                console.log("Arreglo final completo", arr_original);
                imprimir(arr_original); 
            }
        })
        .catch(error => console.error("Fallo al cargar los personajes:", error));
};

// Carga las primeras 5 páginas de personajes
for (let i = 1; i <= 5; i++) {
    getLista(i);
}


// 1. Mostrar Todos
document.getElementById("mostrarTodo").addEventListener('click', (evt) => {
    evt.preventDefault();
    console.log("Mostrar Todos:", arr_original.length);
    imprimir(arr_original);
});

// 2. Fallecidos
document.getElementById("fallecidos").addEventListener('click', (evt) => {
    evt.preventDefault();
    let fallecidos = arr_original.filter(item => item.personaje.status === "Deceased");
    console.log("Fallecidos:", fallecidos.length);
    imprimir(fallecidos);
});

// 3. Menores de Edad
document.getElementById("menores").addEventListener('click', (evt) => {
    evt.preventDefault();
    let notnull = arr_original.filter(item => item.personaje.age !== null);
    let menores = notnull.filter(item => item.personaje.age < 18);
    console.log("Menores de Edad:", menores.length);
    imprimir(menores);
});

// 4. Promedio de Edad
document.getElementById("promedio").addEventListener('click', (evt) => {
    evt.preventDefault();
    let notnull = arr_original.filter(item => item.personaje.age !== null && typeof item.personaje.age === 'number');
    let totalEdad = notnull.reduce((acc, item) => acc + item.personaje.age, 0);
    let promedio = notnull.length > 0 ? totalEdad / notnull.length : 0;
    
    console.log("Promedio de Edad:", promedio.toFixed(2));
    alert("El promedio de edad es: " + promedio.toFixed(2));
});

// 5. Ordenar por Edad ASC
document.getElementById("ordenEdad").addEventListener('click', (evt) => {
    evt.preventDefault();
    
    let nonull = arr_original
        .filter(item => item.personaje.age !== null)
        .slice(); 
    
    let orden = nonull.sort((a, b) => a.personaje.age - b.personaje.age);
    console.log("Ordenado por Edad ASC:", orden);
    imprimir(orden);
});

// 6. Personaje Más Viejo / Más Joven
document.getElementById("viejo_joven").addEventListener('click', (evt) => {
    evt.preventDefault();
    let nonull = arr_original
        .filter(item => item.personaje.age !== null)
        .slice(); 
    
    if (nonull.length === 0) {
        console.log("No hay personajes con edad definida.");
        return;
    }
    
    // Ordenar para encontrar el más viejo y el más joven
    let sorted = nonull.sort((a, b) => a.personaje.age - b.personaje.age);
    let joven = sorted[0];
    let viejo = sorted[sorted.length - 1]; 

    let personajes = [viejo, joven];
    imprimir(personajes);
    console.log("Personaje más viejo: ", viejo);
    console.log("Personaje más joven: ", joven);
});

// 7. Estudiantes (Occupation incluye 'Student')
document.getElementById("students").addEventListener('click', (evt) => {
    evt.preventDefault();
    let estudiantes = arr_original.filter(item => 
        item.personaje.occupation && item.personaje.occupation.includes("Student")
    );
    console.log("Estudiantes:", estudiantes.length);
    imprimir(estudiantes);
});

// 8. Nacidos antes de 1980-02-01
document.getElementById("nacidosAntes").addEventListener('click', (evt) => {
    evt.preventDefault();
    const targetDate = new Date("1980-02-01");
    let filtronull = arr_original.filter(item => 
        item.personaje.birthdate && item.personaje.birthdate !== ""
    );
    let nacidosAntes = filtronull.filter(item => {
        const birthDate = new Date(item.personaje.birthdate);
        return birthDate < targetDate;
    });
    
    console.log(`Nacidos antes de ${targetDate.toLocaleDateString()}:`, nacidosAntes.length);
    imprimir(nacidosAntes);
});


document.getElementById("searchInput").addEventListener('input', (evt) => {
    let texto = evt.target.value.toLowerCase().trim();

    if (texto === "") {
        imprimir(arr_original); 
        return;
    }

    let filtrado = arr_original.filter(item => {
       
        if (Array.isArray(item.personaje.phrases)) {
            return item.personaje.phrases.some(frase => 
                frase.toLowerCase().includes(texto)
            );
        }
        return false;
    });

    console.log(`Filtrado por frase "${texto}":`, filtrado.length);
    imprimir(filtrado);
});