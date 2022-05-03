let me: School.person = {
  age: 18,
  name: "Hannal",
}

Js.log(me)

me.age = 20

Js.log(me)
Js.log(me.age)

let student1 = School.student1
student1["name"] = "Kay"
Js.log(student1)

type myResponse = | Yes | No | PrettyMuch
let areYouCrushingIt = Yes
Js.log(areYouCrushingIt)

// polymorphic variant
let myColor = #red 
let myLabel = #"aria-hidden"
let myNumber = #7
type color = [#red | #green | #blue]
let render = (myColor: [#red | #green | #blue]) => {
  switch myColor {
    | #blue => Js.log("Hello blue")
    | #red 
    | #green => Js.log("Hello other colors")
  }
}
