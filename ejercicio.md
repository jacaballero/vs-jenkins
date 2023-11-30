# Ejercicio de DevOps

El ejercicio consistirá en realizar y presentar un trabajo sobre una herramienta de DevOps elegida por el estudiante. El trabajo se realizará en equipos de 2 personas. Las herramientas serán elegidas de la siguiente lista:

- [Azure pipelines](https://azure.microsoft.com/es-es/products/devops/pipelines/)
- [Bamboo](https://www.atlassian.com/es/software/bamboo)
- [Bitbucket pipes](https://bitbucket.org/product/features/pipelines/integrations) y [pipelines](https://support.atlassian.com/bitbucket-cloud/docs/write-a-pipe-for-bitbucket-pipelines/)
- [Buildkite](https://buildkite.com/)
- [CircleCI](https://circleci.com/docs/getting-started/)
- [Codemagic](https://codemagic.io/start/)
- [Drone](https://www.drone.io/)
- [Github Actions](https://docs.github.com/en/actions)
- [Gitlab CI/CD](https://docs.gitlab.com/ee/topics/build_your_application.html)
- [GoCD](https://www.gocd.org/)
- [SemaphoreCI](https://semaphoreci.com/)
- [TeamCity](https://www.jetbrains.com/teamcity/)
- [Travis-CI](https://docs.travis-ci.com/)

## Contenido del ejercicio

El trabajo a desarrollar en este ejercicio consistirá en:

- Una breve introducción escrita a las características que proporciona la herramienta elegida para implementar los conceptos de DevOps, CI/CD e IaC.
- La definición de un ejemplo de un pipeline de CI/CD, de complejidad similar al realizado en las prácticas, empleando la herramienta elegida. El ejemplo deberá estar especificado en un fichero en el formato específico empleado por la herramienta (yaml, json, bicep, etc.)

## Elección del trabajo

Lo primero es elegir la herramienta sobre la que se realizará el trabajo. Para ello, se hará una [solicitud de extracción](https://docs.github.com/es/github/collaborating-with-issues-and-pull-requests/about-pull-requests) o [pull request](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests) (PR) donde se añada a la carpeta [tools](/tools) un fichero markdown cuyo nombre sea el de la herramienta elegida, acabado en `.md`.

- El PR solo debe proponer la adición del fichero markdown con el nombre de la herramienta elegida en la carpeta [tools](/tools).
- Los nombres permitidos para este fichero son los indicados más abajo como [nombres de las carpetas](#nombres-de-las-carpetas). Por ejemplo, nombres válidos serán `github.md`, `bitbucket.md`, `azurepipelines.md`, etc. Todos los nombres que no estén en la lista de [nombres de las carpetas](#nombres-de-las-carpetas) y no acaben en `.md` serán considerados como no válidos.
- El fichero markdown debe contener una tabla con los nombres de los autores propuestos, similar al del fichero de [autores](/tools/authors.md).
- Cada herramienta sólo podrá ser elegida por un equipo. En caso de que varios equipos elijan la misma herramienta, se decidirá en función del orden en que lleguen los PR.
- Cualquier nombre no permitido o contenido no válido del fichero, que éste no se añada en la carpeta [tools](/tools) o que se intente modificar cualquier otro contenido del repositorio, podrá provocar el rechazo del PR. En tal caso, los autores tendrán que emitir otro PR para la elección de la herramienta. Dicho PR se situará por detrás de todos los PRs que se hayan aceptado con anterioridad.
- Recordar hacer una petición de `git pull` para sincronizar el repositorio local antes de hacer un nuevo PR.

## Material a entregar

El material desarrollado debe estar en formato markdown y se depositará en una carpeta bajo el directorio [tools](/tools). Cada grupo colocará el material desarrollado en una carpeta creada con el nombre de la herrramienta elegida. Los nombres permitidos para estas carpetas son los indicados en la lista de [nombres de las carpetas](#nombres-de-las-carpetas).

Se debe incluir una breve explicación escrita en [markdown](https://en.wikipedia.org/wiki/Markdown), con instrucciones sobre cómo lanzar el pipeline definido en el ejemplo. Todos los ficheros se deben ubicar en la carpeta creada con el nombre de la herramienta, situada bajo la carpeta [tools](/tools).

Las instrucciones y todos los entregables deberán estar explicadas o ser alcanzables desde un fichero `README.md` situado en la raíz de la carpeta creada.

Los autores de cada trabajo estarán especificados en un fichero [`authors.md`](/tools/authors.md) situado en la carpeta [tools](/tools). El fichero [`authors.md`](/tools/authors.md) contendrá una tabla con los nombres de los autores y las herramientas elegidas.

### Nombres de las carpetas

- `azurepipelines`
- `bamboo`
- `bitbucket`
- `buildkite`
- `circleci`
- `codemagic`
- `drone`
- `github`
- `gitlab`
- `gocd`
- `semaphoreci`
- `teamcity`
- `travisci`

## Entrega

La entrega se realizará en [este mismo repositorio](https://github.com/uca-virtualizacion/devops) a través de un PR final.

- Se recomienda hacer _fork_ del repositorio, para poder disponer de una copia del mismo en las cuentas de github de todos los autores de cada ejercicio y poder así colaborar en la realización del material.

- Clonar el repositorio para poder trabajar en local.

- Antes de hacer ningún cambio, se deberá definir una nueva rama (_branch_) de nombre `feature-sufijo`, donde el _sufijo_ será el nombre de la herramienta elegida, en minúsculas y sin acentos, igual que el nombre de la carpeta. Por ejemplo, `feature-bitbucket` o `feature-circleci`.

- Modificar el fichero de [autores](/tools/authors.md) para añadir una fila con el curso, la herramienta asignada y los nombres de los autores. Si la fila ya existe, modificar en el fichero markdown el enlace correspondiente a las páginas en github de los autores y a la carpeta donde se han realizado las modificaciones de la entrega.

- Al acabar el ejercicio, se debe hacer un PR en la rama creada para solicitar la incorporación en el repositorio remoto de todo lo realizado.

- Tras la entrega, se puede borrar la rama creada para hacer las modificaciones propuestas en el PR.

- Todos los ficheros añadidos o modificados deben estar en la carpeta destinada a la herramienta elegida. Cualquier añadido o modificación sobre ficheros fuera de esa carpeta, que no sean las modificaciones a la tabla de los [autores](/tools/authors.md) del trabajo, motivará el rechazo del PR final.

## Presentación

De cada ejercicio entregado se hará una breve presentación de 10 minutos en la clase del 8 de enero de 2024. Pedir hora al profesor a través del campus virtual.

## Lecturas adicionales

- [¿Cómo hacer tu primer pull request en Github?](https://www.freecodecamp.org/espanol/news/como-hacer-tu-primer-pull-request-en-github/)
