import React from 'react';
import ProductListItem from './ProductListItem';

class ProductList extends React.Component {
    render() {
        let listItems = this.props.products.map(product =>
            <ProductListItem key={product.id} product={product} onSearchKeyChange={this.props.onSearchKeyChange}/>
        );
        return (
            <div className="slds-grid slds-wrap slds-m-horizontal--large">
                {listItems}
            </div>
        );
    }
};

export default ProductList;