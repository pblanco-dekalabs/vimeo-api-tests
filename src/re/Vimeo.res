/*
  Module type definitions
*/

type opts = {
  path: string
}

type api_body =  {
  data: array<string>
}

type api_response = {
  body: api_body
}

type client = opts => Js.Promise.t<api_response>

@module("../ts/vimeo")
external create: () => client = "start"
