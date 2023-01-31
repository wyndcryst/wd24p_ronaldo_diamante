import { useState, useEffect } from 'react';
import DataTable from 'react-data-table-component';
import axios from 'axios';

const columns = [
    {
        name: 'Queue',
        selector: row => row.id,
        sortable: true
    },
    {
        name: 'Customer Type',
        selector: row => row.customer,
        sortable: true
    },
    {
        name: 'Serve Status',
        selector: row => row.is_serve,
        sortable: true
    },

];

const laravelController = "customers";

function Database() {

    const [data, setData] = useState([]);
    const [id, setId] = useState()
    const [customerType, setCustomerType] = useState('');
    const [serveStatus, setServeStatus] = useState(0);
    const [selectedRows, setSelectedRows] = useState([]);

    useEffect(() => {
        index();
    }, []);

    // ******************************************
    async function index()
    {
        axios.get(process.env.REACT_APP_API + laravelController)
            .then((response) => {

                setData(response.data);
            })
    }

    async function store()
    {
        const payload = {

            customer: customerType,
            is_serve: serveStatus
        }

        axios.post(process.env.REACT_APP_API + laravelController, payload)
            .then((response) => {

                if (response.status === 201)
                {
                    alert("Succesfully saved")
                    index();
                } else
                {
                    alert("Not saved")
                }
            })
    }

    async function update(id)
    {
        const payload = {

            customer: customerType,
            is_serve: serveStatus
        }

        axios.put(process.env.REACT_APP_API + laravelController + "/" + id, payload)
            .then((response) => {

                if (response.status === 200)
                {
                    alert("Succesfully updated")
                    index();
                } else
                {
                    alert("Not updated")
                }
            })
    }

    async function destroy(id)
    {

        axios.delete(process.env.REACT_APP_API + laravelController + "/" + id)
            .then((response) => {

                if (response.status === 200)
                {
                    index();
                }
            })
    }


    // ******************************************
    const handleCustomerType = (element) => {
        setCustomerType(element.target.value);
    }

    const handleServeStatus = (element) => {
        setServeStatus(element.target.value);
    }

    const handleSave = () => { 
        store();
    }

    // ******************************************
    const handleRowSelected = ({ selectedRows }) => {
        setSelectedRows(selectedRows)

        if (selectedRows.length === 1) {
            setId(selectedRows[0].id);
            setCustomerType(selectedRows[0].customer);
            setServeStatus(selectedRows[0].is_serve);
        }
    }

    const handleUpdate = () => { 
        update(id);
    }

    const handleDelete = () => { 

        for (let i = 0; i < selectedRows.length; i++) {
            destroy(selectedRows[i].id);
        }
    }

    // ******************************************
    return (
        <div>
            <div className="row">
                <div className="col-4 p-4">
                    <div className="mb-3">
                        <label className="form-label">Customer Type</label>
                        <input type="text" value={customerType} onChange={handleCustomerType} className="form-control" />
                    </div>
                    <div className="mb-3">
                        <label className="form-label">Serve Status</label>
                        <input type="number" value={serveStatus} onChange={handleServeStatus} className="form-control" />
                    </div>
                    <button type="button" onClick={handleSave} className="btn btn-primary me-2">SAVE</button>
                    <button type="button" onClick={handleUpdate} className="btn btn-success me-2">UPDATE</button>
                    <button type="button" onClick={handleDelete} className="btn btn-danger">DELETE</button>
                </div> 
                <div className="col-8">
                    <DataTable
                        title="Queueing Database"
                        columns={columns}
                        data={data}
                        selectableRows
                        onSelectedRowsChange={handleRowSelected}
                        pagination
                    />
                </div> 
            </div>
        </div>
    );
}

export default Database;