function consultaObjeto(objeto) {
    for (propiedad in objeto) {
        console.log(propiedad + ": " + objeto[propiedad]);
    }
}
var perro = {
    nombre : 'Pluto',
    edad : 15,
    ladra : function() {
        console.log("Guau!");
    }
}
consultaObjeto(perro);
