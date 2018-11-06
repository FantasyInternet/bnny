#!/usr/bin/env node
const
  bnny = require("./index.js"),
  program = require('commander'),
  fs = require("fs")

program
  .arguments('<file>')
  .option('-b, --wasm <file>', 'Compile to wasm binary')
  .action(function (file) {
    bnny(fs.readFileSync(file), program).then((wasm) => {
      if (program.wasm) {
        fs.writeFileSync(program.wasm, wasm)
      } else {
        console.log("" + Buffer.from(wasm))
      }
    })
  })
  .parse(process.argv)
