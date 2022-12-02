/**
 * @module File0b249cd331f554e
 *
 * @author Ramya Kolla <ramya.kolla@kony.com>
 */

/**
 * @function
 *
 */
var images =  ['zo1.png' ,'zo10.png','zo12.png','zo13.png','zo14.png','zo15.png','zo16.png','zo17.png','zo18.png','zo19.png','zo20.png','zo21.png','zo22.png','zo23.png','zo24.png','zo25.png','zo11.png','zo26.png'];
var stopAnimations = false;
var imagePointer= 0;
var isFadeIn = false;
var firstLoad = 1;

/**
 * @function
 *
 */
function loginPreShow(){
  //alert("in pre"); 
   loginForm.masterFlex.zomatoFlex.opacity = 0;
   loginForm.loginScroll.pgdpFlex.opacity = 0;
   loginForm.loginScroll.firstLoginScroll.opacity = 0; 
   loginForm.bottomLogin.opacity = 0;
   loginForm.bottomLogin.top = "100%";
   imagePointer = 0;
}

/**
 * @function
 *
 */
function loginPostShow(){   
  	animateLogin(); 
}

/**
 * @function
 *
 */
function animateLogin(){ 
	animateZomato(); 
}

/**
 * @function
 *
 */
function animateZomato(){
  loginForm.masterFlex.zomatoFlex.animate(
						  kony.ui.createAnimation({							  
    0:{opacity:1,"stepConfig":{"timingFunction": kony.anim.EASE_IN_OUT}}, 
    10:{top:"70%","stepConfig":{}},
    100:{top:"25%","stepConfig":{}}} ),
    {delay:0.05,fillMode:kony.anim.FILL_MODE_FORWARDS,duration:0.25},
		  {animationEnd: animateBottom});
}

/**
 * @function
 *
 */
var animateBottom = function (){
  loginForm.bottomLogin.animate(
						  kony.ui.createAnimation({							  
    0:{opacity:1,"stepConfig":{}}, 
    10:{top:"100%","stepConfig":{}} ,
    100:{top:"65%","stepConfig":{}} } ),
    {delay:0.15,fillMode:kony.anim.FILL_MODE_FORWARDS,duration:0.5},
		  {animationEnd: animateSkipLogin});
};

/**
 * @function
 *
 */
var animateSkipLogin = function (){
  loginForm.loginScroll.skipBtn.animate(
						  kony.ui.createAnimation({							  
    0:{left:"120%","stepConfig":{}}, 
    100:{left:"65%","stepConfig":{}} } ),
    {delay:0.01,fillMode:kony.anim.FILL_MODE_FORWARDS,duration:0.1},
		  {animationEnd: animatePgDots});
};

/**
 * @function
 *
 */
var animatePgDots = function (){
  loginForm.loginScroll.pgdpFlex.animate(
						  kony.ui.createAnimation({
    0:{opacity:1,"stepConfig":{}},
    10:{left:"120%","stepConfig":{"timingFunction": kony.anim.EASE_IN_OUT}}, 
    100:{left:"50%","stepConfig":{"timingFunction": kony.anim.EASE_IN_OUT}} } ),
    {delay:1,fillMode:kony.anim.FILL_MODE_FORWARDS,duration:1.5},{animationEnd: start_animation_flex1(isFadeIn)});
};

function getNextImage() {
  	if ( imagePointer === images.length) {
      imagePointer = 0;
      stopAnimations = true;
      return;
    }
      var image =  images[imagePointer];
      imagePointer++;
  
  	//alert("Get Next Image : " + image);
    return image;  
}

/**
 * @function
 *
 */
function start_animation_flex1(isFadeIn) {  
  		loginForm.loginScroll.firstLoginScroll.animate(
          kony.ui.createAnimation({
                100:{opacity:1 ,"stepConfig":{"timingFunction": kony.anim.EASE_IN_OUT}} }),
              {delay:0.5,iterationCount:1,fillMode:kony.anim.FILL_MODE_FORWARDS,duration:0.5},
              {animationEnd: function() { finished_animating_flex1(isFadeIn); } 
          });  
}

/**
 * @function
 *
 */
function finished_animating_flex1(isVisible) {
  
   if (!isVisible) {
      loginForm.loginScroll.firstLoginScroll.img1.src = getNextImage();      
   }
    if (!stopAnimations)
      start_animation_flex1(!isVisible);  
}

