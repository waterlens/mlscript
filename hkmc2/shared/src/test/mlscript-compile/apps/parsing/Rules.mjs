import runtime from "./../../Runtime.mjs";
import Predef from "./../../Predef.mjs";
import Option from "./../../Option.mjs";
import Stack from "./../../Stack.mjs";
import BetterMap from "./../../BetterMap.mjs";
import TreeTracer from "./../../TreeTracer.mjs";
import Iter from "./../../Iter.mjs";
import Lexer from "./../Lexer.mjs";
import Token from "./Token.mjs";
import TokenHelpers from "./TokenHelpers.mjs";
import Keyword from "./Keyword.mjs";
import Precedence from "./Precedence.mjs";
import Tree from "./Tree.mjs";
import ParseRule from "./ParseRule.mjs";
let Parser1;
Parser1 = class Parser {
  static #letExpression;
  static #letDefinition;
  static #whileTerm;
  static {
    let tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, tmp16, tmp17, tmp18, tmp19, tmp20, tmp21, tmp22, tmp23, tmp24, tmp25, tmp26, tmp27, tmp28, tmp29, tmp30, tmp31, tmp32, tmp33, tmp34, tmp35, tmp36, tmp37, tmp38, tmp39, tmp40, tmp41, tmp42, tmp43, tmp44, tmp45, tmp46, tmp47, tmp48, tmp49, tmp50, tmp51, tmp52, tmp53, tmp54, tmp55, tmp56, tmp57, tmp58, tmp59, tmp60, tmp61, tmp62, tmp63, tmp64, tmp65, tmp66, tmp67, tmp68, tmp69, tmp70, tmp71, tmp72, tmp73, tmp74, tmp75, tmp76, tmp77, tmp78, tmp79, tmp80, tmp81, tmp82, tmp83, tmp84, tmp85, tmp86, tmp87, tmp88, tmp89, tmp90, tmp91, tmp92, tmp93, tmp94, tmp95, tmp96, tmp97, tmp98, tmp99, tmp100, tmp101;
    tmp = new TreeTracer.TreeTracer();
    this.tracer = tmp;
    tmp1 = new BetterMap.Map();
    this.syntaxKinds = tmp1;
    tmp2 = (lhs, rhsBindings) => {
      let first1, first0, rhs, bindings, tmp102;
      if (globalThis.Array.isArray(rhsBindings) && rhsBindings.length === 2) {
        first0 = rhsBindings[0];
        first1 = rhsBindings[1];
        rhs = first0;
        bindings = first1;
        tmp102 = Tree.Infix(Precedence.Keywords._equal, lhs, rhs);
        return Stack.Cons(tmp102, bindings)
      } else {
        throw new globalThis.Error("match error");
      }
    };
    tmp3 = ParseRule.Choice.end(Stack.Nil);
    tmp4 = ParseRule.Choice.end(runtime.Unit);
    tmp5 = ParseRule.Choice.reference("let-bindings", (tail, _) => {
      return tail
    }, "let-bindings tail", tmp4);
    tmp6 = ParseRule.Choice.keyword(Precedence.Keywords._and, "separator", tmp5);
    tmp7 = ParseRule.Choice.term((rhs, tail) => {
      return [
        rhs,
        tail
      ]
    }, "right-hand side", tmp3, tmp6);
    tmp8 = ParseRule.Choice.keyword(Precedence.Keywords._equal, "equal sign", tmp7);
    tmp9 = ParseRule.Choice.term(tmp2, "left-hand side", tmp8);
    tmp10 = Parser.defineKind("let-bindings", tmp9);
    tmp11 = Parser.letBinding(true);
    Parser.#letExpression = tmp11;
    tmp12 = Parser.letBinding(false);
    Parser.#letDefinition = tmp12;
    tmp13 = (lhs, rhsTail) => {
      let first1, first0, rhs, tail, tmp102;
      if (globalThis.Array.isArray(rhsTail) && rhsTail.length === 2) {
        first0 = rhsTail[0];
        first1 = rhsTail[1];
        rhs = first0;
        tail = first1;
        tmp102 = Tree.Infix(Precedence.Keywords._thinArrow, lhs, rhs);
        return Stack.Cons(tmp102, tail)
      } else {
        throw new globalThis.Error("match error");
      }
    };
    tmp14 = ParseRule.Choice.end(Stack.Nil);
    tmp15 = ParseRule.Choice.end(runtime.Unit);
    tmp16 = ParseRule.Choice.reference("simple-matching", (tail, _) => {
      return tail
    }, "simple-matching tail", tmp15);
    tmp17 = ParseRule.Choice.keyword(Precedence.Keywords._bar, "separator", tmp16);
    tmp18 = ParseRule.Choice.term((rhs, tail) => {
      return [
        rhs,
        tail
      ]
    }, "rhs", tmp14, tmp17);
    tmp19 = ParseRule.Choice.keyword(Precedence.Keywords._thinArrow, "arrow", tmp18);
    tmp20 = ParseRule.Choice.term(tmp13, "pattern", tmp19);
    tmp21 = Parser.defineKind("simple-matching", tmp20);
    tmp22 = ParseRule.Choice.end(runtime.Unit);
    tmp23 = ParseRule.Choice.reference("pattern-list", (tail, _) => {
      return tail
    }, "pattern list tail", tmp22);
    tmp24 = ParseRule.Choice.term((head, tail) => {
      return Stack.Cons(head, tail)
    }, "pattern", tmp23);
    tmp25 = Parser.defineKind("pattern-list", tmp24);
    tmp26 = Tree.infix(Precedence.Keywords._thinArrow);
    tmp27 = ParseRule.Choice.end(Stack.Nil);
    tmp28 = ParseRule.Choice.end(runtime.Unit);
    tmp29 = ParseRule.Choice.reference("multiple-matching", (tail, _) => {
      return tail
    }, "multiple-matching tail", tmp28);
    tmp30 = ParseRule.Choice.keyword(Precedence.Keywords._bar, "separator", tmp29);
    tmp31 = ParseRule.Choice.term((rhs, _) => {
      return rhs
    }, "the right-hand side of the arrow", tmp27, tmp30);
    tmp32 = ParseRule.Choice.keyword(Precedence.Keywords._thinArrow, "the arrow symbol", tmp31);
    tmp33 = ParseRule.Choice.reference("pattern-list", tmp26, "the list of pattern", tmp32);
    tmp34 = Parser.defineKind("multiple-matching", tmp33);
    tmp35 = ParseRule.Choice.end(runtime.Unit);
    tmp36 = ParseRule.Choice.keyword(Precedence.Keywords._done, "while end", tmp35);
    tmp37 = ParseRule.Choice.term((body, _) => {
      return body
    }, "while end", tmp36);
    tmp38 = ParseRule.Choice.keyword(Precedence.Keywords._do, "while body", tmp37);
    tmp39 = ParseRule.Choice.term(Tree.While, "while body", tmp38);
    tmp40 = ParseRule.Choice.keyword(Precedence.Keywords._while, "while condition", tmp39);
    Parser.#whileTerm = tmp40;
    tmp41 = (lhs, rhs) => {
      let param0, tail, tmp102, tmp103, tmp104;
      if (rhs instanceof Tree.Tuple.class) {
        param0 = rhs.trees;
        tail = param0;
        tmp102 = Stack.Cons(lhs, tail);
        return Tree.Tuple(tmp102)
      } else {
        tmp103 = Stack.Cons(rhs, Stack.Nil);
        tmp104 = Stack.Cons(lhs, tmp103);
        return Tree.Tuple(tmp104)
      }
    };
    tmp42 = Parser.makeInfixChoice(Precedence.Keywords._comma, "term", tmp41);
    tmp43 = (lhs, rhs) => {
      let param0, tail, tmp102, tmp103, tmp104;
      if (rhs instanceof Tree.Sequence.class) {
        param0 = rhs.trees;
        tail = param0;
        tmp102 = Stack.Cons(lhs, tail);
        return Tree.Sequence(tmp102)
      } else {
        tmp103 = Stack.Cons(rhs, Stack.Nil);
        tmp104 = Stack.Cons(lhs, tmp103);
        return Tree.Sequence(tmp104)
      }
    };
    tmp44 = Parser.makeInfixChoice(Precedence.Keywords._semicolon, "term", tmp43);
    tmp45 = ParseRule.Choice.end(runtime.Unit);
    tmp46 = ParseRule.Choice.typeExpr((rhs, _) => {
      return (lhs) => {
        return Tree.Infix(Precedence.Keywords._colon, lhs, rhs)
      }
    }, "right-hand side type", tmp45);
    tmp47 = ParseRule.Choice.keyword(Precedence.Keywords._colon, "type ascription", tmp46);
    tmp48 = Option.Some(Precedence.Keywords.appPrec);
    tmp49 = ParseRule.Choice.end(runtime.Unit);
    tmp50 = ParseRule.Choice.Ref("term", (argument, _) => {
      return (callee) => {
        return Tree.App(callee, argument)
      }
    }, tmp48, Option.None, tmp49);
    tmp51 = ParseRule.rule("infix rules for expressions", tmp42, tmp44, tmp47, tmp50);
    this.termInfixRule = tmp51;
    tmp52 = Parser.funTerm();
    tmp53 = Parser.matchTerm();
    tmp54 = Parser.functionTerm();
    tmp55 = Parser.ifThenElse();
    tmp56 = Parser.makeBracketRule(Precedence.Keywords._leftRound, Precedence.Keywords._rightRound, "term", (tree) => {
      if (tree instanceof Tree.Empty.class) {
        return Tree.Tuple(Stack.Nil)
      } else {
        return tree
      }
    });
    tmp57 = (tree) => {
      let tmp102;
      if (tree instanceof Tree.Empty.class) {
        tmp102 = Tree.Sequence(Stack.Nil);
      } else {
        tmp102 = tree;
      }
      return Tree.Bracketed(Token.Square, tmp102)
    };
    tmp58 = Parser.makeBracketRule(Precedence.Keywords._leftSquare, Precedence.Keywords._rightSquare, "term", tmp57);
    tmp59 = Parser.makeBracketRule(Precedence.Keywords._leftCurly, Precedence.Keywords._rightCurly, "term", Predef.id);
    tmp60 = Parser.makeBracketRule(Precedence.Keywords._begin, Precedence.Keywords._end, "term", (tree) => {
      if (tree instanceof Tree.Empty.class) {
        return Tree.Sequence(Stack.Nil)
      } else {
        return tree
      }
    });
    tmp61 = ParseRule.Choice.Ref("term", (lhs, compose) => {
      return runtime.safeCall(compose(lhs))
    }, Option.None, Option.None, Parser.termInfixRule);
    tmp62 = ParseRule.rule("prefix rules for expressions", Parser.#letExpression, tmp52, tmp53, tmp54, tmp55, Parser.#whileTerm, Parser.forTerm, tmp56, tmp58, tmp59, tmp60, tmp61);
    this.termRule = tmp62;
    tmp63 = (lhs, rhs) => {
      let param0, tail, tmp102, tmp103, tmp104;
      if (rhs instanceof Tree.Tuple.class) {
        param0 = rhs.trees;
        tail = param0;
        tmp102 = Stack.Cons(lhs, tail);
        return Tree.Tuple(tmp102)
      } else {
        tmp103 = Stack.Cons(rhs, Stack.Nil);
        tmp104 = Stack.Cons(lhs, tmp103);
        return Tree.Tuple(tmp104)
      }
    };
    tmp64 = Parser.makeInfixChoice(Precedence.TypeKeywords._comma, "type", tmp63);
    tmp65 = Parser.makeInfixChoice(Precedence.TypeKeywords._arrow, "type", (lhs, rhs) => {
      return Tree.Infix(Precedence.TypeKeywords._arrow, lhs, rhs)
    });
    tmp66 = Parser.makeInfixChoice(Precedence.TypeKeywords._asterisk, "type", (lhs, rhs) => {
      return Tree.Infix(Precedence.TypeKeywords._asterisk, lhs, rhs)
    });
    tmp67 = Option.Some(Precedence.TypeKeywords.appPrec);
    tmp68 = ParseRule.Choice.end(runtime.Unit);
    tmp69 = ParseRule.Choice.Ref("type", (callee, _) => {
      return (argument) => {
        return Tree.App(callee, argument)
      }
    }, tmp67, Option.None, tmp68);
    tmp70 = ParseRule.rule("infix rules for types", tmp64, tmp65, tmp66, tmp69);
    this.typeInfixRule = tmp70;
    tmp71 = Parser.makeBracketRule(Precedence.TypeKeywords._leftRound, Precedence.TypeKeywords._rightRound, "type", Predef.id);
    tmp72 = ParseRule.Choice.Ref("type", (lhs, compose) => {
      return runtime.safeCall(compose(lhs))
    }, Option.None, Option.None, Parser.typeInfixRule);
    tmp73 = ParseRule.rule("rules for types", tmp71, tmp72);
    this.typeRule = tmp73;
    tmp74 = (ctor, argOpt) => {
      let param0, arg;
      if (argOpt instanceof Option.Some.class) {
        param0 = argOpt.value;
        arg = param0;
        return Tree.Infix(Precedence.TypeKeywords._of, ctor, arg)
      } else if (argOpt instanceof Option.None.class) {
        return ctor
      } else {
        throw new globalThis.Error("match error");
      }
    };
    tmp75 = ParseRule.Choice.end(Option.None);
    tmp76 = ParseRule.Choice.end(runtime.Unit);
    tmp77 = ParseRule.Choice.reference("type", (argument, _) => {
      return Option.Some(argument)
    }, "the variant constructor's argument", tmp76);
    tmp78 = ParseRule.Choice.keyword(Precedence.Keywords._of, "the `of` operator", tmp77);
    tmp79 = ParseRule.Choice.typeExpr(tmp74, "the variant constructor's name", tmp75, tmp78);
    tmp80 = Parser.defineKind("constr-decl", tmp79);
    tmp81 = Parser.defineKind("variants", Parser.variantsRule);
    tmp82 = Parser.defineKind("typedefs", Parser.typedefRule);
    tmp83 = ParseRule.Choice.end(runtime.Unit);
    tmp84 = ParseRule.Choice.reference("variants", (rhs, _) => {
      return (lhs) => {
        return Tree.Infix(Precedence.Keywords._equal, lhs, rhs)
      }
    }, "typedef-rhs: variants", tmp83);
    tmp85 = ParseRule.Choice.map(Parser.recordTypeChoice, (rhs) => {
      return (lhs) => {
        return Tree.Infix(Precedence.Keywords._equal, lhs, rhs)
      }
    });
    tmp86 = ParseRule.Choice.keyword(Precedence.Keywords._equal, "`=` operator", tmp84, tmp85);
    tmp87 = ParseRule.Choice.end(runtime.Unit);
    tmp88 = ParseRule.Choice.reference("type", (rhs, _) => {
      return (lhs) => {
        return Tree.Infix(Precedence.Keywords._equalequal, lhs, rhs)
      }
    }, "type alias body", tmp87);
    tmp89 = ParseRule.Choice.keyword(Precedence.Keywords._equalequal, "`==` operator", tmp88);
    tmp90 = Parser.defineKind("typedef-rhs", tmp86, tmp89);
    tmp91 = Parser.defineKind("label-decl", Parser.labelDecl);
    tmp92 = Parser.defineKind("label-decls", Parser.labelDecls);
    tmp93 = ParseRule.Choice.end(Stack.Nil);
    tmp94 = ParseRule.Choice.end(runtime.Unit);
    tmp95 = ParseRule.Choice.reference("constr-decls", (tail, _) => {
      return tail
    }, "more constructor declarations", tmp94);
    tmp96 = ParseRule.Choice.keyword(Precedence.Keywords._bar, "separator `and`", tmp95);
    tmp97 = ParseRule.Choice.reference("constr-decl", Stack.Cons, "the first constructor declaration", tmp93, tmp96);
    tmp98 = Parser.defineKind("constr-decls", tmp97);
    tmp99 = Parser.typeDefinition();
    tmp100 = Parser.exceptionDefinition();
    tmp101 = ParseRule.rule("prefix rules for module items", Parser.#letDefinition, tmp99, tmp100);
    this.declRule = tmp101;
  }
  static getRuleByKind(kind) {
    let tmp;
    tmp = runtime.safeCall(Parser.syntaxKinds.get(kind));
    return Option.unsafe.get(tmp)
  } 
  static defineKind(name, ...choices) {
    let tmp;
    tmp = ParseRule.rule(name, ...choices);
    return Parser.syntaxKinds.insert(name, tmp)
  } 
  static letBinding(hasInClause) {
    let intro, tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, tmp16, tmp17;
    intro = "let binding: ";
    tmp = intro + "keyword";
    tmp1 = intro + "keyword";
    tmp2 = intro + "`rec` keyword";
    tmp3 = ParseRule.Choice.end(runtime.Unit);
    tmp4 = ParseRule.Choice.keyword(Precedence.Keywords._rec, tmp2, tmp3);
    tmp5 = ParseRule.rule(tmp1, tmp4);
    tmp6 = intro + "body";
    if (hasInClause === true) {
      tmp7 = intro + "`in` keyword";
      tmp8 = intro + "body";
      tmp9 = ParseRule.Choice.end(runtime.Unit);
      tmp10 = ParseRule.Choice.term((body, _) => {
        return Option.Some(body)
      }, tmp8, tmp9);
      tmp11 = ParseRule.Choice.keyword(Precedence.Keywords._in, tmp7, tmp10);
      tmp12 = ParseRule.Choice.end(Option.None);
      tmp13 = Predef.tuple(tmp11, tmp12);
    } else {
      tmp14 = ParseRule.Choice.end(Option.None);
      tmp13 = Predef.tuple(tmp14);
    }
    tmp15 = ParseRule.Choice.reference("let-bindings", (bindings, body) => {
      return Tree.LetIn(bindings, body)
    }, "let-bindings", ...tmp13);
    tmp16 = ParseRule.rule(tmp6, tmp15);
    tmp17 = ParseRule.Choice.Optional(tmp5, tmp16);
    return ParseRule.Choice.keyword(Precedence.Keywords._let, tmp, tmp17)
  } 
  static ifThenElse() {
    let intro, tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13;
    intro = "if-then-else: ";
    tmp = intro + "`if` keyword";
    tmp1 = (tst, conAlt) => {
      let first1, first0, con, alt;
      if (globalThis.Array.isArray(conAlt) && conAlt.length === 2) {
        first0 = conAlt[0];
        first1 = conAlt[1];
        con = first0;
        alt = first1;
        return Tree.Ternary(Precedence.Keywords._if, tst, con, alt)
      } else {
        throw new globalThis.Error("match error");
      }
    };
    tmp2 = intro + "condition";
    tmp3 = intro + "`then` keyword";
    tmp4 = intro + "consequent";
    tmp5 = ParseRule.Choice.end(Option.None);
    tmp6 = intro + "`else` keyword";
    tmp7 = intro + "alternative";
    tmp8 = ParseRule.Choice.end(Option.None);
    tmp9 = ParseRule.Choice.term((alt, _) => {
      return Option.Some(alt)
    }, tmp7, tmp8);
    tmp10 = ParseRule.Choice.keyword(Precedence.Keywords._else, tmp6, tmp9);
    tmp11 = ParseRule.Choice.term((con, optAlt) => {
      return [
        con,
        optAlt
      ]
    }, tmp4, tmp5, tmp10);
    tmp12 = ParseRule.Choice.keyword(Precedence.Keywords._then, tmp3, tmp11);
    tmp13 = ParseRule.Choice.term(tmp1, tmp2, tmp12);
    return ParseRule.Choice.keyword(Precedence.Keywords._if, tmp, tmp13)
  } 
  static funTerm() {
    let intro, tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
    intro = "function expression: ";
    tmp = intro + "keyword";
    tmp1 = intro + "parameters";
    tmp2 = intro + "arrow";
    tmp3 = intro + "body";
    tmp4 = ParseRule.Choice.end(Option.None);
    tmp5 = ParseRule.Choice.term((body, _) => {
      return body
    }, tmp3, tmp4);
    tmp6 = ParseRule.Choice.keyword(Precedence.Keywords._thinArrow, tmp2, tmp5);
    tmp7 = ParseRule.Choice.term((params, body) => {
      let tmp8;
      tmp8 = Stack.Cons(params, Stack.Nil);
      return Tree.Lambda(tmp8, body)
    }, tmp1, tmp6);
    return ParseRule.Choice.keyword(Precedence.Keywords._fun, tmp, tmp7)
  } 
  static matchTerm() {
    let intro, tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11;
    intro = "`match` expression: ";
    tmp = intro + "keyword";
    tmp1 = intro + "scrutinee";
    tmp2 = intro + "with";
    tmp3 = intro + "body";
    tmp4 = intro + "leading bar";
    tmp5 = ParseRule.Choice.end(runtime.Unit);
    tmp6 = ParseRule.Choice.keyword(Precedence.Keywords._bar, tmp4, tmp5);
    tmp7 = ParseRule.rule(tmp3, tmp6);
    tmp8 = Parser.getRuleByKind("simple-matching");
    tmp9 = ParseRule.Choice.Optional(tmp7, tmp8);
    tmp10 = ParseRule.Choice.keyword(Precedence.Keywords._with, tmp2, tmp9);
    tmp11 = ParseRule.Choice.term((scrutinee, branches) => {
      return Tree.Match(scrutinee, branches)
    }, tmp1, tmp10);
    return ParseRule.Choice.keyword(Precedence.Keywords._match, tmp, tmp11)
  } 
  static functionTerm() {
    let intro, body, tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8;
    intro = "`function` definition: ";
    tmp = intro + "body";
    tmp1 = intro + "leading bar";
    tmp2 = ParseRule.Choice.end(runtime.Unit);
    tmp3 = ParseRule.Choice.keyword(Precedence.Keywords._bar, tmp1, tmp2);
    tmp4 = ParseRule.rule(tmp, tmp3);
    tmp5 = Parser.getRuleByKind("simple-matching");
    tmp6 = ParseRule.Choice.Optional(tmp4, tmp5);
    body = tmp6;
    tmp7 = intro + "`function` keyword";
    tmp8 = ParseRule.Choice.map(body, (branches) => {
      return Tree.Match(Tree.empty, branches)
    });
    return ParseRule.Choice.keyword(Precedence.Keywords._function, tmp7, tmp8)
  } 
  static get forTerm() {
    let intro, innerPart, tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, tmp16, tmp17, tmp18;
    intro = "for: ";
    tmp = intro + "`do` keyword";
    tmp1 = intro + "body expression";
    tmp2 = intro + "`done` keyword";
    tmp3 = ParseRule.Choice.end(runtime.Unit);
    tmp4 = ParseRule.Choice.keyword(Precedence.Keywords._done, "the end", tmp3);
    tmp5 = ParseRule.Choice.term((body, _) => {
      return body
    }, tmp2, tmp4);
    tmp6 = ParseRule.Choice.keyword(Precedence.Keywords._do, tmp1, tmp5);
    tmp7 = ParseRule.Choice.term((end, body) => {
      return [
        end,
        body
      ]
    }, tmp, tmp6);
    innerPart = tmp7;
    tmp8 = intro + "left-hand side";
    tmp9 = (head, startEndBody) => {
      let first2, first1, first0, start, end, body;
      if (globalThis.Array.isArray(startEndBody) && startEndBody.length === 3) {
        first0 = startEndBody[0];
        first1 = startEndBody[1];
        first2 = startEndBody[2];
        start = first0;
        end = first1;
        body = first2;
        return Tree.For(head, start, end, body)
      } else {
        throw new globalThis.Error("match error");
      }
    };
    tmp10 = intro + "head";
    tmp11 = intro + "start expression";
    tmp12 = (start, endBody) => {
      let first1, first0, end, body;
      if (globalThis.Array.isArray(endBody) && endBody.length === 2) {
        first0 = endBody[0];
        first1 = endBody[1];
        end = first0;
        body = first1;
        return [
          start,
          end,
          body
        ]
      } else {
        throw new globalThis.Error("match error");
      }
    };
    tmp13 = intro + "`to` or `downto` keyword";
    tmp14 = ParseRule.Choice.keyword(Precedence.Keywords._to, "end expression", innerPart);
    tmp15 = ParseRule.Choice.keyword(Precedence.Keywords._downto, "end expression", innerPart);
    tmp16 = ParseRule.Choice.term(tmp12, tmp13, tmp14, tmp15);
    tmp17 = ParseRule.Choice.keyword(Precedence.Keywords._equal, tmp11, tmp16);
    tmp18 = ParseRule.Choice.term(tmp9, tmp10, tmp17);
    return ParseRule.Choice.keyword(Precedence.Keywords._for, tmp8, tmp18);
  } 
  static makeInfixChoice(keyword, rhsKind, compose) {
    let tmp, tmp1, tmp2, tmp3, tmp4, tmp5;
    tmp = "operator `" + keyword.name;
    tmp1 = tmp + "`";
    tmp2 = "operator `" + keyword.name;
    tmp3 = tmp2 + "` right-hand side";
    tmp4 = ParseRule.Choice.end(runtime.Unit);
    tmp5 = ParseRule.Choice.reference(rhsKind, (rhs, _) => {
      return (lhs) => {
        return runtime.safeCall(compose(lhs, rhs))
      }
    }, tmp3, tmp4);
    return ParseRule.Choice.keyword(keyword, tmp1, tmp5)
  } 
  static makeBracketRule(opening, closing, contentKind, wrapContent) {
    let tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;
    tmp = contentKind + ": bracket content";
    tmp1 = (tree, end) => {
      let param0, param1, msg, tmp7;
      if (end instanceof Tree.Error.class) {
        param0 = end.tree;
        param1 = end.message;
        if (param0 instanceof Tree.Empty.class) {
          msg = param1;
          tmp7 = runtime.safeCall(wrapContent(tree));
          return Tree.Error(tmp7, msg)
        } else {
          throw new globalThis.Error("match error");
        }
      } else if (end instanceof Tree.Empty.class) {
        return runtime.safeCall(wrapContent(tree))
      } else {
        throw new globalThis.Error("match error");
      }
    };
    tmp2 = contentKind + ": close bracket";
    tmp3 = contentKind + ": the end of bracket";
    tmp4 = ParseRule.Choice.end(Tree.empty);
    tmp5 = ParseRule.Choice.keyword(closing, tmp3, tmp4);
    tmp6 = ParseRule.Choice.reference(contentKind, tmp1, tmp2, tmp5);
    return ParseRule.Choice.keyword(opening, tmp, tmp6)
  } 
  static get recordTypeChoice() {
    let intro, tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;
    intro = "record type: ";
    tmp = intro + "left brace";
    tmp1 = (content, _) => {
      let tmp7, tmp8;
      if (content instanceof Stack.Nil.class) {
        tmp7 = Tree.Sequence(Stack.Nil);
        return Tree.Bracketed(Token.Curly, tmp7)
      } else {
        tmp8 = Tree.Sequence(content);
        return Tree.Bracketed(Token.Curly, tmp8)
      }
    };
    tmp2 = intro + "label-decl";
    tmp3 = intro + "right brace";
    tmp4 = ParseRule.Choice.end(Tree.empty);
    tmp5 = ParseRule.Choice.keyword(Precedence.Keywords._rightCurly, tmp3, tmp4);
    tmp6 = ParseRule.Choice.reference("label-decls", tmp1, tmp2, tmp5);
    return ParseRule.Choice.keyword(Precedence.Keywords._leftCurly, tmp, tmp6);
  } 
  static typeDefinition() {
    let intro, tmp, tmp1, tmp2, tmp3;
    intro = "type definition";
    tmp = intro + "type defs";
    tmp1 = intro + "end";
    tmp2 = ParseRule.Choice.end(runtime.Unit);
    tmp3 = ParseRule.Choice.reference("typedefs", (typedefs, _) => {
      return Tree.Define(Tree.DefineKind.Type, typedefs)
    }, tmp1, tmp2);
    return ParseRule.Choice.keyword(Precedence.Keywords._type, tmp, tmp3)
  } 
  static get variantsRule() {
    let intro, tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
    intro = "variant ";
    tmp = (lhs, rhsOpt) => {
      let param0, rhs;
      if (rhsOpt instanceof Option.Some.class) {
        param0 = rhsOpt.value;
        rhs = param0;
        return Tree.Infix(Precedence.Keywords._bar, lhs, rhs)
      } else {
        return lhs
      }
    };
    tmp1 = intro + "item";
    tmp2 = ParseRule.Choice.end(Option.None);
    tmp3 = intro + "bar";
    tmp4 = intro + "end";
    tmp5 = ParseRule.Choice.end(runtime.Unit);
    tmp6 = ParseRule.Choice.reference("variants", (more, _) => {
      return Option.Some(more)
    }, tmp4, tmp5);
    tmp7 = ParseRule.Choice.keyword(Precedence.Keywords._bar, tmp3, tmp6);
    return ParseRule.Choice.reference("constr-decl", tmp, tmp1, tmp2, tmp7);
  } 
  static get typedefRule() {
    let intro, tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9;
    intro = "typedef ";
    tmp = (lhs, rhsMore) => {
      let first1, first0, rhs, more, tmp10;
      if (globalThis.Array.isArray(rhsMore) && rhsMore.length === 2) {
        first0 = rhsMore[0];
        first1 = rhsMore[1];
        rhs = first0;
        more = first1;
        tmp10 = runtime.safeCall(rhs(lhs));
        return Stack.Cons(tmp10, more)
      } else {
        throw new globalThis.Error("match error");
      }
    };
    tmp1 = intro + "name";
    tmp2 = intro + "body";
    tmp3 = ParseRule.Choice.end(Stack.Nil);
    tmp4 = intro + "and";
    tmp5 = intro + "end";
    tmp6 = ParseRule.Choice.end(runtime.Unit);
    tmp7 = ParseRule.Choice.reference("typedefs", (more, _) => {
      return more
    }, tmp5, tmp6);
    tmp8 = ParseRule.Choice.keyword(Precedence.Keywords._and, tmp4, tmp7);
    tmp9 = ParseRule.Choice.reference("typedef-rhs", (rhs, more) => {
      return [
        rhs,
        more
      ]
    }, tmp2, tmp3, tmp8);
    return ParseRule.Choice.typeExpr(tmp, tmp1, tmp9);
  } 
  static get labelDecl() {
    let intro, tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;
    intro = "label-decl: ";
    tmp = Tree.infix(Precedence.TypeKeywords._colon);
    tmp1 = intro + "name";
    tmp2 = intro + "colon";
    tmp3 = intro + "body";
    tmp4 = ParseRule.Choice.end(runtime.Unit);
    tmp5 = ParseRule.Choice.typeExpr((rhs, _) => {
      return rhs
    }, tmp3, tmp4);
    tmp6 = ParseRule.Choice.keyword(Precedence.TypeKeywords._colon, tmp2, tmp5);
    return ParseRule.Choice.typeExpr(tmp, tmp1, tmp6);
  } 
  static get labelDecls() {
    let intro, tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;
    intro = "label-decls: ";
    tmp = intro + "label-decl";
    tmp1 = ParseRule.Choice.end(Stack.Nil);
    tmp2 = intro + "semicolon";
    tmp3 = intro + "end";
    tmp4 = ParseRule.Choice.end(runtime.Unit);
    tmp5 = ParseRule.Choice.reference("label-decls", (more, _) => {
      return more
    }, tmp3, tmp4);
    tmp6 = ParseRule.Choice.keyword(Precedence.Keywords._semicolon, tmp2, tmp5);
    return ParseRule.Choice.reference("label-decl", Stack.Cons, tmp, tmp1, tmp6);
  } 
  static exceptionDefinition() {
    let intro, tmp, tmp1, tmp2;
    intro = "exception definition: ";
    tmp = intro + "keyword";
    tmp1 = ParseRule.Choice.end(runtime.Unit);
    tmp2 = ParseRule.Choice.reference("constr-decls", (decls, _) => {
      return Tree.Define(Tree.DefineKind.Exception, decls)
    }, "constructor declarations", tmp1);
    return ParseRule.Choice.keyword(Precedence.Keywords._exception, tmp, tmp2)
  }
  static toString() { return "Parser"; }
};