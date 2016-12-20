var vMenu = function(menuId) {
              menu = document.getElementById(menuId),
           console.log(menu);

  if (menu) {
    // Detectar submenus
    var menuItems = menu.querySelectorAll('li');
    var menuItemsLength = menuItems.length;

    function showVSubMenu(e) {
      e.preventDefault();
        e.target.nextElementSibling.classList.toggle('v-activo');
    }

    function cancelEventLink(e){
      //e.preventDefault();
    }


    while (menuItemsLength--) {
      var menuItem = menuItems[menuItemsLength];
      // Detectar si un item es padre de un submenu
      if (menuItem.querySelector('ul') != null) {
        
        menuItem.querySelector('a').addEventListener('click', function(e){
          showVSubMenu(e);
        });
        //console.log(menuItem.querySelector('a').nextElementSibling);

        //Crear toggle button para submenus

        
        var expandSubmenu = document.createElement('div');
        expandSubmenu.classList.add('expand-submenu');
        menuItem.appendChild(expandSubmenu)
      }else{
        
        menuItem.querySelector('a').addEventListener('click', function(e){
          cancelEventLink(e);
        });
      }
    }
  } else {
    console.error('Not found Id')
  }
};

$(document).on('ready',function(){
  vMenu('vMenu-servicios');
});