var animal1 = {
    Nombre : 'Nacho',
    Especie : 'Perro',
    Color : 'Rojo',
    Patas : 4,
    Habitat : 'Salvaje',
    Dieta : 'Carnivoro',
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
    Dieta : 'Carnivoro',
    sonido: function() {
        console.log("Miau!");
    }
}
if (animal1.Nombre == animal2.Nombre) {
    console.log("El campo 'Nombre' es igual en los dos animales");
} else {
    console.log("El campo 'Nombre' no es igual en los dos animales");
}
if (animal1.Especie == animal2.Especie) {
    console.log("El campo 'Especie' es igual en los dos animales");
} else {
    console.log("El campo 'Especie' no es igual en los dos animales");
}
