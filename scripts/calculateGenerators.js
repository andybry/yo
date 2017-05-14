#!/usr/bin/env node
const generators = process.argv
    .slice(2)
    .map(x => `generator-${x}`)
    .join(' ')
console.log(generators)