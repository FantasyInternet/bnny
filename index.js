const fs = require("fs")
const { StringDecoder } = require('string_decoder');

const imports = {
  env: {
    "pushFromMemory": (offset, len) => {
      bufferStack.push(bnny.memory.buffer.slice(offset, offset + len))
    },
    "popToMemory": (offset) => {
      let ar = new Uint8Array(bnny.memory.buffer)
      ar.set(new Uint8Array(bufferStack.pop()), offset)
    },
    "log": () => {
      console.log("  🐰\t" + new Buffer(bufferStack.pop()))
    },
    "getInput": () => {
      let buf = Uint8Array.from(Buffer.from(input)).buffer
      bufferStack.push(buf)
      return buf.byteLength
    },
    "sendOutput": () => {
      output = bufferStack.pop()
    },
    "sendError": () => {
      error = bufferStack.pop()
    }
  }
}
let bufferStack = []
let input = ""
let output
let error
let bnny = WebAssembly.instantiate(fs.readFileSync("./index.wasm"), imports)
bnny.then((result) => {
  bnny = result.instance.exports
})

async function assemble(wast, options = {}) {
  if (!bnny.init) await bnny
  input = wast
  bnny.init()
  if (error) throw error
  return output
}
module.exports = assemble
