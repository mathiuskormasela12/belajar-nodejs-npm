
export const sum = (...numbers) => {
	let result = 0;

	for(const number of numbers) {
		result += number;
	}

	return result;
}