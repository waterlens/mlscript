import "./Predef.mjs";
class Int {
  constructor() {
    
  }
  toString() { return "Int"; }
};
const Example$class = class Example {
  constructor() {
    
  }
  inc(x) {
    return x + 1
  }
  toString() { return "Example"; }
}; const Example = new Example$class;
Example.class = Example$class;
undefined
export default Example;
