var db = require('./pghelper');

function escape(s) {
    return s.replace(/[-\/\\^$*+?.()|[\]{}]/g, '\\$&');
}

function findAll(req, res, next) {

    var pageSize = 12,
        page = req.query.page ? parseInt(req.query.page) : 1,
        search = req.query.search,
        min = req.query.min,
        max = req.query.max,
        whereParts = [],
        values = [];

    console.log(page);

    if (search) {
        values.push(escape(search));
        whereParts.push("beer.name || beer.tags || brewery.name ~* $" + values.length);
    }
    if (min) {
        values.push(parseFloat(min));
        whereParts.push("beer.alcohol >= $" + values.length);
    }
    if (max) {
        values.push(parseFloat(max));
        whereParts.push("beer.alcohol <= $" + values.length);
    }

    var where = whereParts.length > 0 ? ("WHERE " + whereParts.join(" AND ")) : "";

    var countSql = "SELECT COUNT(*) from beer INNER JOIN brewery on beer.brewery_id = brewery.id " + where;

    var sql = "SELECT beer.id, beer.name, alcohol, tags, image, beer.brewery as brewery " +
                "FROM beer INNER JOIN brewery on beer.brewery_id = brewery.id " + where +
                " ORDER BY beer.name LIMIT $" + (values.length + 1) + " OFFSET $" +  + (values.length + 2);

    // TODO: Use q to run the two queries in parallel
    db.query(countSql, values)
        .then(function (result) {
            var total = parseInt(result[0].count);
            db.query(sql, values.concat([pageSize, ((page - 1) * pageSize)]))
                .then(function(products) {
                    return res.json({"pageSize": pageSize, "page": page, "total": total, "products": products});
                })
                .catch(next);
        })
        .catch(next);
};

function findById(req, res, next) {
    var id = req.params.id;

    var sql = "SELECT beer.id, beer.name, alcohol, tags, brewery.name as brewery FROM beer " +
                "INNER JOIN brewery on beer.brewery_id = brewery.id " +
                "WHERE beer.id = $1";

    db.query(sql, [id])
        .then(function (product) {
            return res.send(JSON.stringify(product));
        })
        .catch(next);
};

exports.findAll = findAll;
exports.findById = findById;