import DisplayPanel from "../components/DisplayPanel";
import PanelButton from "../components/PanelButton";
import '../App.css';

function Queue() {
    return (
        <div className="mt-4 mx-4">
            <div className="row text-center">
                <div className="col-4">
                    <PanelButton buttonName="Regular" background="regularButton" />
                    <PanelButton buttonName="Senior / PWD" background="seniorButton"/>
                    <DisplayPanel
                        boxSize="queuingBox"
                        counterTitle="This your Queue"
                        displayStyle="queueHeaderStyling"
                        displayNumeral="001"
                        numeralStyle="queueNumeral"
                        subTitle="Please wait on your queue to be called and proceed to your designated counter"
                        footerTitle="Thanks for using my Queueing System"
                        footerTitleStyle="queuingFooterTitleStyle" />
                </div>
                <div className="col-8">
                    <div className="row">
                        <div className="col-4">
                            <DisplayPanel boxSize="counterBox" counterTitle="COUNTER 1" displayStyle="counterStyling" />
                            <DisplayPanel
                                boxSize="servingBox"
                                counterTitle="Now Serving"
                                displayStyle="nowServingTitle"
                                numeralStyle="servingNumeral"
                                displayNumeral="001"
                                footerTitle="Please proceed to the counter"
                                footerTitleStyle="nowServingFooterTitleStyle" />
                            <PanelButton buttonName="NEXT" background="nextButton" />
                            <DisplayPanel boxSize="totalServeBox" counterTitle="Total Served: 10" displayStyle="servedStyling" />
                        </div>
                        <div className="col-4">
                            <DisplayPanel boxSize="counterBox" counterTitle="COUNTER 2" displayStyle="counterStyling"/>
                            <DisplayPanel
                                boxSize="servingBox"
                                counterTitle="Now Serving"
                                displayStyle="nowServingTitle"
                                numeralStyle="servingNumeral"
                                displayNumeral="025"
                                footerTitle="Please proceed to the counter"
                                footerTitleStyle="nowServingFooterTitleStyle" />
                            <PanelButton buttonName="TRANSFER" background="transferButton"/>
                            <DisplayPanel boxSize="totalServeBox" counterTitle="Total Served: 5" displayStyle="servedStyling" />
                        </div>
                        <div className="col-4">
                            <DisplayPanel boxSize="counterBox" counterTitle="SENIOR / PWD" displayStyle="counterStyling"/>
                            <DisplayPanel
                                boxSize="servingBox"
                                counterTitle="Now Serving"
                                displayStyle="nowServingTitle"
                                numeralStyle="servingNumeral"
                                displayNumeral="009"
                                footerTitle="Please proceed to the counter"
                                footerTitleStyle="nowServingFooterTitleStyle" />
                            <PanelButton buttonName="SERVE" background="serveButton" />
                            <DisplayPanel boxSize="totalServeBox" counterTitle="Total Served: 15" displayStyle="servedStyling" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
}

export default Queue;