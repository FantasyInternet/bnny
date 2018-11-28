# bnny
A [WebAssembly](https://webassembly.org/) assembler written in [Poetry](https://github.com/FantasyInternet/poetry)

Usage
-----
    $ npm i -g bnny
    $ bnny my_program.wast -b my_program.wasm

Usage in Javascript
-------------------

    const bnny = require("bnny")

    bnny('(module)').then((wasm) => {
      console.log("Output size:", wasm.byteLength, "bytes")
    })

Usage in Poetry
---------------

    include "bnny/bnny.poem" bnny\

    export "init" init
      var wasm = bnny\assemble "(module)"
      if wasm
        var size = size_of wasm
      else
        var err = bnny\error
