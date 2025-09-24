/*import { query } from "./db.js";

async function main() {
  try {
    console.log("🚀 Running query...");
    const rows = await query("SELECT now() as time;");
    console.log("✅ Query result:", rows);
  } catch (err) {
    console.error("❌ Error:", err);
  }
}

main();*/
/*
import { query } from "./db.js";

async function main() {
  try {
    console.log("🚀 Running LEFT JOIN...");

    const rows = await query(`
      SELECT u.id, u.username, p.rights
      FROM users u
      LEFT JOIN permissions p
      ON u.id = p.user_id;
    `);

    console.log("✅ Join result:", rows);
  } catch (err) {
    console.error("❌ Error:", err);
  }
}

main();*/
import { query } from "./db.js";
import fs from "fs";

async function main() {
  try {
    console.log("🚀 Running trigger.sql...");
    const sql = fs.readFileSync("./trigger.sql", "utf-8");
    await query(sql);
    console.log("✅ trigger.sql executed successfully");
  } catch (err) {
    console.error("❌ Error:", err);
  }
}

main();

