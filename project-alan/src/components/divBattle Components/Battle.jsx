import { useState } from "react";
import { batle } from "../Hooks/HookBattle";
import { Bag } from "./Bag";

export function Battle({pokemonTypes, selectedTypes, setTeamOneWin, setTeamTwoWin, setDraw}) {
  const [fight, setTeamFight] = useState([]);
  const [result, setResult] = useState([]); 
  const quant = 100;

  const handleBattle = () => {
    setDraw(0);
    setTeamOneWin(0);
    setTeamTwoWin(0);
    setTeamFight([]);
    setResult([]);

    for (let i = 0; i < quant; i++) {
      const team = getRandomTypes();
      
      setTeamFight(fight => [...fight, team])

      switch (batle(selectedTypes, team)) {
        case 1:
          setTeamOneWin(teamOneWin => teamOneWin+1);
          setResult(result => [...result, "W"])
          break
        case 2:
          setTeamTwoWin(teamTwoWin => teamTwoWin+1);
          setResult(result => [...result, "L"])
          break
        case 3:
          setDraw(draw => draw+1);
          setResult(result => [...result, "D"])
      }
    }
  }

  const getRandomTypes = () => {
    const selectedTypes = [];
    const numTypesToSelect = 6;
    
    while (selectedTypes.length < numTypesToSelect) {
      const randomIndex = Math.floor(Math.random() * pokemonTypes.length);
      const randomType = pokemonTypes[randomIndex];
      if (!selectedTypes.includes(randomType)) {
        selectedTypes.push(randomType);
      }
    }
    
    return selectedTypes;
  };

  return (
    <>
      <button onClick={handleBattle}>Battle</button>
      <Bag team={fight} result={result}/>
    </>
  )
}