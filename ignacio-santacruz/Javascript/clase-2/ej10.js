var arrayVacio = [], arrayPar = [], arrayImpar = [];
for (var i = 1; i < 522; i++) {
    arrayVacio.push(i);
}
for (var j = 0; j < arrayVacio.length; j++) {
    if (arrayVacio[j] % 2 == 0) {
        arrayPar.push(arrayVacio[j]);
    } else {
        arrayImpar.push(arrayVacio[j]);
    }
}
console.log(arrayPar);
console.log(arrayPar.length);
console.log(arrayImpar);
console.log(arrayImpar.length);
