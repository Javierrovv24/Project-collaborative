Comandos de Git Esenciales: Una Guía Rápida
Este repositorio sirve como referencia para los comandos más utilizados en Git, el sistema de control de versiones más popular. Aquí encontrarás una explicación concisa de cada comando y ejemplos prácticos.

<h1>Configuración Inicial</h1>
git config --global user.name "Tu Nombre": Configura tu nombre de usuario para los commits.
git config --global user.email "[dirección de correo electrónico eliminada]": Configura tu correo electrónico para los commits.
Creación y Gestión de Repositorios
git init: Inicializa un nuevo repositorio Git en el directorio actual.
git clone <url>: Clona un repositorio remoto a tu máquina local.
  
<h1>Seguimiento de Cambios</h1>
git add <archivo>: Agrega un archivo al área de preparación para el siguiente commit.
git commit -m "Mensaje del commit": Realiza un commit de los cambios en el área de preparación.
git status: Muestra el estado actual del repositorio (cambios sin confirmar, etc.).
Historial de Cambios
git log: Muestra el historial de commits.
git diff: Muestra las diferencias entre el último commit y el área de trabajo.
  
<h1> Ramas </h1>
git branch: Lista las ramas existentes.
git branch <nombre_rama>: Crea una nueva rama.
git checkout <nombre_rama>: Cambia a una rama existente.
git merge <nombre_rama>: Fusiona una rama en la rama actual.
Interacción con Repositorios Remotos
git remote add origin <url>: Agrega un repositorio remoto con el nombre "origin".
git push origin <nombre_rama>: Envía los cambios locales a la rama correspondiente en el repositorio remoto.
git pull origin <nombre_rama>: Descarga los cambios del repositorio remoto y los fusiona con la rama local.
Otros Comandos Útiles
git reset HEAD <archivo>: Deshace los cambios de un archivo sin eliminarlo del área de trabajo.
git revert <commit>: Invierte los efectos de un commit específico.
git tag <nombre_etiqueta>: Crea una etiqueta para marcar un commit específico.
  
<h1> Ejemplos </h1>
<code># Crear un nuevo repositorio y hacer un commit
git init
touch README.md
git add README.md
git commit -m "Primer commit"

# Crear una nueva rama y cambiar a ella
git branch feature
git checkout feature

# Hacer cambios, hacer commit y fusionar con la rama principal
# ...
git checkout main
git merge feature</code>
