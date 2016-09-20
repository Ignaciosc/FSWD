var numeros = [0, 1, 2, 3, 4, 6, 7, 8, 9, 10];
var numeros2 = numeros.filter(function(numero) {
 return (numero % 2 === 0);
});
console.log(numeros);
console.log(numeros2);
