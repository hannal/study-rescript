Js.log(["hello", "world"])

let myList = list{1, 2, 3}
Js.log2("list", myList)

let myList2 = list{0, ...myList}
let myList3 = list{0, ...Belt.List.concat(myList, myList2)}
// https://rescript-lang.org/docs/manual/latest/api/belt/list#concatmany
let myList4 = Belt.List.concatMany([myList, myList2, myList3])
Js.log(myList4)

let message =
  switch myList {
  | list{} => "This list is empty"
  | list{a, ...rest} => "The head of the list is the string " ++ Js.Int.toString(a) ++ "and rest is " ++ Js.Array2.toString(Belt.List.toArray(rest))
  }
Js.log(message)
