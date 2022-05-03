// polymorphic variant

type red = [#Ruby | #Redwood | #Rust]
type blue = [#Sapphire | #Neon | #Navy]
type color = [red | blue | #Papayawhip]
let myColor: color = #Ruby

switch myColor {
| #...blue => Js.log("This blue-ish")
| #...red => Js.log("This red-ish")
| other => Js.log2("Other color than red and blue: ", other)
}

switch myColor {
| #Sapphire | #Neon | #Navy => Js.log("This is blue-ish")
| #Ruby | #Redwood | #Rust => Js.log("This is red-ish")
| other => Js.log2("Other color than red and blue: ", other)
}

type t 

@scope("Intl") @val
external makeNumberFormat: ([#"de-DE" | #"en-GB" | #"en-US"]) => t = "NumberFormat"
let intl = makeNumberFormat(#"de-DE")
Js.log(intl)
