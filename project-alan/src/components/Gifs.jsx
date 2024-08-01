import { useEffect, useState } from "react"

export default function Gifs({pokemonTypes}) {
  const [gif, setGif] = useState([]);

  useEffect(() => {
    setGif(pokemonTypes);
  }, [pokemonTypes])

  return (
    <>
      <div className="containMons">
        {gif.map((type, index) => {
          return (
            <div key={index} className="containGif">
              <img src={`/gifs/${type}.gif`} alt="test" className="gif"/>
              <div className="nameType">{type.toUpperCase()}</div>
            </div>
          )
        })}
      </div>
    </>
  )
}