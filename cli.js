#!/usr/bin/env node
const
  bnny = require("./index.js"),
  program = require('commander'),
  fs = require("fs"),
  path = require("path")

program
  .arguments('<file>')
  .option('-b, --wasm <file>', 'Compile to wasm binary')
  .action(function (file) {
    bnny(fs.readFileSync(file), program).then((wasm) => {
      if (program.wasm) {
        fs.writeFileSync(program.wasm, new Buffer(wasm))
      } else {
        fs.writeFileSync(file + ".wasm", new Buffer(wasm))
      }
    }).catch((error) => {
      throw new Error(error.message.replace("<input>", path.resolve(file)))
    })
  })
  .parse(process.argv)
