// Hrus pake ektensi file
// import {getNama} from './helper.js';

// Mengimport dengan menmabhaknan property exports di package.json
import {getNama} from 'belajar-nodejs-npm/helper';
import {sayHello} from 'belajar-nodejs-library-matthew';
import {sum} from 'belajar-nodejs-library-matthew/number';


// console.log(getNama())

console.log(sayHello('matthew'));
console.log(sum(1, 2, 3));