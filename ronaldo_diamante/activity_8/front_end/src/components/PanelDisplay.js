function PanelDisplay(props) {
    return (
        <div className={props.boxWindow}>
            <div className={props.mainTitleStyle}>{props.mainTitle}</div>
            <div className={props.numeralStyle}>{props.numeralDisplay}</div>
            <div className={props.subTitleStyle}>{props.subTitle}</div>
            <div className={props.footerTitleStyle}>{props.footerTitle}</div>
        </div>

    );
}

export default PanelDisplay;