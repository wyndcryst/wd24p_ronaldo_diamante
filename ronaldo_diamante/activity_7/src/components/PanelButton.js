import './components.css';

function PanelButton(props) {
    return (

        <button className={ props.background } type="button">{ props.buttonName }</button>        

    );
}

export default PanelButton;