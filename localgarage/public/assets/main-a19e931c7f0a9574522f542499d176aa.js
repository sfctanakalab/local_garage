//main.js
//window.addEventListener('load', rerenderLayout, false);
//window.addEventListener('resize', rerenderLayout, false);

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
var linkTouchStart = function(){
    thisAnchor = $(this);
    touchPos = thisAnchor.offset().top;
    moveCheck = function(){
        nowPos = thisAnchor.offset().top;
        if(touchPos == nowPos){
            thisAnchor.addClass("hover");
        }
    }
    setTimeout(moveCheck,100);
}
var linkTouchEnd = function(){
    thisAnchor = $(this);
    hoverRemove = function(){
        thisAnchor.removeClass("hover");
    }
    setTimeout(hoverRemove,500);
}
 
$(document).on('touchstart mousedown','a',linkTouchStart);
$(document).on('touchend mouseup','a',linkTouchEnd);
