import * as algosdk from 'algosdk'
import * as dotenv from 'dotenv'

dotenv.config()

const token  = JSON.parse(process.env.TESTNET_TOKEN as string)
const server = process.env.TESTNET_SERVER
const port   = process.env.TESTNET_PORT

export const algodClient = new algosdk.Algodv2(token, server, port)
