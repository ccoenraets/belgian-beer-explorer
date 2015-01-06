var Header = React.createClass({displayName: "Header",
    render: function () {
        return (
            React.createElement("div", {className: "navbar navbar-default navbar-static-top", role: "navigation"}, 
                React.createElement("div", {className: "container"}, 
                    React.createElement("div", {className: "navbar-header"}, this.props.text)
                )
            )
        );
    }
});

var SearchBar = React.createClass({displayName: "SearchBar",
    searchKeyChangeHandler: function() {
        var searchKey = this.refs.searchKey.getDOMNode().value;
        this.props.searchKeyChange(searchKey);
    },
    clearText: function() {
        this.refs.searchKey.getDOMNode().value = "";
        this.props.searchKeyChange("");
    },
    render: function () {
        return (
            React.createElement("div", {className: "search-wrapper"}, 
                React.createElement("input", {type: "search", ref: "searchKey", className: "form-control", 
                    placeholder: "Enter a partial beer, style, or brewery name", 
                    value: this.props.searchKey, 
                    onChange: this.searchKeyChangeHandler}), 
                React.createElement("button", {className: "btn btn-link"}, React.createElement("span", {className: "glyphicon glyphicon-remove", "aria-hidden": "true", onClick: this.clearText}))
            )
        );
    }
});

// Wrap nouislider (http://refreshless.com/nouislider) as a React component
var RangeSlider = React.createClass({displayName: "RangeSlider",
    componentDidMount: function() {
        var $el = $(this.refs.slider.getDOMNode()),
            changeHandler = this.props.onChange;
        $el.noUiSlider({
            start: [ this.props.min, this.props.max ],
            connect: true,
            step: this.props.step,
            range: {
                'min': this.props.min,
                'max': this.props.max
            }
        });
        //$el.noUiSlider_pips({
        //    mode: 'steps',
        //    filter: function(value) {
        //        return value == Math.floor(value);
        //    },
        //    density: 2
        //});
        $el.Link('lower').to('-inline-<div class="tooltip"></div>', function ( value ) {
            $(this).html(
                '<span>' + value.substr(0, value.length - 1) + '</span>'
            );
        });
        $el.Link('upper').to('-inline-<div class="tooltip"></div>', function ( value ) {
            $(this).html(
                '<span>' + value.substr(0, value.length - 1) + '</span>'
            );
        });
        $el.on({
            change: function(event){
                changeHandler($el.val());
            }
        });
    },
    render: function () {
        return (
            React.createElement("div", {className: "slider-wrapper"}, 
                React.createElement("span", {className: "slider-label"}, this.props.label), 
                React.createElement("div", {ref: "slider"})
            )
        );
    }
});

var ProductListItem = React.createClass({displayName: "ProductListItem",
    linkHandler: function(e) {
        this.props.searchKeyChange(e.target.innerHTML);
        return false;
    },
    render: function () {
        var links;
        if (this.props.product.tags) {
            var tags = this.props.product.tags.split(', ');
            links = tags.map(function(tag) {
                return React.createElement("a", {href: "#", className: "tag", onClick: this.linkHandler, key: this.props.product.id + '-' + tag}, tag);
            }.bind(this));
        }
        var divStyle = {"background-image": "url('pics/" + this.props.product.image + "')"};
        return (
            React.createElement("div", {className: "col-lg-3 col-md-4 col-sm-6 col-xs-12 nopadding", key: this.props.product.id}, 
                React.createElement("div", {className: "panel panel-default"}, 
                    React.createElement("div", {className: "panel-body"}, 
                        React.createElement("div", {style: divStyle, className: "img-wrapper"}), 
                        React.createElement("h3", {className: "panel-title"}, this.props.product.name), 
                        React.createElement("p", {className: "level"}, parseFloat(this.props.product.alcohol)), 
                        React.createElement("p", null, React.createElement("img", {src: "pics/icon-brewery.png", className: "icon"}), React.createElement("a", {href: "#", onClick: this.linkHandler}, this.props.product.brewery)), 
                        React.createElement("p", null, React.createElement("img", {src: "pics/icon-tags.png", className: "icon"}), links)
                    )
                )
            )
        );
    }
});

var ProductList = React.createClass({displayName: "ProductList",
    render: function () {
        var items = this.props.products.map(function (product) {
            return (
                React.createElement(ProductListItem, {key: product.id, product: product, searchKeyChange: this.props.searchKeyChange})
            );
        }.bind(this));
        return (
            React.createElement("div", {className: "container"}, 
                React.createElement("div", {className: "row"}, 
                    items
                )
            )
        );
    }
});

var Paginator = React.createClass({displayName: "Paginator",

    render: function () {
        var pages = Math.ceil(this.props.total/this.props.pageSize);
        return (
            React.createElement("div", {className: "container"}, 
                React.createElement("div", {className: "row padding", style: {height: "40px"}}, 
                    React.createElement("div", {className: "col-xs-4 nopadding"}, 
                        React.createElement("button", {type: "button", className: "btn btn-default" + (this.props.page <= 1 ? " hidden" : ""), onClick: this.props.previous}, 
                            React.createElement("span", {className: "glyphicon glyphicon-chevron-left", "aria-hidden": "true"}), " Previous"
                        )
                    ), 
                    React.createElement("div", {className: "col-xs-4 text-center"}, 
                        React.createElement("div", {className: "legend"}, this.props.total, " beers • page ", this.props.page, "/", pages)
                    ), 
                    React.createElement("div", {className: "col-xs-4 nopadding"}, 
                        React.createElement("button", {type: "button", className: "btn btn-default pull-right" + (this.props.page >= pages ? " hidden" : ""), onClick: this.props.next}, 
                        "Next ", React.createElement("span", {className: "glyphicon glyphicon-chevron-right", "aria-hidden": "true"})
                        )
                    )
                )
            )
        );
    }
});


var App = React.createClass({displayName: "App",
    getInitialState: function() {
        return {
            searchKey: "",
            min: 0,
            max: 30,
            products: [],
            total: 0,
            page: 1
        }
    },
    componentDidMount: function() {
        this.findProducts();
    },
    searchKeyChangeHandler: function(searchKey) {
        this.setState({searchKey: searchKey, page: 1}, this.findProducts);
    },
    rangeChangeHandler: function(values) {
        this.setState({min: values[0], max: values[1], page: 1}, this.findProducts);
    },
    findProducts: function() {
        productService.findAll({search: this.state.searchKey, min: this.state.min, max: this.state.max, page: this.state.page}).done(function(data) {
            this.setState({
                products: data.products,
                page: data.page,
                pageSize: data.pageSize,
                total: data.total
            });
        }.bind(this));
    },
    nextPage: function() {
        var p = this.state.page + 1;
        this.setState({page: p}, this.findProducts);
    },
    prevPage: function() {
        var p = this.state.page - 1;
        this.setState({page: p}, this.findProducts);
    },
    render: function() {
        return (
            React.createElement("div", null, 
                React.createElement(Header, {text: "Belgian Beer Explorer"}), 
                React.createElement("div", {className: "container"}, 
                    React.createElement("div", {className: "row"}, 
                        React.createElement("div", {className: "center-block trim"}, 
                            React.createElement(SearchBar, {searchKey: this.state.searchKey, searchKeyChange: this.searchKeyChangeHandler}), 
                            React.createElement(RangeSlider, {label: "% alcohol", min: 0, max: 26, step: .5, onChange: this.rangeChangeHandler})
                        )
                    )
                ), 
                React.createElement(Paginator, {page: this.state.page, pageSize: this.state.pageSize, total: this.state.total, previous: this.prevPage, next: this.nextPage}), 
                React.createElement(ProductList, {products: this.state.products, total: this.state.total, searchKeyChange: this.searchKeyChangeHandler})
            )
        );
    }
});

React.render(React.createElement(App, null), document.getElementById('main'));