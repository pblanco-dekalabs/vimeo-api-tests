/*
  Vimeo API interface.
*/
import { Vimeo } from 'vimeo';
require('dotenv').config()

// Config bindings
const CONFIG = {
  CLIENT_ID: process.env.CLIENT_ID as string,
  CLIENT_SECRET: process.env.CLIENT_SECRET as string,
  ACCESS_TOKEN: process.env.ACCESS_TOKEN as string,
}

/**
 * Start processing.
 */
export function start() {
  const client = new Vimeo(CONFIG.CLIENT_ID, CONFIG.CLIENT_SECRET, CONFIG.ACCESS_TOKEN)
  return async function request(options: any) {
    return new Promise((resolve, reject) => {
      client.request(options, (error, body, status, headers) => {
        if (error != null) {
          reject(error)
        } else {
          resolve({ body, status, headers })
        }
      })
    })
  }
}
