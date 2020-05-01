import { get_sqrt as getSqrt } from "../build/WebAssemblyAndCMake.wasm";

const container = document.getElementById("container");

const result = getSqrt(3);

container.innerHTML = `Compiled from C++: getSqrt(3) = ${result}`;
