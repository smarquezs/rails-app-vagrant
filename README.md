## Repositorio rails 4.1, Ruby 2.0 con vagrant

## Prerrequisitos
* Vagrant
* Virtual BOX

Si es usuario de windows descargar e instalar
[Git para windows] (http://git-scm.com/download/win)

## Clonar repositorio
Ir a la consola si es windows ideal C:

```console
  git clone git@github.com:smarquezs/rails-app-vagrant.git
  cd my-app
  cd vagrant
  vagrant up (esperar unos minutos)
```

## Una vez instalado

```console
  vagrant ssh (para ingresar a la maquina con linux)
  cd /taller
  rbenv rehash
  bundle install --no-deployment; bundle install --deployment (esperar otro ratito)
```

## Cuando termine el bundle install

```console
   bundle exec rake db:create db:migrate
```

Agregue una entrada en su archivo hosts

```console
  33.33.33.53 dev.my.app.com
```

Ahora vaya a su navegador e ingrese
dev.my.app.com o 33.33.33.53

## Finalmente

Estás listo para codear :)