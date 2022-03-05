// todo
// hint
const hintButton = document.querySelector('#show-hint');
const hint = document.querySelector('.hint');
hintButton.addEventListener('click', (event) => {
  hint.classList.toggle('active');
})

const canMove = (cell, empty) => {
  const tileCellIndex = event.currentTarget.cellIndex
  const tileRowIndex = event.currentTarget.parentElement.rowIndex
  // 4. If it has an empty neighbor
  // console.log(tileRowIndex, tileCellIndex)
  const emptyCellIndex = empty.cellIndex
  const emptyRowIndex = empty.parentElement.rowIndex
  // console.log(emptyRowIndex, emptyCellIndex)

  // same column
  // same row
  return ((tileCellIndex === emptyCellIndex && tileRowIndex === emptyRowIndex + 1) || (tileCellIndex === emptyCellIndex && tileRowIndex === emptyRowIndex - 1) || (tileRowIndex === emptyRowIndex && tileCellIndex === emptyCellIndex + 1) || (tileRowIndex === emptyRowIndex && tileCellIndex === emptyCellIndex - 1))
}

const move = (cell, emptyCell) => {
  cell.classList.add('empty')
  emptyCell.classList.remove('empty')
  emptyCell.innerText = cell.innerText
  cell.innerText = ''
}

const checkIfPlayerWins = () => {
  const tilesNodeList = document.querySelectorAll('td');
  const tilesArray = Array.from(tilesNodeList)
  const userSolution = tilesArray.map(e => e.innerText).join()
  if (userSolution === '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,') {
    // Set timeout so we can change the tag content and then we display the alert.
    setTimeout(() => {
      alert('WINNNNNERS')
    });
  }
}

// 1. Select all tiles
const boards = document.querySelectorAll('tr td')
console.log(boards);
// 2. for each tile
boards.forEach((tile) => {
  // 3. listen to the click event
  tile.addEventListener('click', (event) => {
    const empty = document.querySelector('.empty');
    if (canMove(tile, empty)) {
      // 5. Swap the tile and the empty tile
      move(tile, empty);
      // 6. Check if player wins
      checkIfPlayerWins();
    }
  });
});
