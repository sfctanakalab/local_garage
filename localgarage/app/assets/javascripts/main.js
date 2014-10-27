//main.js
window.addEventListener('load', rerenderLayout, false);
window.addEventListener('resize', rerenderLayout, false);

function rerenderLayout() {
    var img = document.getElementsByName('how_to_use_img');
    for(var i = 0; i < img.length; i++){
        var h = img[i].offsetWidth;
        img[i].style.height = h + "px";
    }
}

function openNav() {
	var navlink = document.getElementById('navlink');
	navlink.style.display = "block";
}

function closeNav() {
	var navlink = document.getElementById('navlink');
	navlink.style.display = "none";
}
