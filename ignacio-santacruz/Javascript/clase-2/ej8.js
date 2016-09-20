var arrayRep = [1, 2, 3, 2, 7, 9 , 5, 10, 8, 5, 1], arraySinRep = [];
for (var i = 0; i < arrayRep.length; i++) {
    if (arraySinRep.indexOf(arrayRep[i]) === -1) {
        arraySinRep.push(arrayRep[i]);
    }
}
console.log(arrayRep);
console.log(arraySinRep);
