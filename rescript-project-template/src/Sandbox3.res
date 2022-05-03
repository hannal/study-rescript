let labeledArguments = (~x as xx: int, ~y) => xx + y
Js.log(labeledArguments(~x=5, ~y=6))

// Note for the sake of the type system,
// whenever you have an optional argument,
// you need to ensure that there's also at least one positional argument
// (aka non-labeled, non-optional argument) after it.
// If there's none, provide a dummy unit (aka ()) argument.
let optionalArguments = (~x, ~y=?, ()) => {
  switch y {
    | None => x + 10
    | Some(r_) => x + r_
  }
}
Js.log(optionalArguments(~x=5, ~y=6))
Js.log(optionalArguments(~x=5))

// signature
let signatureAndAnnotation: (~x: int, ~y: int=?, unit) => int =
  (~x: int, ~y: option<int>=?, ()) => {
    switch y {
      | None => x + 20
      | Some(r_) => x + r_
    }
  }

let payload = Some(10)
Js.log(signatureAndAnnotation(~x=10, ~y=?payload, ()))

let optionalWithDefault = (~x=1, ~y, ()) => x + y
Js.log(optionalWithDefault(~x=10, ~y=20))
Js.log(optionalWithDefault(~y=20))

// recursive
// NOTE : `rec` keyword
let rec listHas = (list, item) =>
  switch list {
  | list{} => false
  | list{a, ...rest} => a === item || listHas(rest, item)
  }
Js.log(listHas(list{1, 2, 3}, 4))

// curried
let add1 = (a, b) => a + b
let curriedAdd = add1(1)
Js.log(curriedAdd(2))

// uncurried
let add2 = (. a, b) => a + b
Js.log(add2(. 10, 20))
// uncurried error
// let curriedAdd2 = add2(1)
// Js.log(curriedAdd2(20))
