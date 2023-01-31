import PanelButton from "./PanelButton";
import PanelDisplay from "./PanelDisplay";

import { useState, useEffect, useCallback } from 'react';
import axios from 'axios';


const laravelController = "customers";

function Home() {

    let [queueNumberDisplay, setQueueNumberDisplay] = useState(0);
    let [counter, setCounter] = useState(0);

    let [regularButton, setRegularButton] = useState('');
    let [seniorButton, setSeniorButton] = useState('');

    useEffect(() => { 
        setQueueNumberDisplay(0)
        setRegularButton("Regular");
        setSeniorButton("Senior / PWD");
    }, []);

    // ******************************************
    
    function functionAxios(payload) { 
        axios.post(process.env.REACT_APP_API + laravelController, payload)
        .then((response) => {
            if (response.status === 201)
            {
                alert("Successfully saved")
            } else
            {
                alert("Not saved")
            }
        })
    }

    async function storeRegular()
    {
        const payload = {
            customer: regularButton,
            is_serve: 0
        }
        functionAxios(payload)
    }

    async function storeSenior()
    {
        const payload = {
            customer: seniorButton,
            is_serve: 0
        }
        functionAxios(payload)
    }

    // ******************************************
    const handleRegular = () => {
        // show();
        storeRegular();
    }

    const handleSenior = () => {
        // show();
        storeSenior();
    }

    // handleRegular = useCallback(() => {        
    //     setQueueNumberDisplay(counter++);
    // }, []);


    // ******************************************
    return (
        <div className="mt-4 mx-4">
            <div className="row">
                <div className="col-4">
                    <PanelButton
                        type="button"
                        onClick={handleRegular}
                        buttonName={regularButton}
                        buttonStyle="regularButton"
                    />
                    <PanelButton
                        type="button"
                        onClick={handleSenior}
                        buttonName={seniorButton}
                        buttonStyle="seniorButton"
                    />
                    <PanelDisplay
                        boxWindow="queuingBox"
                        mainTitle="This is your Queue"
                        mainTitleStyle="queueMainTitleStyle"
                        numeralDisplay={queueNumberDisplay}
                        numeralStyle="queueNumeralStyle"
                        subTitle="Please wait on your queue to be called and proceed to your designated counter"
                        footerTitle="Respect yourself and others will respect you"
                        footerTitleStyle="queueFooterStyle"
                    />
                </div>
                <div className="col-8">
                    <div className="row">
                        <div className="col-6">
                            <PanelDisplay
                                boxWindow="counterBox"
                                mainTitle="Counter 1"
                                mainTitleStyle="counterMainTitleStyle"
                            />
                            <PanelDisplay
                                boxWindow="servingBox"
                                mainTitle="Now Serving"
                                mainTitleStyle="servingMainTitleStyle"
                                numeralDisplay="01"
                                numeralStyle="servingNumeralStyle"
                                subTitle="Please proceed to the counter"
                                subTitleStyle="counterSubTitleStyle"
                            />
                            <PanelButton
                                type="button"
                                // onClick={handleNextRegular}
                                buttonName="NEXT"
                                buttonStyle="nextButton"
                            />
                            <PanelButton
                                type="button"
                                // onClick={handleServeRegular}
                                buttonName="SERVE"
                                buttonStyle="serveButton"
                            />
                        </div>
                        <div className="col-6">
                        <PanelDisplay
                                boxWindow="counterBox"
                                mainTitle="Senior / PWD"
                                mainTitleStyle="counterMainTitleStyle"
                            />
                            <PanelDisplay
                                boxWindow="servingBox"
                                mainTitle="Now Serving"
                                mainTitleStyle="servingMainTitleStyle"
                                numeralDisplay="01"
                                numeralStyle="servingNumeralStyle"
                                subTitle="Please proceed to the counter"
                                subTitleStyle="counterSubTitleStyle"
                            />
                            <PanelButton
                                type="button"
                                // onClick={handleNextSenior}
                                buttonName="NEXT"
                                buttonStyle="nextButton"
                            />
                            <PanelButton
                                type="button"
                                // onClick={handleServeSenior}
                                buttonName="SERVE"
                                buttonStyle="serveButton"
                            />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
}

export default Home;