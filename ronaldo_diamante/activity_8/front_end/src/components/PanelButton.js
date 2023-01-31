function PanelButton(props) {
    return (

        <button className={ props.buttonStyle } onClick={props.onClick} type="button">{ props.buttonName }</button>

    );
}

export default PanelButton;