const path = require("path")
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
    "logNumber": (num) => {
      console.log("  🐇\t" + num + "\t0x" + num.toString(16))
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
      error = "" + new Buffer(bufferStack.pop())
    }
  }
}
let bufferStack = []
let input = ""
let output
let error
let bnny = WebAssembly.instantiate(fs.readFileSync(path.join(__dirname, "./index.wasm")), imports)
bnny.then((result) => {
  bnny = result.instance.exports
})

let last_mem = 0
async function assemble(wast, options = {}) {
  error = null
  output = null
  if (!bnny.init) await bnny
  input = wast
  bnny.init()
  if (bnny.memory.buffer.byteLength !== last_mem) {
    last_mem = bnny.memory.buffer.byteLength
    // console.log("Memory:", last_mem / (1024 * 1024), "MiB")
  }
  if (error) throw new Error(error)
  return output
}
module.exports = assemble
