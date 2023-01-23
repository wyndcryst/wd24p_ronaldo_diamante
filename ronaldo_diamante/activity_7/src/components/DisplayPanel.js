function DisplayPanel(props) {
    return (
        <div className={ props.boxSize }>
            <div className={ props.background }>
                <p className={ props.displayStyle }>{ props.counterTitle }</p>
                <p className={ props.numeralStyle }>{ props.displayNumeral }</p>
                <p className={ props.subTitleStyle }>{ props.subTitle }</p>
                <p className={ props.footerTitleStyle }>{ props.footerTitle }</p>
            </div>
        </div>
    );
}

export default DisplayPanel;