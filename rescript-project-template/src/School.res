type person = {
  name: string,
  mutable age: int,
}

type student = {
  @set "age": int,
  @set "name": string,
}
@module("School") @val external student1: student = "student1"
