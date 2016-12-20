var edMenu = function(navId,menuId) {
           var nav = document.getElementById(navId),
              menu = document.getElementById(menuId),
      toggleButton = document.getElementById('main-nav-toggle');
           //console.log(menu);

  function showNav() {
    nav.classList.toggle('show-menu');
    toggleButton.classList.toggle('menu-toggle-activo');
  }

  // si el nav y toggle existen mostrar u ocultar menu
  if (nav) {
    if (toggleButton) {
      toggleButton.addEventListener('click', showNav);
    } else {
      console.error('Not found')
    }
  } else {
    console.error('Not found Id')
  }

  if (menu) {
    // Detectar submenus
    var menuItems = menu.querySelectorAll('li');
    var menuItemsLength = menuItems.length;

    function showSubMenu(e) {
      //e.preventDefault();
      if (e.target.classList.contains('expand-submenu')) {
        e.target.classList.toggle('active');
        e.target.previousElementSibling.classList.toggle('show-submenu');
      }
    }

    menu.addEventListener('click', function(e){
      showSubMenu(e);
    });

    while (menuItemsLength--) {
      var menuItem = menuItems[menuItemsLength];
      // Detectar si un item es padre de un submenu
      if (menuItem.querySelector('ul') != null) {
        menuItem.classList.add('parent-submenu');

        //Crear toggle button para submenus
        var expandSubmenu = document.createElement('div');
        expandSubmenu.classList.add('expand-submenu');
        menuItem.appendChild(expandSubmenu);
      }
    }
  } else {
  }
};


