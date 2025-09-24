import { Pool } from "pg";

const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "my_app",
  password: "khos1221", // change if needed
  port: 5432,
});

export async function query(sql, data = []) {
  const result = await pool.query(sql, data);
  return result.rows;
}
