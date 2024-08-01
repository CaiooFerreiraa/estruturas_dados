import { useState } from 'react';
import Offcanvas from 'react-bootstrap/Offcanvas';
import Logos from '../Logos';

export function Party({arrayTypes, selectedTypes, setSelectedTypes}) {
  const [show, setShow] = useState(false);

  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);

  const handleCheckboxChange = (type) => {
    if (selectedTypes.includes(type)) {
      setSelectedTypes(selectedTypes.filter(t => t !== type));
    } else if (selectedTypes.length < 6) {
      setSelectedTypes([...selectedTypes, type]);
    }
  };

  return (
    <>
      <button onClick={handleShow} className='buttonParty'>Party</button>
      <Offcanvas show={show} onHide={handleClose} placement={'end'}>
        <Offcanvas.Header closeButton className='canvaBody' closeVariant='white'>
          <Offcanvas.Title className='canvaBody'>Escolha seu Time com 6 tipos</Offcanvas.Title>
        </Offcanvas.Header>
        <Offcanvas.Body className='canvaBody'>
          <div className='containerTypes'>
            {arrayTypes.map((type) => (
              <span key={type}>
                <input
                  id={type}
                  type="checkbox"
                  name="types"
                  value={type}
                  checked={selectedTypes.includes(type)}
                  onChange={() => handleCheckboxChange(type)}
                  disabled={!selectedTypes.includes(type) && selectedTypes.length >= 6}
                />
                <Logos type={type}/>
              </span>
            ))}
          </div>
        </Offcanvas.Body>
      </Offcanvas>
    </>
  );
}