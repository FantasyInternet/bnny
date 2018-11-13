const fs = require("fs")
const assert = require("assert")
const bnny = require("../index.js")

describe("BnNY", function () {
  this.timeout(32 * 1024)
  describe("assemble", function () {
    const examples = "./test/examples/"
    let files = fs.readdirSync(examples)

    for (const file of files) {
      if (file.includes(".wast")) {
        it(file, async function () {
          let target
          let result = JSON.parse("" + new Buffer(await bnny(fs.readFileSync(examples + file))))
          try {
            target = JSON.parse("" + fs.readFileSync(examples + file.replace(".wast", ".json")))
          } catch (error) {
            fs.writeFileSync(examples + file.replace(".wast", ".json"), JSON.stringify(result))
          }
          assert.equal(JSON.stringify(result), JSON.stringify(target))
        })
      }
    }
  })
})