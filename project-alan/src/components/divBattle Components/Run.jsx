export function Run() {
  const handleClose = () => {
    const div = document.querySelector(".fessor");
    div.style.display = "flex"
  }
  return (
    <>
      <button onClick={handleClose}>Run</button>
    </>
  )
}