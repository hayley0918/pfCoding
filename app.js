const express = require("express")
const bodyParser = require('body-parser')
var pagination = require('pagination')

const app = express()
const pool = require('./db')
const port = 3000

const { joinTables } = require('./models/order')

// middleware
app.use(express.static('public'))
app.use(bodyParser.urlencoded({extended: true}))
app.set('view-engine', 'ejs')

// routing
app.get('/', async(req, res) => {
    res.json({appInfo: 'built with NodeJS, Express and Psql'})
})

// display all the data(orders)
app.get('/orders', async(req, res) => {
    const orders = await joinTables()

    const pageCount = Math.ceil(orders.rows.length / 5);
    let page = parseInt(req.query.page);
    if (!page) { page = 1;}
    if (page > pageCount) {
        page = pageCount
    }
  
    res.render('orderInfo.ejs', {
        orders: orders.rows,
        page: page,
        ordersPerPage: orders.rows.slice(page * 5 - 5, page * 5),
        pageCount: pageCount
    })
})

// display filtered data(by product name, date range)
app.post('/orders', async(req, res) => {
    const orders = await joinTables()
    const ordersArr = orders.rows
    const productName = req.body.product

    const startDate = new Date(req.body.startDate)
    const endDate = new Date(req.body.endDate)

    if(productName){
        filteredOrders = ordersArr.filter(elem=>{
            if(elem.product.includes(`${productName}`)){
                return elem
            }
        })
    }else if(startDate && endDate){
        filteredOrders = ordersArr.filter(elem=>{
            if(elem.created_at > startDate && elem.created_at < endDate){
                return elem
            }
        })
    }

    const pageCount = Math.ceil(filteredOrders.length / 5);
    let page = parseInt(req.query.page);
    if (!page) { page = 1;}
    if (page > pageCount) {
        page = pageCount
    }

    res.render('orderInfo.ejs', {
        orders: filteredOrders,
        page: page,
        ordersPerPage: filteredOrders.slice(page * 5 - 5, page * 5),
        pageCount: pageCount
    })
})

app.listen(port, ()=>{
    console.log(`server has started on port ${port}`)
})