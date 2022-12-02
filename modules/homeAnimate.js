/**
 * @module File011ad3fdaabb743
 *
 * @author Viz User 
 */
function homePreShow(){     
  frmHideMenu();
  firstLoad = 0;
  
  homeForm.quickMenuFlex.opacity = 0;
  homeForm.addBtn.opacity = 0;
  //alert("in pre: quickmenu: "+ homeForm.homeFlex.quickMenuFlex.opacity);
}

function homePostShow(){     
  animateAddButton();
}

function animateAddButton(){
  homeForm.addBtn.animate(
						  kony.ui.createAnimation({							  
    0:{opacity:1,"stepConfig":{"timingFunction": kony.anim.EASE_IN_OUT}},     
    100:{top:"75%","stepConfig":{}}} ),
    {delay:1,fillMode:kony.anim.FILL_MODE_FORWARDS,duration:0.75},
		  {});
}

/**
* Menu Show/hide functions
*/
function frmShowMenu(){  
  	homeForm.menuFlex.setVisibility(true);
    homeForm.nonMenuFlex.setVisibility(true);    
}

/**
 * @function
 *
 */
function frmHideMenu(){  
  	homeForm.menuFlex.setVisibility(false);
    homeForm.nonMenuFlex.setVisibility(false);    
}

/**
 * @function
 *
 */
function addButtonMenu(){
   homeForm.addBtn.opacity = 0;
  homeForm.homeFlex.opacity = 0.05;
  animateQuickMenu();
}

/**
 * @function
 *
 */
function animateQuickMenu(){
  homeForm.quickMenuFlex.animate(
						  kony.ui.createAnimation({							  
    0:{opacity:1,"stepConfig":{"timingFunction": kony.anim.EASE_IN_OUT}},     
    100:{top:"30%","stepConfig":{}}} ),
    {delay:0,fillMode:kony.anim.FILL_MODE_FORWARDS,duration:0.05},
		  {});
}

/**
 * @function
 *
 */
function crossButtonClick(){
  homeForm.quickMenuFlex.opacity= 0;
  homeForm.addBtn.opacity = 1;
}

/**
 * @function
 *
 */
function segmentSelection(Context, RI){
  //alert("RI: " + RI);
  if(RI === 0){
    searchForm.show();
  }
  if (RI === 1){
    alert("page under construction");
  }
  if(RI === 2){
    mapForm.show();
  }
}

