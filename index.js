import { Client, Pool } from "pg"

const client = new Client( {
	user: "postgres",
	host: "localhost",
	database: "my_app",
	password: "khos1221",
	port: 5432,
} )

await client.connect()

const query = `select * from users`

const result = await client.query( query )

console.log( result.rows )

await client.end()