//main.js
function rerenderLayout() {
    var img = document.getElementsByName('how_to_use_img');
    for(var i = 0; i < img.length; i++){
        var h = img[i].offsetWidth;
        img[i].style.height = h + "px";
    }
}
window.addEventListener('load', rerenderLayout, false);
window.addEventListener('resize', rerenderLayout, false);