# recipesApplication

"DEVELOP" -> branch o rama que está el demo (pueden probar, clonar o descargar desde "develop")

Este es una app-demo en repositorio para que puedan ver un listado de recetas de comidas, puedan hacer el filtro de buscar por nombre de la receta, ver su descripción, país de origen, ver el lugar del restaurante donde lo preparan muy rico en un mapa, etc.



Tecnologías usadas:

- Se hace uso de una api mockable.io (está en el código).

- Está separada por capas y cada capa tiene responsabilidades única, por ejemplo hay una capa de interactor para llamar al servicio, otra capa para la vista (view), otra capa para la navegación (router), otra capa para los datos (data) y otra capa para la lógica del negocio (presenter).

- Todo el código esta entendible.

- El proyecto esta estructurado por carpetas. 

- Se usa patrón de diseño singleton.

- El diseño esta en Storyboards.

- Se adapta a todas las medidas de los iPhones.

- Se usan los ViewControllers, TableView, SearchBar, TextFields, UIImage, UIView, etc.

- Se usa MapKit para ver la ubicación.

- Se desarrolla con Unit test implementando XCTest por cada módulo.

- Se usa patrón arquitéctonico MVP-Routing-Configuration.

- Se usa las librerías Alamofire, AlamofireImage y SwiftMessages en el gestor de dependencia.

- Alamofire.- para la llamada al servicio.

- AlamofireImage.- para convertir la foto que viene storing a image y sesearlo en el UIImage del detalle.

- SwiftMessages.- para mostrar solo mensajes cuando no hay conexión a internet.

- Se usa como gestor de dependencia Cocoapods. (por favor este proyecto abrir con el archivo de extensión .xcworkspace).
