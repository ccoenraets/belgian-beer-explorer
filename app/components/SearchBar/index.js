import React from 'react';

class SearchBar extends React.Component {

    searchKeyChangeHandler(event) {
        let searchKey = event.target.value;
        this.setState({searchKey: searchKey});
        this.props.onChange(searchKey);
    }

    clearText() {
        this.setState({searchKey: ""});
        this.props.onChange("");
    }

    render() {
        return (
            <div className="slds-form-element">
                <div className="slds-form-element__control search-bar">
                    <input className="slds-input"
                           type="search"
                           placeholder="Enter a partial beer, style, or brewery name"
                           value={this.props.searchKey}
                           onChange={this.searchKeyChangeHandler.bind(this)}/>
                    <div className="slds-form-element__icon">
                        <button className="slds-button" onClick={this.clearText.bind(this)}>
                            <svg className="slds-button__icon">
                                <use xlinkHref="/assets/icons/utility-sprite/svg/symbols.svg#close"></use>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
        );
    }
};

export default SearchBar;

//<button className="btn btn-link" ><span className="glyphicon glyphicon-remove" aria-hidden="true" onClick={this.clearText.bind(this)}></span></button>
