const mapAction = () => {
  const mapButton = document.getElementById("map-button");
  const mapBox = document.querySelector('#map');
  mapButton.addEventListener("click", () => {
    mapBox.style.cssText = 'top: 0vh !important';
    mapX.style.display = "block";
  });

  const mapX = document.getElementById("map-x");
  mapX.addEventListener("click", () => {
    mapX.style.display = "none";
    mapBox.style.cssText = 'top: 150vh !important';
  })
}

export { mapAction };
