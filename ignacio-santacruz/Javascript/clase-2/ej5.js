var animal1 = {
    Nombre : 'Nacho',
    Especie : 'Perro',
    Color : 'Rojo',
    Patas : 4,
    Habitat : 'Salvaje',
    Dieta : 'Carnivoro',
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
    Dieta : 'Carnivoro',
    Peso : 65,
    sonido: function() {
        console.log("Miau!");
    }
}
if (animal1.Peso > animal2.Peso) {
    console.log("El animal más pesado es el 1");
} else {
    console.log("El animal más pesado es el 2");
}
