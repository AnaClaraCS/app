// app/javascript/packs/application.js

// Importando o Bootstrap JavaScript e os estilos CSS
import 'bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';

// Importando o jQuery
import 'jquery';

// Importando o Popper
import 'popper.js';

// Importando outros módulos necessários
require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

// Importando seu arquivo SCSS customizado
import 'stylesheets/custom.scss';
