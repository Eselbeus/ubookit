var rating = 0;
function IncreaseRating() {
  document.getElementById('rating').innerHTML = ++rating;
  
};
function DecreaseRating() {
  document.getElementById('rating').innerHTML = --rating;
  if (rating < 1) {
    return rating = 0
  }
};