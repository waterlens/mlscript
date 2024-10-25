const Option = new class Option {
  constructor() {
    this.Some = class Some {
      constructor(value) {
        this.value = value;
        
      }
    };
    this.None = new class None {
      constructor() {
        
      }
    };
  }
  isDefined(x) {
    if (x instanceof this.Some) {
      return true
    } else {
      if (x === this.None) {
        return false
      } else {
        throw new globalThis.Error("match error")
      }
    }
  } 
  test() {
    return 2134
  }
};
undefined
export default Option;