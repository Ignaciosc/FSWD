var animal = {
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
console.log(animal.Nombre, animal.Especie, animal.Color, animal.Patas, animal.Habitat, animal.Dieta);
animal.sonido();
