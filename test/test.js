const fs = require("fs")
const assert = require("assert")
describe('Array', function () {
  describe('#indexOf()', function () {
    it('should return -1 when the value is not present', function () {
      assert.equal([1, 2, 3].indexOf(4), -1)
    })
  })
})
describe("BnNY", () => {
  let bnny
  it("instantiates", async () => {
    bnny = await WebAssembly.instantiate(fs.readFileSync("./test/test.wasm"))
    bnny = bnny.instance.exports
  })
  describe("sum", () => {
    it("should add two numbers together and return the sum", () => {
      assert.equal(bnny.sum(2, 3), 5)
    })
  })
})