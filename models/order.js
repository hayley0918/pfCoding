const db = require('../db')

// join the db tables to select the columns to display

// search orders by part of the order or product name2

function joinTables(){
    return db.query('select companies.company_name, customers.customer_name, orders.created_at, orders.order_name, order_items.price_per_unit, order_items.quantity, order_items.product, deliveries.delivered_quantity from companies inner join customers on companies.company_id = customers.company_id inner join orders on customers.customer_id = orders.customer_id inner join order_items on orders.id = order_items.order_id inner join deliveries on order_items.id = deliveries.order_item_id;')
}

module.exports = {
    joinTables:joinTables
}