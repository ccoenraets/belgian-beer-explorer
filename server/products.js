"use strict";

let db = require('./pghelper');

let escape = s => s.replace(/[-\/\\^$*+?.()|[\]{}]/g, '\\$&');

let findAll = (req, res, next) => {

    let pageSize = req.query.pageSize ? parseInt(req.query.pageSize) : 12,
        page = req.query.page ? parseInt(req.query.page) : 1,
        search = req.query.search,
        min = req.query.min,
        max = req.query.max,
        whereParts = [],
        values = [];

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

    let where = whereParts.length > 0 ? ("WHERE " + whereParts.join(" AND ")) : "";

    let countSql = "SELECT COUNT(*) from beer INNER JOIN brewery on beer.brewery_id = brewery.id " + where;

    let sql = "SELECT beer.id, beer.name, alcohol, tags, image, brewery.name as brewery " +
                "FROM beer INNER JOIN brewery on beer.brewery_id = brewery.id " + where +
                " ORDER BY beer.name LIMIT $" + (values.length + 1) + " OFFSET $" +  + (values.length + 2);

    db.query(countSql, values)
        .then(result => {
            let total = parseInt(result[0].count);
            db.query(sql, values.concat([pageSize, ((page - 1) * pageSize)]))
                .then(products => {
                    return res.json({"pageSize": pageSize, "page": page, "total": total, "products": products});
                })
                .catch(next);
        })
        .catch(next);
};

let findById = (req, res, next) => {
    let id = req.params.id;

    let sql = "SELECT beer.id, beer.name, alcohol, tags, image, brewery.name as brewery FROM beer " +
        "INNER JOIN brewery on beer.brewery_id = brewery.id " +
        "WHERE beer.id = $1";

    db.query(sql, [id])
        .then(product => res.json(product[0]))
        .catch(next);
};

exports.findAll = findAll;
exports.findById = findById;