import React from 'react';

class ProductListItem extends React.Component {

    linkHandler(e) {
        this.props.onSearchKeyChange(e.target.innerHTML);
        return false;
    }

    render() {
        let pills;
        if (this.props.product.tags) {
            let tags = this.props.product.tags.split(', ');
            pills = tags.map(tag =>
                <span className="slds-pill" key={this.props.product.id + '-' + tag}>
                    <a href="#" className="slds-pill__label" onClick={this.linkHandler.bind(this)}>{tag}</a>
                </span>
            );
        }
        return (
            <div className="slds-col slds-p-around--xx-small slds-small-size--1-of-1 slds-medium-size--1-of-2 slds-large-size--1-of-4" key={this.props.product.id}>
                <div className="slds-card slds-card--narrow">
                    <div className="slds-card__header">
                        <div className="slds-media">
                            <div className="slds-media__figure">
                                <img src={"pics/" + this.props.product.image} />
                            </div>
                            <div className="slds-media__body">
                                <span className="slds-text-heading--medium">{this.props.product.name}</span>
                                <div className="slds-card__body">
                                    <p><a href="#" onClick={this.linkHandler.bind(this)}>{this.props.product.brewery}</a></p>
                                    <p className="level">{parseFloat(this.props.product.alcohol)}</p>
                                    <p>{pills}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }
};

export default ProductListItem;