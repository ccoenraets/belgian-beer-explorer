var Header = React.createClass({
    render: function () {
        return (
            <div className="navbar navbar-default navbar-static-top" role="navigation">
                <div className="container">
                    <div className="navbar-header">{this.props.text}</div>
                </div>
            </div>
        );
    }
});

var SearchBar = React.createClass({
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
            <div className="search-wrapper">
                <input type="search" ref="searchKey" className="form-control"
                    placeholder="Enter a partial beer, style, or brewery name"
                    value={this.props.searchKey}
                    onChange={this.searchKeyChangeHandler}/>
                <button className="btn btn-link" ><span className="glyphicon glyphicon-remove" aria-hidden="true" onClick={this.clearText}></span></button>
            </div>
        );
    }
});

// Wrap nouislider (http://refreshless.com/nouislider) as a React component
var RangeSlider = React.createClass({
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
            <div className="slider-wrapper">
                <span className="slider-label">{this.props.label}</span>
                <div ref="slider"></div>
            </div>
        );
    }
});

var ProductListItem = React.createClass({
    linkHandler: function(e) {
        this.props.searchKeyChange(e.target.innerHTML);
        return false;
    },
    render: function () {
        var links;
        if (this.props.product.tags) {
            var tags = this.props.product.tags.split(', ');
            links = tags.map(function(tag) {
                return <a href="#" className="tag" onClick={this.linkHandler} key={this.props.product.id + '-' + tag}>{tag}</a>;
            }.bind(this));
        }
        var divStyle = {"backgroundImage": "url('pics/" + this.props.product.image + "')"};
        return (
            <div className="col-lg-3 col-md-4 col-sm-6 col-xs-12 nopadding" key={this.props.product.id}>
                <div className="panel panel-default">
                    <div className="panel-body">
                        <div style={divStyle} className="img-wrapper"/>
                        <h3 className="panel-title">{this.props.product.name}</h3>
                        <p className="level">{parseFloat(this.props.product.alcohol)}</p>
                        <p><img src="pics/icon-brewery.png" className="icon"/><a href="#" onClick={this.linkHandler}>{this.props.product.brewery}</a></p>
                        <p><img src="pics/icon-tags.png" className="icon"/>{links}</p>
                    </div>
                </div>
            </div>
        );
    }
});

var ProductList = React.createClass({
    render: function () {
        var items = this.props.products.map(function (product) {
            return (
                <ProductListItem key={product.id} product={product} searchKeyChange={this.props.searchKeyChange}/>
            );
        }.bind(this));
        return (
            <div className="container">
                <div className="row">
                    {items}
                </div>
            </div>
        );
    }
});

var Paginator = React.createClass({

    render: function () {
        var pages = Math.ceil(this.props.total/this.props.pageSize);
        return (
            <div className="container">
                <div className="row padding" style={{height: "40px"}}>
                    <div className="col-xs-4 nopadding">
                        <button type="button" className={"btn btn-default" + (this.props.page <= 1 ? " hidden" : "")} onClick={this.props.previous}>
                            <span className="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> Previous
                        </button>
                    </div>
                    <div className="col-xs-4 text-center">
                        <div className="legend">{this.props.total} beers • page {this.props.page}/{pages}</div>
                    </div>
                    <div className="col-xs-4 nopadding">
                        <button type="button" className={"btn btn-default pull-right" + (this.props.page >= pages ? " hidden" : "")} onClick={this.props.next}>
                        Next <span className="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        </button>
                    </div>
                </div>
            </div>
        );
    }
});


var App = React.createClass({
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
            <div>
                <Header text="Belgian Beer Explorer"/>
                <div className="container">
                    <div className="row">
                        <div className="center-block trim">
                            <SearchBar searchKey={this.state.searchKey} searchKeyChange={this.searchKeyChangeHandler}/>
                            <RangeSlider label="% alcohol" min={0} max={26} step={.5} onChange={this.rangeChangeHandler}/>
                        </div>
                    </div>
                </div>
                <Paginator page={this.state.page} pageSize={this.state.pageSize} total={this.state.total} previous={this.prevPage} next={this.nextPage}/>
                <ProductList products={this.state.products} total={this.state.total} searchKeyChange={this.searchKeyChangeHandler}/>
            </div>
        );
    }
});

React.render(<App/>, document.getElementById('main'));