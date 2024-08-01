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

  return (
    <>
    <div className="App">
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
