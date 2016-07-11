import React from 'react';

class Header extends React.Component {
    render() {
        return (
            <div className="slds-page-header" role="banner">
                <div className="slds-grid  slds-grid--vertical-align-center">
                    <div className="slds-col">
                        <h1 className="slds-page-header__title slds-truncate">{this.props.text}</h1>
                    </div>
                    <div className="slds-col slds-no-flex">
                        <a href="https://github.com/ccoenraets/belgian-beer-explorer">
                            <img src="pics/GitHub-Mark-Light-32px.png"/>
                        </a>
                    </div>
                </div>
            </div>
        );
    }
};

export default Header;