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

var containerCards = ""; // Renomeei para seguir a convenção de camelCase
var classCards = "" // Renomeei para seguir a convenção de camelCase

function passCard(func, container, card) {
  containerCards = container;
  classCards = card;

  if (func == "next") {
    nextCard()
  }
  else {
    previousCard()
  }

}

const cards = document.getElementsByClassName(classCards); // Use a variável classCards para selecionar os cards
const totalCards = cards.length;
const cardContainer = document.getElementById(containerCards)
const cardWidth = cards[0].offsetWidth + 15; // Largura do card + margem direita

let currentIndex = 0;

const larguraTela = window.innerWidth;
const qtd = larguraTela / cardWidth

function nextCard() {
  alert(cards)
  if (currentIndex < totalCards - qtd) {
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






