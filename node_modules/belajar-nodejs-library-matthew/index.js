import {toUpperCase} from './helper/generateString.js';
import { sum } from './number.js';

export const sayHello = (name) => {
	return toUpperCase(`Hello your name is ${name}`);
}
