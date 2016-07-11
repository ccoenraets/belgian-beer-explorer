import React from 'react';

class Paginator extends React.Component {

    render() {
        let pages = Math.ceil(this.props.total/this.props.pageSize);
        return (
            <div className="slds-grid slds-grid--vertical-align-center slds-m-horizontal--large">
                <div className="slds-col slds-p-around--xx-small">
                    <button className={"slds-button slds-button--neutral" + (this.props.page <= 1 ? " slds-hide" : "")} onClick={this.props.onPrevious}>
                        <svg className="slds-button__icon">
                            <use xlinkHref="/assets/icons/utility-sprite/svg/symbols.svg#chevronleft"></use>
                        </svg>
                    </button>
                </div>
                <div className="slds-col slds-text-align--center slds-p-around--xx-small">
                    <div className="legend">{this.props.total} beers • page {this.props.page}/{pages}</div>
                </div>
                <div className="slds-col slds-text-align--right slds-p-around--xx-small">
                    <button className={"slds-button slds-button--neutral" + (this.props.page >= pages ? " slds-hide" : "")} onClick={this.props.onNext}>
                        <svg className="slds-button__icon">
                            <use xlinkHref="/assets/icons/utility-sprite/svg/symbols.svg#chevronright"></use>
                        </svg>
                    </button>
                </div>
            </div>
        );
    }
};

export default Paginator;