const isApprox = (num1, num2, epsilon) => {
    // Calculate the absolute difference
    // and compare it with epsilon
    return Math.abs(num1 - num2) < epsilon;
};

console.log(isApprox(Math.PI / 2.0, 1.5708, 0.004));