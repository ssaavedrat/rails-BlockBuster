# Desafío - Relaciones 1 a N en los modelos

Este repositorio contiene el desafío "Relaciones 1 a N en los modelos", que tiene como objetivo validar los conocimientos sobre relaciones uno a muchos (1 a N) en el framework Ruby on Rails. En este ejercicio, se simula un sistema de registro de arriendos de películas, teniendo en cuenta que una película puede ser arrendada por un único cliente y un cliente puede arrendar muchas películas.

## Requerimientos

1. **Configuración Inicial del Proyecto**
   - Realiza la configuración inicial del proyecto, corrigiendo cualquier error que se presente en el código proporcionado.
   - Utiliza la gema Faker para cargar datos ficticios y poblar tu base de datos.

2. **Asignación de Cliente a Película**
   - Permite que al editar una película se le pueda asignar un cliente.

3. **Visualización en el Índice de Clientes**
   - En la página de índice de clientes, muestra si un cliente tiene una película arrendada o no.

4. **Diseño de la Aplicación**
   - Realiza modificaciones de diseño en la aplicación para asegurarte de que sea atractiva visualmente y no sea idéntica a la entregada inicialmente.

5. **Despliegue en Heroku**
   - Realiza el despliegue de la aplicación en la plataforma Heroku para que esté disponible en línea.

## Desarrollo

- Se generan datos ficticios para los modelos Client y Movie, utilizando la gema Faker.

- Arreglamos la relación en el modelo Client, para que cuando se borre un cliente, sus pelìculas asociadas no se borren, sino que se pongan en null.

  ```ruby
  has_many :movies, dependent: :nullify
  ```

* Editamos el form movie para que se pueda crear una película sin cliente asociado.

  ```erb
    <div>
      <%= form.label :client_id, style: "display: block" %>
      <%= form.select :client_id, options_for_select([["None", nil]] + @clients) %>
    </div>
  ```

* En la vista index no funciona el botón borrar un cliente, para arreglarlo, cambiamos la variable en _client.html.erb de `@client` a `client`.

* Agregamos estilos varios a la aplicación, utilizando bootstrap.

* Desplegamos la aplicación en Heroku.

  ```bash	
  heroku login
  heroku create blockbuster
  git push heroku main
  