var stringy = [27, 231, 31, 475, 542, 64, 70, 821, 912, 109];
var newStringy = stringy.map(function(numero) {
    return numero % 27;
});
for (var i = 0; i < newStringy.length; i++) {
    newStringy[i] = String.fromCharCode(97 + newStringy[i]);
}
console.log(newStringy.join(''));
