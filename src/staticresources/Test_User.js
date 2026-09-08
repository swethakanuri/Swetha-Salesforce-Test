// script.js - A simple sample JavaScript file

// 1. Define variables
const greeting = "Hello, World!";
let visitorCount = 42;

// 2. Create a simple function
function showWelcomeMessage(name) {
    return `${greeting} Welcome, ${name}. Our current visitor count is ${visitorCount}.`;
}

// 3. Log output to the console
console.log(showWelcomeMessage("Developer"));

// 4. Simple array and loop example
const programmingLanguages = ["JavaScript", "Python", "HTML", "CSS"];

console.log("Popular languages:");
programmingLanguages.forEach((lang, index) => {
    console.log(`${index + 1}. ${lang}`);
});