import React, { useState } from 'react';
import { batle } from './Hooks/HookBattle';
import { divBattle as DivBattle } from './divBattle';
import Gifs from './Gifs';

export default function App() {
  const [selectedTypes, setSelectedTypes] = useState([]);
  const pokemonTypes = [
    "normal", "fire", "water", "electric", "grass", "ice",
    "fighting", "poison", "ground", "flying", "psychic", "bug",
    "rock", "ghost", "dragon", "dark", "steel", "fairy"
  ];

  const handleFinish = () => {
    const div = document.querySelector(".fessor");
    div.style.display = "none"
  }

  return (
    <>
    <div className="App">
      <div className="fessor">
        <button onClick={handleFinish}>X</button>
        Obrigado por testar nosso código, TE AMAMOS 
        <div className='imgFessor'>
          <img src="/imgs/i-love.jpg" alt="" />
        </div>
      </div>
      <div className="areaGifsTeam">
        <Gifs pokemonTypes={selectedTypes}/>
      </div>
      <DivBattle 
        pokemonTypes={pokemonTypes} 
        selectedTypes={selectedTypes}
        setSelectedTypes={setSelectedTypes}
      />
    </div>
    </>
  );
}
