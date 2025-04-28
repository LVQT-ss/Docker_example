import express from 'express';

const app = express();

app.get('/', (req, res) => {
    res.send('welcome to terrible docker tuto')
});
const port = process.env.PORT || 3000
app.listen(port, () => {
    console.log(`no connection on localhost:${port}`)
})