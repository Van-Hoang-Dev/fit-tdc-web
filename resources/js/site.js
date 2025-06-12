// This is all you.
import Swiper from 'swiper/bundle';

// Gắn Swiper vào window
window.Swiper = Swiper;
console.log("Hello");

if (window.Swiper) {
    console.log('Swiper is available!');
} else {
    console.log('Swiper is NOT available!');
}