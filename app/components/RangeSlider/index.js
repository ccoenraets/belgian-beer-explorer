import React from 'react';
import Slider from 'react-slider';

class RangeSlider extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            value: [0,26]
        };
    }

    rangeChangeHandler(value) {
        this.setState({value: value});
        this.props.onChange(value);
    }

    render() {
        let handles = this.state.value.map((value, i) =>
            <div key={'slider-handle' + i}>{value}</div>
        );
        return (
            <Slider defaultValue={[0, 26]} min={0} max={26} step={.5} withBars={true} onChange={this.rangeChangeHandler.bind(this)}>
                {handles}
            </Slider>
        );
    }
};

export default RangeSlider;