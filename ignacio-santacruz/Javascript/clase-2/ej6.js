var animal1 = {
    Nombre : 'Nacho',
    Especie : 'Perro',
    Color : 'Rojo',
    Patas : 4,
    Habitat : 'Salvaje',
    Dieta : true,
    Peso : 85,
    sonido: function() {
        console.log("Guau!");
    }
}
var animal2 = {
    Nombre : 'Nacho',
    Especie : 'Gato',
    Color : 'Verde',
    Patas : 4,
    Habitat : 'Doméstico',
    Dieta : false,
    Peso : 65,
    sonido: function() {
        console.log("Miau!");
    }
}
console.log((Object.keys(animal1))[2]);
if (animal1.Dieta) {
    console.log("El animal es Carnivoro");
} else {
    console.log("El animal es Herviboro");
}
if (animal2.Dieta) {
    console.log("El animal es Carnivoro");
} else {
    console.log("El animal es Herviboro");
}
