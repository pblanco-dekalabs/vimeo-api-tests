/*
  Consume Vimeo opaque descriptor.
*/

type opts = {
  path: string
}
type client = opts => Js.Promise.t<string>

@module("../ts/vimeo")
external start: () => client = "start"

let req = start()

req({
  path: "/channels/staffpicks/videos"
})->Js.Promise.then_(res => {
  Js.log(res)
  Js.log("Done!")
  Js.Promise.resolve(true)
}, _)->ignore
