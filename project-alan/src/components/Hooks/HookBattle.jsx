import Types from '../../assets/types.json';

export function random(min=0, max) {
  return Math.floor(Math.random() * (max-min) + min);
}

export function batle(selectedTypes, typeRandom) {
  let timeOne = 0;
  let timeTwo = 0;
  let interable = 5;

  for(let i = 0; i < 6; i++) {
    const atk = selectedTypes[random(0, interable)];
    const def = typeRandom[random(0, interable)];

    selectedTypes = selectedTypes.filter(ele => ele !== atk);
    typeRandom = typeRandom.filter(ele => ele !== def);

    timeOne += Types[atk][def];
    timeTwo += Types[def][atk];

    interable--;
  };

  if (timeOne > timeTwo) return 1
  if (timeOne < timeTwo) return 2;
  return 3
};