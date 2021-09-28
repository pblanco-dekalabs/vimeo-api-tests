/*
  Consume Vimeo opaque descriptor.
*/
open Vimeo

let req = create()

req({
  path: "/channels/staffpicks/videos"
})->Js.Promise.then_(res => {
  res.body.data->Js.Array.forEach(datum => {
    Js.log(datum)
  }, _)
  Js.log("Done!")
  Js.Promise.resolve(true)
}, _)->ignore
