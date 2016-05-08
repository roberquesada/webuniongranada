# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

# Ponentes

Speaker.create(name: "Teodoro Mylonopoulos Labella")
Speaker.create(name: "Emilio Postigo")
Speaker.create(name: "Gonzalo Mendez Alarcón", description: "Es programador malagueño de profesión freelance y fue profesor de Javascript en Escuela Arte Granada")
Speaker.create(name: "Alejandro Rodríguez", description: "Manager del Adobe User Group Granada, desarrollador de aplicaciones y SEO.")
Speaker.create(name: "Julio Heras Jiménez", description: '"Teleco" por la Universidad de Jaén, un emprendedor enamorado de la "Magia de Granada".Co-fundador y CTO de Uveni.com, plataforma online que ayuda a jóvenes a descubrir sus habilidades y aptitudes.Co-fundador y desarrollador de Tuspistas.es, aplicación web de reserva de pistas deportivas con la que conocer gente.')
Speaker.create(name: "Angel Squembri")

# Eventos

Event.create(title: "UX / UI ¿Que demonios necesitas?", description: "La charla versara sobre los conceptos de UX (User Experience) e #UI (User Interface) y como estos se aplican, no solo en una #webapp o #web, si no en nuestra vida diaria.", slug: "ux-ui-que-demonios-necesitas", category: :charla, date: "2015-04-09 19:30")
Participation(speaker_id: 1, event_id: 1)
Participation(speaker_id: 2, event_id: 1)

Event.create(title: "Workshop Git", description: '<h1 class="">Contenidos del Workshop Git</h1><ul><li><h2>Introducción</h2><p> Conoceremos los conceptos básicos de cualquier sistema de control de versiones (VCS).<br> Tomaremos contacto con algunos casos prácticos en los que usar un control de versiones. </p></li><li><h2>Comienzos con Git</h2><p>Aprenderemos los conceptos más usados en Git y las herramientas que se pueden usar.</p></li><li><h2>Git flow</h2><p>Comprenderemos lo que significa el concepto de <i>Git flow</i> y por qué es importante seguirlo.</p></li><li><h2>Parte práctica</h2><p>Crearemos un proyecto con Git desde cero para mostrar situaciones habituales en los repositorios. ¡Trae tu equipo y configura Git para tus proyectos!</p></li><li><h2>Despliegue sobre Git</h2><p>El paso a producción es un momento crítico en cualquier aplicación, con Git se pueden minimizar los errores, y aprenderemos a hacer uso de una herramienta para ello.</p></li></ul>', slug: "workshop-git", category: :workshop, date: "2015-05-21 19:30")
Participation(speaker_id: 3, event_id: 2)

Event.create(title: "Como trabajar el SEO on-page", description: "El trabajo de SEO on-page es la parte fundamental para comenzar a trabajar en cualquier proyecto que desee conseguir un buen posicionamiento web. Todo este trabajo tiene detalles que a veces se descuidan y pueden perjudicarnos. Cuidandolos podremos conseguir, antes, nuestros objetivos. Esta charla está orientada a sitios web desarrollados a medida aunque los conceptos pueden ser aprovechados por aquellos que utilizan CMS como Wordpress. Durante la charla trataremos temas como: ¿Cómo estar informado? Herramientas de análisis. Temas a tener en cuenta con el dominio. ¿Sabías que….? Trabajo de los contenidos del sitio. ¿Que hay que cuidar? Primeros pasos para el lanzamiento de un site. Casos de éxito. Tip: Saliendo de una penalización rápidamente.", slug: "como-trabajar-el-seo-on-page", category: :charla, date: "2015-06-24 19:30")
Participation(speaker_id: 4, event_id: 3)



Event.create(title: "¿Cómo enfrentarse al desarrollo de una Aplicación Web con AngularJS?", description: "Daremos una pincelada de cómo enfrentarse al desarrollo de una aplicación personalizada desde cero, estableciendo qué aspectos de desarrollo intervienen en la parte servidor y cuáles en el cliente. En éste último, haremos uso de AngularJS, un framework libre mantenido por Google basado en Javascript. AngularJS nos permite un desarrollo ágil basado en el Modelo Vista Controlador (MVC). Permite separar las plantillas de la lógica de la aplicación y fomenta así un desarrollo ordenado y con capacidad de ser escalable. Con AngularJS, podemos manipular dinámicamente el DOM de una forma más sencilla, añadir efectos, comunicarnos mediante llamadas AJAX con el servidor, etc. Todo ello con ejemplos prácticos en un proyecto real, Uveni.com, una plataforma online que ayuda a jóvenes a descubrir sus habilidades, aptitudes personales y a ayudarles a tomar decisiones sobre sus estudios, o futuros profesionales.", slug: "como-enfrentarse-al-desarrollo-de-una-app-con-angularjs", category: :charla, date: "2015-11-26 20:00")
Participation(speaker_id: 5, event_id: 4)



Event.create(title: "Ponle precio a tu trabajo", description: "Descripción del evento", slug: "ponle-precio-a-tu-trabajo", category: :workshop, date: "2016-02-11 19:30")
Participation(speaker_id: 6, event_id: 5)
