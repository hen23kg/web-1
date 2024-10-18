// Función que devuelve el valor mayor de tres números
function mayorDeTres(a, b, c) {
    return Math.max(a, b, c);
}

// Función que devuelve la serie de los primeros n números naturales pares
function numerosPares(n) {
    let pares = [];
    for (let i = 0; i < n; i++) {
        pares.push(i * 2);
    }
    return pares.join(', ');
}

// Función que devuelve la serie de los primeros n números de la serie Fibonacci
function fibonacci(n) {
    let fib = [0, 1];
    for (let i = 2; i < n; i++) {
        fib[i] = fib[i - 1] + fib[i - 2];
    }
    return fib.slice(0, n).join(', ');
}

// Función que devuelve la serie de los primeros n números primos
function numerosPrimos(n) {
    let primos = [];
    let num = 2; // Primer número primo
    while (primos.length < n) {
        let esPrimo = true;
        for (let i = 2; i <= Math.sqrt(num); i++) {
            if (num % i === 0) {
                esPrimo = false;
                break;
            }
        }
        if (esPrimo) {
            primos.push(num);
        }
        num++;
    }
    return primos.join(', ');
}

// Función que calcula el factorial de un número n
function factorial(n) {
    if (n < 0) return undefined; // Factorial no definido para números negativos
    if (n === 0 || n === 1) return 1; // 0! y 1! son 1
    let resultado = 1;
    for (let i = 2; i <= n; i++) {
        resultado *= i;
    }
    return resultado;
}

// Llamadas de prueba para mostrar el funcionamiento
console.log("Mayor de tres números (5, 10, 3):", mayorDeTres(5, 10, 3));
console.log("Primeros 5 números pares:", numerosPares(5));
console.log("Primeros 7 números de Fibonacci:", fibonacci(7));
console.log("Primeros 5 números primos:", numerosPrimos(5));
console.log("Factorial de 5:", factorial(5));
