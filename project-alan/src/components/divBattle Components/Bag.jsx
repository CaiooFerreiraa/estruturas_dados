import Offcanvas from 'react-bootstrap/Offcanvas';
import { useState } from 'react';

export function Bag({team, result}) {
  const [show, setShow] = useState(false);

  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);

  return (
    <>
      <button onClick={handleShow}>Bag</button>
      <Offcanvas show={show} onHide={handleClose} placement={'end'}>
        <Offcanvas.Header closeButton className='canvaBody' closeVariant='white'>
          <Offcanvas.Title className='canvaBody'>Registro de Batalhas</Offcanvas.Title>
        </Offcanvas.Header>
        <Offcanvas.Body className='canvaBody'>
          <div className='containerTypesBattle'>
            {team.map((array, index) => {
              return (
                <>
                  <div key={index} className='containTeam'>
                  <span key={index}>{`${index +1}º`}</span>
                    {array.map(type => {
                      return (
                        <>
                          <img src={`assets/imgs/${type}.png`} alt="teste" className='logo'/>
                        </>
                      )
                    })}
                    <span key={index}>{result[index]}</span>
                  </div>
                </>
              )
            }) }
          </div>
        </Offcanvas.Body>
      </Offcanvas>
    </>
  );
}
