import { Party } from "./divBattle Components/Party";
import { Battle } from "./divBattle Components/Battle";
import { Run } from "./divBattle Components/Run";
import { Bag } from "./divBattle Components/Bag";
import React, { useState } from 'react';

export function divBattle({pokemonTypes, selectedTypes, setSelectedTypes}) {
  const [teamOneWin, setTeamOneWin] = useState(0);
  const [teamTwoWin, setTeamTwoWin] = useState(0);
  const [draw, setDraw] = useState(0)

  return (
    <>
      <div className='divBattle'>
        <div className="infoTeam">
          <div>Seu time venceu {teamOneWin}</div>
          <div>Seu time perdeu {teamTwoWin}</div>
          <div>Seu time empatou {draw}</div>
        </div>
        <div className="optionContent">
          <Battle
            selectedTypes={selectedTypes} 
            pokemonTypes={pokemonTypes}
            setTeamOneWin={setTeamOneWin}
            setTeamTwoWin={setTeamTwoWin}
            setDraw={setDraw}
            draw={draw}
            teamOneWin={teamOneWin}
            teamTwoWin={teamTwoWin}
          />
          <Party arrayTypes={pokemonTypes} selectedTypes={selectedTypes} setSelectedTypes={setSelectedTypes}/>
          <Run />
        </div>
      </div>
    </>
  )
}