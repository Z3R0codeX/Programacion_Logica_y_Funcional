
let x = [1,2,3,4]
const y = [...x,20,50]

console.log(y)

const edadLegalEEUU = 21;
const checkEstado =(edadl, edadLegl)=>{

    return edadl >= edadLegl ? "Mayor de edad" : "Menor de edad"

}

const persona = checkEstado(20, edadLegalEEUU)
console.log(persona);

let arreglo = [

    {id:1, nombre:"Juan", age:25},
    {id:2, nombre:"Pedro", age:17},
    {id:3, nombre:"Maria", age:30},
    {id:4, nombre:"Luis", age:15}

]

let ul = document.getElementById("lista")
var todo = ""
arreglo.forEach((item)=>{

   item.age = item.age*10

    todo += `<li>${item.nombre} - edad:${item.age} - ${checkEstado(item.age, edadLegalEEUU)} </li>`

})
console.log(todo)
ul.innerHTML = todo

console.log("arreglo-original", arreglo);

var copia = arreglo.map((item, index) =>{

    item.age *=10
    return item

})
console.log("arreglo-modificado", copia);

let url = "https://thesimpsonsapi.com/api/"
fetch(url+"characters").then(Response =>{
    if(Response.ok){
        
        console.log("error en la red")

    }
    return Response.json()
}).then(data =>{

    console.log("datos del personaje:", data)
    var lis = ""
    data.results.forEach(personaje =>{

        lis+=
        `<li>

        <img  src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}" width="200px" />
        <h2>${personaje.name}</h2>

        </li>`
        ul.innerHTML = lis

    })

})