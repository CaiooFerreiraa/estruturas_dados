export default function Logos({type}) {
  return (
    <>
      <label htmlFor={type} className="typeName">
        <div className="imgContainer">
          <img src={`/imgs/${type}.png`} alt="test" />
        </div>
        <div>{type.toUpperCase()}</div>
      </label>
    </>
  )
}