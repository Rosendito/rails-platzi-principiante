## Comentario útil
Ahora Rails 6 podemos agregar credenciales para múltiples entornos y en cada uno se encontraran sus propias claves de cifrado.

### Credenciales globales
Para cualquier entorno, Rails detecta automáticamente qué conjunto de credenciales utilizar. Las credenciales específicas del entorno tendrán prioridad sobre las credenciales globales. De no encontrarse credenciales específicas del entorno Rails utilizará las credenciales globales y la clave maestra que están representadas por los siguientes archivos:

- `config/credentials.yml.enc` 
- `config/master.key` (Archivo a compartir con nuestro equipo)

### Cree credenciales espesifico (producción)
Ejecutaremos el siguiente comando:

```bash
EDITOR=nano rails credentials:edit --environment production
```

Este comando abrirá el editor de texto seleccionado y nos permitirá crear las credenciales (formato, clave - valor) que consideremos necesarios, ademas nos creara los siguientes archivos

- `config/credentials/production.key`(Archivo a compartir con el equipo que tenga acceso al entorno producción)
- `config/credentials/production.yml.enc`

### Usando las credenciales en Rails

#### Para desarrollo:

```ruby
rails c
Rails.application.credentials.config # nos mostrara todo el contenido
Rails.application.credentials.aws # nos mostrara el valor de la clave aws
```

### Para producción:

```ruby
RAILS_ENV=production rails c
Rails.application.credentials.config # nos mostrara todo el contenido
Rails.application.credentials.aws # nos mostrara el valor de la clave aws
```
Conceptos extraídos de:

https://blog.saeloun.com/2019/10/10/rails-6-adds-support-for-multi-environment-credentials.html