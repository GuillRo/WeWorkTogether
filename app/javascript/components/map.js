const mapAction = () => {
  const mapButton = document.getElementById("map-button");
  if (mapButton) { 
    const mapBox = document.querySelector('#map');
  mapButton.addEventListener("click", () => {
    mapBox.style.cssText = 'top: 0vh !important';
    mapX.style.display = "block";
    mapX.style.visibility = "visible";
  });

  const mapX = document.getElementById("map-x");
  mapX.addEventListener("click", () => {
    mapX.style.visibility = "hidden";
    mapBox.style.cssText = 'top: 150vh !important';
  })
}
 
}

export { mapAction };
