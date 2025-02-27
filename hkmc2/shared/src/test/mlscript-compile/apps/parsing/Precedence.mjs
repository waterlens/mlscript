import runtime from "./../../Runtime.mjs";
import Option from "./../../Option.mjs";
import Predef from "./../../Predef.mjs";
import BetterMap from "./../../BetterMap.mjs";
import Keyword from "./Keyword.mjs";
let Precedence1;
Precedence1 = class Precedence {
  static {
    this.Keywords = class Keywords {
      static #prec;
      static #basePrec;
      static #semiPrec;
      static #commaPrec;
      static #eqPrec;
      static #ascPrec;
      static #thenPrec;
      static #precMap;
      static #bracketPrec;
      static {
        let tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, tmp16, tmp17, tmp18, tmp19, tmp20, tmp21, tmp22, tmp23, tmp24, tmp25, tmp26, tmp27, tmp28, tmp29, tmp30, tmp31, tmp32, tmp33, tmp34, tmp35, tmp36, tmp37, tmp38, tmp39, tmp40, tmp41, tmp42, tmp43, tmp44, tmp45, tmp46, tmp47, tmp48;
        tmp = new BetterMap.Map();
        this.all = tmp;
        Keywords.#prec = 0;
        Keywords.#basePrec = Keywords.currPrec;
        tmp1 = Keywords.keyword(";;", Keywords.#basePrec, Keywords.#basePrec);
        this._terminator = tmp1;
        tmp2 = Keywords.keyword("class", Option.None, Keywords.#basePrec);
        this._class = tmp2;
        Keywords.#semiPrec = Keywords.nextPrec;
        Keywords.#commaPrec = Keywords.nextPrec;
        tmp3 = Keywords.keyword(";", Keywords.#semiPrec, Keywords.#basePrec);
        this._semicolon = tmp3;
        tmp4 = Keywords.keyword(",", Keywords.#commaPrec, Keywords.#semiPrec);
        this._comma = tmp4;
        Keywords.#eqPrec = Keywords.nextPrec;
        Keywords.#ascPrec = Keywords.nextPrec;
        tmp5 = Keywords.keyword("=", Keywords.#eqPrec, Keywords.#eqPrec);
        this._equal = tmp5;
        tmp6 = Keywords.keyword("and", Option.None, Keywords.currPrec);
        this._and = tmp6;
        tmp7 = Keywords.keyword("|", Option.None, Keywords.currPrec);
        this._bar = tmp7;
        tmp8 = Keywords.keyword("->", Keywords.nextPrec, Keywords.#eqPrec);
        this._thinArrow = tmp8;
        tmp9 = Keywords.keyword(":", Keywords.#ascPrec, Keywords.#eqPrec);
        this._colon = tmp9;
        tmp10 = Keywords.keyword("match", Keywords.nextPrec, Keywords.currPrec);
        this._match = tmp10;
        tmp11 = Keywords.keyword("while", Keywords.nextPrec, Keywords.currPrec);
        this._while = tmp11;
        tmp12 = Keywords.keyword("for", Keywords.nextPrec, Keywords.currPrec);
        this._for = tmp12;
        tmp13 = Keywords.keyword("to", Option.None, Option.None);
        this._to = tmp13;
        tmp14 = Keywords.keyword("downto", Option.None, Option.None);
        this._downto = tmp14;
        tmp15 = Keywords.keyword("do", Option.None, Option.None);
        this._do = tmp15;
        tmp16 = Keywords.keyword("done", Option.None, Option.None);
        this._done = tmp16;
        tmp17 = Keywords.keyword("of", Option.None, Option.None);
        this._of = tmp17;
        tmp18 = Keywords.keyword("with", Option.None, Keywords.currPrec);
        this._with = tmp18;
        tmp19 = Keywords.keyword("case", Option.None, Keywords.currPrec);
        this._case = tmp19;
        Keywords.#thenPrec = Keywords.nextPrec;
        tmp20 = Keywords.keyword("if", Keywords.nextPrec, Keywords.#thenPrec);
        this._if = tmp20;
        tmp21 = Keywords.keyword("then", Keywords.#thenPrec, Keywords.#thenPrec);
        this._then = tmp21;
        tmp22 = Keywords.keyword("else", Keywords.#thenPrec, Keywords.#thenPrec);
        this._else = tmp22;
        tmp23 = Keywords.keyword("let", Keywords.#eqPrec, Keywords.#semiPrec);
        this._let = tmp23;
        tmp24 = Keywords.keyword("in", Keywords.#thenPrec, Keywords.#thenPrec);
        this._in = tmp24;
        tmp25 = Keywords.keyword("true", Option.None, Option.None);
        this._true = tmp25;
        tmp26 = Keywords.keyword("false", Option.None, Option.None);
        this._false = tmp26;
        tmp27 = Keywords.keyword("as", Keywords.nextPrec, Keywords.currPrec);
        this._as = tmp27;
        tmp28 = Keywords.keyword("fun", Keywords.currPrec, Keywords._thinArrow.leftPrec);
        this._fun = tmp28;
        tmp29 = Keywords.keyword("function", Keywords.currPrec, Keywords.#eqPrec);
        this._function = tmp29;
        tmp30 = Keywords.keyword("type", Keywords.currPrec, Option.None);
        this._type = tmp30;
        tmp31 = Keywords.keyword("exception", Keywords.currPrec, Option.None);
        this._exception = tmp31;
        tmp32 = Keywords.keyword("rec", Keywords.currPrec, Keywords.#eqPrec);
        this._rec = tmp32;
        tmp33 = Keywords.keyword("==", Option.None, Option.None);
        this._equalequal = tmp33;
        this.maxKeywordPrec = Keywords.#prec;
        tmp34 = Precedence.makePrecMap(Keywords.maxKeywordPrec, ",", "@", ":", "|", "&", "=", "/ \\", "^", "!", "< >", "+ -", "* %", "~", "", "", ".");
        Keywords.#precMap = tmp34;
        tmp35 = runtime.safeCall(Keywords.#precMap.get("."));
        tmp36 = Option.unsafe.get(tmp35);
        this.maxOperatorPrec = tmp36;
        tmp37 = Keywords.maxOperatorPrec - 1;
        this.appPrec = tmp37;
        tmp38 = Keywords.appPrec - 1;
        this.prefixPrec = tmp38;
        tmp39 = Keywords.maxOperatorPrec + 1;
        tmp40 = Option.Some(tmp39);
        Keywords.#bracketPrec = tmp40;
        tmp41 = Keywords.keyword("(", Keywords.#bracketPrec, Keywords.#basePrec);
        this._leftRound = tmp41;
        tmp42 = Keywords.keyword(")", Keywords.#basePrec, Option.None);
        this._rightRound = tmp42;
        tmp43 = Keywords.keyword("[", Keywords.#bracketPrec, Keywords.#basePrec);
        this._leftSquare = tmp43;
        tmp44 = Keywords.keyword("]", Keywords.#basePrec, Option.None);
        this._rightSquare = tmp44;
        tmp45 = Keywords.keyword("{", Keywords.#bracketPrec, Keywords.#basePrec);
        this._leftCurly = tmp45;
        tmp46 = Keywords.keyword("}", Keywords.#basePrec, Option.None);
        this._rightCurly = tmp46;
        tmp47 = Keywords.keyword("begin", Keywords.#bracketPrec, Keywords.#basePrec);
        this._begin = tmp47;
        tmp48 = Keywords.keyword("end", Keywords.#basePrec, Option.None);
        this._end = tmp48;
      }
      static keyword(name, leftPrec, rightPrec) {
        let result, tmp, tmp1;
        tmp = Keyword.Keyword(name, leftPrec, rightPrec);
        result = tmp;
        tmp1 = Keywords.all.insert(name, result);
        return result
      } 
      static get currPrec() {
        return Option.Some(Keywords.#prec);
      } 
      static get nextPrec() {
        let tmp;
        tmp = Keywords.#prec + 1;
        Keywords.#prec = tmp;
        return Option.Some(Keywords.#prec);
      } 
      static charPrec(op) {
        let tmp;
        tmp = runtime.safeCall(Keywords.#precMap.get(op));
        return Option.unsafe.get(tmp)
      }
      static toString() { return "Keywords"; }
    };
    const Letter$class = class Letter {
      constructor() {}
      unapply(scrut) {
        let gtLo, ltHi, gtLo1, ltHi1;
        gtLo = "a" <= scrut;
        if (gtLo === true) {
          ltHi = scrut <= "z";
          if (ltHi === true) {
            return runtime.safeCall(globalThis.Predef.MatchResult([]))
          } else {
            gtLo1 = "A" <= scrut;
            if (gtLo1 === true) {
              ltHi1 = scrut <= "Z";
              if (ltHi1 === true) {
                return runtime.safeCall(globalThis.Predef.MatchResult([]))
              } else {
                return runtime.safeCall(globalThis.Predef.MatchFailure())
              }
            } else {
              return runtime.safeCall(globalThis.Predef.MatchFailure())
            }
          }
        } else {
          gtLo1 = "A" <= scrut;
          if (gtLo1 === true) {
            ltHi1 = scrut <= "Z";
            if (ltHi1 === true) {
              return runtime.safeCall(globalThis.Predef.MatchResult([]))
            } else {
              return runtime.safeCall(globalThis.Predef.MatchFailure())
            }
          } else {
            return runtime.safeCall(globalThis.Predef.MatchFailure())
          }
        }
      } 
      unapplyStringPrefix(topic) {
        let emptyTest, head, tail, gtLo, ltHi, emptyTest1, head1, tail1, gtLo1, ltHi1;
        emptyTest = topic == "";
        if (emptyTest === true) {
          return runtime.safeCall(globalThis.Predef.MatchFailure())
        } else {
          head = globalThis.Predef.stringGet(topic, 0);
          tail = globalThis.Predef.stringDrop(topic, 1);
          gtLo = "a" <= head;
          if (gtLo === true) {
            ltHi = head <= "z";
            if (ltHi === true) {
              return runtime.safeCall(globalThis.Predef.MatchResult([
                tail
              ]))
            } else {
              emptyTest1 = topic == "";
              if (emptyTest1 === true) {
                return runtime.safeCall(globalThis.Predef.MatchFailure())
              } else {
                head1 = globalThis.Predef.stringGet(topic, 0);
                tail1 = globalThis.Predef.stringDrop(topic, 1);
                gtLo1 = "A" <= head1;
                if (gtLo1 === true) {
                  ltHi1 = head1 <= "Z";
                  if (ltHi1 === true) {
                    return runtime.safeCall(globalThis.Predef.MatchResult([
                      tail1
                    ]))
                  } else {
                    return runtime.safeCall(globalThis.Predef.MatchFailure())
                  }
                } else {
                  return runtime.safeCall(globalThis.Predef.MatchFailure())
                }
              }
            }
          } else {
            emptyTest1 = topic == "";
            if (emptyTest1 === true) {
              return runtime.safeCall(globalThis.Predef.MatchFailure())
            } else {
              head1 = globalThis.Predef.stringGet(topic, 0);
              tail1 = globalThis.Predef.stringDrop(topic, 1);
              gtLo1 = "A" <= head1;
              if (gtLo1 === true) {
                ltHi1 = head1 <= "Z";
                if (ltHi1 === true) {
                  return runtime.safeCall(globalThis.Predef.MatchResult([
                    tail1
                  ]))
                } else {
                  return runtime.safeCall(globalThis.Predef.MatchFailure())
                }
              } else {
                return runtime.safeCall(globalThis.Predef.MatchFailure())
              }
            }
          }
        }
      }
      toString() { return "Letter"; }
    };
    this.Letter = new Letter$class;
    this.Letter.class = Letter$class;
    const FloatOperator$class = class FloatOperator {
      constructor() {}
      unapply(scrut) {
        if (scrut === "+.") {
          return runtime.safeCall(globalThis.Predef.MatchResult([]))
        } else if (scrut === "-.") {
          return runtime.safeCall(globalThis.Predef.MatchResult([]))
        } else if (scrut === "*.") {
          return runtime.safeCall(globalThis.Predef.MatchResult([]))
        } else if (scrut === "/.") {
          return runtime.safeCall(globalThis.Predef.MatchResult([]))
        } else {
          return runtime.safeCall(globalThis.Predef.MatchFailure())
        }
      } 
      unapplyStringPrefix(topic) {
        let cond, sliced, cond1, sliced1, cond2, sliced2, cond3, sliced3;
        cond = globalThis.Predef.stringStartsWith(topic, "+.");
        if (cond === true) {
          sliced = globalThis.Predef.stringDrop(topic, 2);
          return runtime.safeCall(globalThis.Predef.MatchResult([
            sliced
          ]))
        } else {
          cond1 = globalThis.Predef.stringStartsWith(topic, "-.");
          if (cond1 === true) {
            sliced1 = globalThis.Predef.stringDrop(topic, 2);
            return runtime.safeCall(globalThis.Predef.MatchResult([
              sliced1
            ]))
          } else {
            cond2 = globalThis.Predef.stringStartsWith(topic, "*.");
            if (cond2 === true) {
              sliced2 = globalThis.Predef.stringDrop(topic, 2);
              return runtime.safeCall(globalThis.Predef.MatchResult([
                sliced2
              ]))
            } else {
              cond3 = globalThis.Predef.stringStartsWith(topic, "/.");
              if (cond3 === true) {
                sliced3 = globalThis.Predef.stringDrop(topic, 2);
                return runtime.safeCall(globalThis.Predef.MatchResult([
                  sliced3
                ]))
              } else {
                return runtime.safeCall(globalThis.Predef.MatchFailure())
              }
            }
          }
        }
      }
      toString() { return "FloatOperator"; }
    };
    this.FloatOperator = new FloatOperator$class;
    this.FloatOperator.class = FloatOperator$class;
    const RightAssociative$class = class RightAssociative {
      constructor() {}
      unapply(scrut) {
        if (scrut === "@") {
          return runtime.safeCall(globalThis.Predef.MatchResult([]))
        } else if (scrut === "/") {
          return runtime.safeCall(globalThis.Predef.MatchResult([]))
        } else if (scrut === ",") {
          return runtime.safeCall(globalThis.Predef.MatchResult([]))
        } else if (scrut === ":") {
          return runtime.safeCall(globalThis.Predef.MatchResult([]))
        } else {
          return runtime.safeCall(globalThis.Predef.MatchFailure())
        }
      } 
      unapplyStringPrefix(topic) {
        let cond, sliced, cond1, sliced1, cond2, sliced2, cond3, sliced3;
        cond = globalThis.Predef.stringStartsWith(topic, "@");
        if (cond === true) {
          sliced = globalThis.Predef.stringDrop(topic, 1);
          return runtime.safeCall(globalThis.Predef.MatchResult([
            sliced
          ]))
        } else {
          cond1 = globalThis.Predef.stringStartsWith(topic, "/");
          if (cond1 === true) {
            sliced1 = globalThis.Predef.stringDrop(topic, 1);
            return runtime.safeCall(globalThis.Predef.MatchResult([
              sliced1
            ]))
          } else {
            cond2 = globalThis.Predef.stringStartsWith(topic, ",");
            if (cond2 === true) {
              sliced2 = globalThis.Predef.stringDrop(topic, 1);
              return runtime.safeCall(globalThis.Predef.MatchResult([
                sliced2
              ]))
            } else {
              cond3 = globalThis.Predef.stringStartsWith(topic, ":");
              if (cond3 === true) {
                sliced3 = globalThis.Predef.stringDrop(topic, 1);
                return runtime.safeCall(globalThis.Predef.MatchResult([
                  sliced3
                ]))
              } else {
                return runtime.safeCall(globalThis.Predef.MatchFailure())
              }
            }
          }
        }
      }
      toString() { return "RightAssociative"; }
    };
    this.RightAssociative = new RightAssociative$class;
    this.RightAssociative.class = RightAssociative$class;
    this.TypeKeywords = class TypeKeywords {
      static #prec;
      static #basePrec;
      static #semiPrec;
      static #arrowPrec;
      static {
        let tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, tmp16, tmp17, tmp18;
        tmp = new BetterMap.Map();
        this.all = tmp;
        TypeKeywords.#prec = 0;
        TypeKeywords.#basePrec = TypeKeywords.currPrec;
        tmp1 = TypeKeywords.keyword("type", Option.None, Option.None);
        this._type = tmp1;
        tmp2 = TypeKeywords.keyword("exception", Option.None, Option.None);
        this._exception = tmp2;
        tmp3 = TypeKeywords.keyword("let", Option.None, Option.None);
        this._let = tmp3;
        tmp4 = TypeKeywords.keyword("and", Option.None, Option.None);
        this._and = tmp4;
        TypeKeywords.#semiPrec = TypeKeywords.currPrec;
        tmp5 = TypeKeywords.keyword(";", TypeKeywords.nextPrec, TypeKeywords.#semiPrec);
        this._semicolon = tmp5;
        tmp6 = TypeKeywords.keyword(",", TypeKeywords.nextPrec, TypeKeywords.currPrec);
        this._comma = tmp6;
        tmp7 = TypeKeywords.keyword("|", TypeKeywords.nextPrec, TypeKeywords.currPrec);
        this._bar = tmp7;
        tmp8 = TypeKeywords.keyword("", TypeKeywords.nextPrec, TypeKeywords.currPrec);
        this._as = tmp8;
        TypeKeywords.#arrowPrec = TypeKeywords.currPrec;
        tmp9 = TypeKeywords.keyword("->", TypeKeywords.nextPrec, TypeKeywords.#arrowPrec);
        this._arrow = tmp9;
        tmp10 = TypeKeywords.keyword("*", TypeKeywords.nextPrec, TypeKeywords.currPrec);
        this._asterisk = tmp10;
        tmp11 = TypeKeywords.keyword(":", TypeKeywords.nextPrec, TypeKeywords.currPrec);
        this._colon = tmp11;
        tmp12 = Option.unsafe.get(TypeKeywords.nextPrec);
        this.appPrec = tmp12;
        tmp13 = TypeKeywords.keyword("of", TypeKeywords.nextPrec, TypeKeywords.currPrec);
        this._of = tmp13;
        tmp14 = TypeKeywords.keyword(".", TypeKeywords.nextPrec, TypeKeywords.currPrec);
        this._period = tmp14;
        this.bracketPrec = TypeKeywords.nextPrec;
        tmp15 = TypeKeywords.keyword("(", TypeKeywords.bracketPrec, TypeKeywords.#basePrec);
        this._leftRound = tmp15;
        tmp16 = TypeKeywords.keyword(")", TypeKeywords.#basePrec, Option.None);
        this._rightRound = tmp16;
        tmp17 = TypeKeywords.keyword("{", TypeKeywords.bracketPrec, TypeKeywords.#basePrec);
        this._leftCurly = tmp17;
        tmp18 = TypeKeywords.keyword("}", TypeKeywords.#basePrec, Option.None);
        this._rightCurly = tmp18;
      }
      static keyword(name, leftPrec, rightPrec) {
        let result, tmp, tmp1;
        tmp = Keyword.Keyword(name, leftPrec, rightPrec);
        result = tmp;
        tmp1 = TypeKeywords.all.insert(name, result);
        return result
      } 
      static get currPrec() {
        return Option.Some(TypeKeywords.#prec);
      } 
      static get nextPrec() {
        let tmp;
        tmp = TypeKeywords.#prec + 1;
        TypeKeywords.#prec = tmp;
        return Option.Some(TypeKeywords.#prec);
      }
      static toString() { return "TypeKeywords"; }
    };
  }
  static makePrecMap(startPrec, ...ops) {
    let m, i, scrut, tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;
    tmp = new BetterMap.Map();
    m = tmp;
    i = 0;
    tmp7: while (true) {
      scrut = i < ops.length;
      if (scrut === true) {
        tmp1 = runtime.safeCall(ops.at(i));
        tmp2 = runtime.safeCall(tmp1.split(" "));
        tmp3 = (op, _, _1) => {
          let scrut1, tmp8;
          scrut1 = op.length > 0;
          if (scrut1 === true) {
            tmp8 = i + startPrec;
            return m.insert(op, tmp8)
          } else {
            return runtime.Unit
          }
        };
        tmp4 = runtime.safeCall(tmp2.forEach(tmp3));
        tmp5 = i + 1;
        i = tmp5;
        tmp6 = runtime.Unit;
        continue tmp7;
      } else {
        tmp6 = runtime.Unit;
      }
      break;
    }
    return m
  } 
  static hasLetter(s) {
    return runtime.safeCall([
      ...s
    ].some((ch, _, _1) => {
      let matchResult;
      matchResult = runtime.safeCall(Precedence.Letter.unapply(ch));
      if (matchResult instanceof globalThis.Predef.MatchResult.class) {
        return true
      } else {
        return false
      }
    }))
  } 
  static opPrec(opStr) {
    let lastChar, rightPrec, matchResult, scrut, matchResult1, tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9;
    matchResult1 = runtime.safeCall(Precedence.FloatOperator.unapply(opStr));
    if (matchResult1 instanceof globalThis.Predef.MatchResult.class) {
      tmp = runtime.safeCall(opStr.at(0));
      tmp1 = Precedence.Keywords.charPrec(tmp);
      tmp2 = runtime.safeCall(opStr.at(0));
      tmp3 = Precedence.Keywords.charPrec(tmp2);
      return Predef.tuple(tmp1, tmp3)
    } else {
      scrut = Precedence.hasLetter(opStr);
      if (scrut === true) {
        return Predef.tuple(Precedence.Keywords.maxKeywordPrec, Precedence.Keywords.maxKeywordPrec)
      } else {
        tmp4 = - 1;
        lastChar = runtime.safeCall(opStr.at(tmp4));
        rightPrec = Precedence.Keywords.charPrec(lastChar);
        tmp5 = runtime.safeCall(opStr.at(0));
        tmp6 = Precedence.Keywords.charPrec(tmp5);
        tmp7 = Precedence.Keywords.charPrec(lastChar);
        matchResult = runtime.safeCall(Precedence.RightAssociative.unapply(lastChar));
        if (matchResult instanceof globalThis.Predef.MatchResult.class) {
          tmp8 = - 1;
        } else {
          tmp8 = 0;
        }
        tmp9 = tmp7 + tmp8;
        return Predef.tuple(tmp6, tmp9)
      }
    }
  }
  static toString() { return "Precedence"; }
};
let Precedence = Precedence1; export default Precedence;
