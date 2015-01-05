var express = require('express'),
    //path = require('path'),
    compression = require('compression'),
    products = require('./server/products'),
    app = express();

app.set('port', process.env.PORT || 5000);

app.use(compression());

app.use('/', express.static(__dirname + '/www'));

app.get('/products', products.findAll);
app.get('/products/:id', products.findById);

app.listen(app.get('port'), function () {
    console.log('Express server listening on port ' + app.get('port'));
});