const Pool = require('pg').Pool

const pool = new Pool({
    host: 'localhost',
    user: 'minkyungchoi',
    database: 'ordermanagement',
    idleTimeoutMillis: 30000,
    connectionTimeoutMillis: 2000
})

module.exports = pool