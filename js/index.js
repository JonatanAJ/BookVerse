// var multipleCardCarousel = document.querySelector(
//     "#carouselExampleControls"
//   );
//   if (window.matchMedia("(min-width: 768px)").matches) {
//     var carousel = new bootstrap.Carousel(multipleCardCarousel, {
//       interval: false,
//     });
//     var carouselWidth = $(".carousel-inner")[0].scrollWidth;
//     var cardWidth = $(".carousel-item").width();
//     var scrollPosition = 0;
//     $("#carouselExampleControls .carousel-control-next").on("click", function () {
//       if (scrollPosition < carouselWidth - cardWidth * 4) {
//         scrollPosition += cardWidth;
//         $("#carouselExampleControls .carousel-inner").animate(
//           { scrollLeft: scrollPosition },
//           600
//         );
//       }
//     });
//     $("#carouselExampleControls .carousel-control-prev").on("click", function () {
//       if (scrollPosition > 0) {
//         scrollPosition -= cardWidth;
//         $("#carouselExampleControls .carousel-inner").animate(
//           { scrollLeft: scrollPosition },
//           600
//         );
//       }
//     });
//   } else {
//     $(multipleCardCarousel).addClass("slide");
//   }

let currentIndex = 0;
const cards = document.querySelectorAll('.card-item-cr');
const totalCards = cards.length;
const cardContainer = document.getElementById('card-container');
const cardWidth = cards[0].offsetWidth + 15; // Largura do card + margem direita

function nextCard() {
  if (currentIndex < totalCards - 1) {
    currentIndex++;
    updateCardContainer();
  }
}

function previousCard() {
  if (currentIndex > 0) {
    currentIndex--;
    updateCardContainer();
  }
}

function updateCardContainer() {
  const newTransformValue = -currentIndex * cardWidth + 'px';
  cardContainer.style.transform = 'translateX(' + newTransformValue + ')';
}