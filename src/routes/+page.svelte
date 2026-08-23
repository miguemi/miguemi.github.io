<script>
    import Card from "$lib/components/Card.svelte"

    const skills = {
        "Backend": [
            { name: "PHP", icon: "fa-brands fa-php" },
            { name: "Laravel", icon: "fa-brands fa-laravel" },
            { name: "Symfony", icon: "fa-solid fa-cubes" },
            { name: "Node.js", icon: "fa-brands fa-node-js" },
            { name: "Python", icon: "fa-brands fa-python" },
            { name: "C#", icon: "fa-solid fa-code" },
        ],
        "Frontend": [
            { name: "JavaScript", icon: "fa-brands fa-js" },
            { name: "Angular", icon: "fa-brands fa-angular" },
            { name: "Tailwind CSS", icon: "fa-brands fa-css3-alt" },
            { name: "DaisyUI", icon: "fa-solid fa-palette" },
        ],
        "Bases de datos": [
            { name: "SQL Server", icon: "fa-solid fa-database" },
            { name: "PostgreSQL", icon: "fa-solid fa-database" },
        ],
        "DevOps / Infra": [
            { name: "Docker", icon: "fa-brands fa-docker" },
            { name: "Kubernetes", icon: "fa-brands fa-kubernetes" },
            { name: "Linux", icon: "fa-brands fa-linux" },
        ],
        "Testing / QA": [
            { name: "Selenium", icon: "fa-brands fa-selenium" },
            { name: "Appium", icon: "fa-solid fa-mobile" },
            { name: "Cypress", icon: "fa-brands fa-codepen" },
        ],
        "Gestión": [
            { name: "JIRA", icon: "fa-brands fa-jira" },
            { name: "Scrum", icon: "fa-solid fa-person-running" },
        ],
    }

    const proyectos = [
        {
            title: "IDE Colaborativo en Tiempo Real",
            description:
                "Editor/IDE colaborativo construido con Node.js que permite edición simultánea en tiempo real y sincronización de sesiones entre usuarios.",
            tags: ["Node.js", "WebSocket", "Collaborative"],
            githubUrl: "https://github.com/miguemi",
            metrics: "Soporte para sesiones en tiempo real",
        },
        {
            title: "Sistema Web Pharmacy (Multi-tenant)",
            description:
                "Plataforma de gestión para farmacias desarrollada en PHP con arquitectura multi-tenant para aislar datos por cliente y panel administrativo.",
            tags: ["PHP", "Multi-tenant", "MySQL"],
            githubUrl: "https://github.com/miguemi",
            metrics: "Soporta múltiples clientes/tenants",
        },
        {
            title: "fill_pdf_format",
            description:
                "Herramienta para sobreescribir y rellenar datos en plantillas PDF (fill_pdf_format) — extracción y reemplazo de campos en PDFs.",
            tags: ["PDF", "PHP/Python", "Automatización"],
            githubUrl: "https://github.com/miguemi",
            metrics: "Automatiza generación de PDFs rellenados",
        },
        {
            title: "Sistema de Manejo de Asignaciones (Swagger)",
            description:
                "API documentada con Swagger para el manejo de asignaciones y workflow documental, con endpoints para CRUD y auditoría.",
            tags: ["REST API", "Swagger", "Documentación"],
            githubUrl: "https://github.com/miguemi",
            metrics: "API documentada y consumible por terceros",
        },
        {
            title: "Práctica con NestJS y Angular",
            description:
                "Proyecto práctico que integra backend en NestJS y frontend en Angular como laboratorio de buenas prácticas y arquitectura modular.",
            tags: ["NestJS", "Angular", "TypeScript"],
            githubUrl: "https://github.com/miguemi",
            metrics: "Ejemplo de integración fullstack",
        },
        {
            title: "Aporte al Proyecto Final de Seminario: Sistema para Bomberos",
            description:
                "Contribución al sistema de reportes para bomberos: módulos de gestión de incidentes y generación de reportes estadísticos.",
            tags: ["Reportes", "Node.js/PHP", "Colaboración"],
            githubUrl: "https://github.com/miguemi",
            metrics: "Módulos de reportes y estadísticas",
        },
    ]

    const experiencia = [
        {
            empresa: "Corpoinstancias S.A. (Freelance)",
            rol: "Desarrollador Fullstack — App de Restaurante",
            periodo: "Jun 2026 — Jul 2026",
            descripcion:
                "Desarrollo del flujo completo de la aplicación: gestión de pedidos, productos y experiencia de usuario. Integración de pasarelas de pago y panel administrativo.",
            lugar: "Remoto",
            logros: [
                "Entrega del MVP en 4 semanas",
                "Integración de pasarela de pagos y sistema de notificaciones",
            ],
        },
        {
            empresa: "Proyecto Outsourcing (Freelance)",
            rol: "Desarrollador Fullstack — Sistema Contable",
            periodo: "Ene 2026 — May 2026",
            descripcion:
                "Construcción de un sistema contable en equipo reducido, cubriendo el ciclo completo desde el análisis hasta las pruebas. API REST y panel web.",
            lugar: "Remoto",
            logros: [
                "Cobertura de pruebas automatizadas y revisión de código",
                "Entrega de módulos contables críticos para producción",
            ],
        },
        {
            empresa: "Finanssoreal S.A.",
            rol: "Desarrollador Fullstack / QA",
            periodo: "2024 — 2025",
            descripcion:
                "Desarrollo y mantenimiento de una aplicación de créditos financieros para web y móvil. Detección y corrección de fallas críticas, validación de integridad de datos y pruebas de API por módulo antes de cada despliegue.",
            lugar: "Cobán, Guatemala",
            logros: [
                "Implementación de framework de pruebas E2E con Selenium y PyTest",
                "Identificación y corrección de bugs críticos en API escalable",
                "Revisión de código y mejoras de seguridad en endpoints financieros",
            ],
        },
        {
            empresa: "Tribunal Eclesiástico — Residencia Estudiantil",
            rol: "Técnico de IT",
            periodo: "2019 — 2021",
            descripcion:
                "Soporte técnico y administración de infraestructura en la Residencia Estudiantil Colonia Yalguo y el Tribunal Eclesiástico.",
            lugar: "Cobán, Guatemala",
            logros: [
                "Soporte técnico a usuarios y mantenimiento de red",
                "Implementación de políticas básicas de seguridad y backups",
            ],
        },
    ]
</script>

<svelte:head>
    <title>Manuel Miguel Miguel - Ingeniero en Sistemas | Desarrollador Fullstack</title>
    <meta
        name="description"
        content="Ingeniero en Sistemas · Desarrollador Fullstack con experiencia en PHP, Laravel, Symfony, Python y JavaScript. Maestría en Seguridad Informática. Disponible para trabajo remoto o presencial." />

    <!-- Schema.org JSON-LD para SEO estructurado -->
    {@html `
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Person",
        "name": "Manuel Miguel Miguel",
        "jobTitle": "Ingeniero en Sistemas · Desarrollador Fullstack · QA Manual & Automation",
        "url": "https://miguemi.github.io",
        "image": "https://miguemi.github.io/images/mmm.jpg",
        "email": "mailto:miguemi41m@gmail.com",
        "telephone": "+502 3124 7397",
        "address": {
            "@type": "PostalAddress",
            "addressLocality": "Cobán",
            "addressRegion": "Alta Verapaz",
            "addressCountry": "GT"
        },
        "alumniOf": {
            "@type": "EducationalOrganization",
            "name": "Universidad Mariano Gálvez"
        },
        "hasCredential": [
            {
                "@type": "EducationalOccupationalCredential",
                "credentialCategory": "degree",
                "name": "Master en Seguridad Informática"
            },
            {
                "@type": "EducationalOccupationalCredential",
                "credentialCategory": "degree",
                "name": "Ingeniería en Sistemas"
            }
        ],
        "knowsAbout": [
            "Python", "JavaScript", "TypeScript", "C#", "PHP",
            "Django", "Angular", "NestJS", "SvelteKit", "Laravel",
            "PostgreSQL", "SQL Server", "QA Automation", "Testing",
            "Git", "Docker", "Linux", "Seguridad Informática"
        ],
        "sameAs": [
            "https://github.com/miguemi",
            "https://linkedin.com/in/miguemi"
        ]
    }
    </script>
    `}
</svelte:head>

<!-- HERO -->
<section
    class="min-h-screen flex items-center pt-24 pb-16 px-4 sm:px-6 lg:px-16">
    <div
        class="max-w-6xl mx-auto w-full grid grid-cols-1 lg:grid-cols-2 gap-8 lg:gap-16 items-center">
        <!-- Texto -->
        <div class="flex flex-col gap-4 sm:gap-6">
            <div class="flex items-center gap-3">
                <div class="w-6 sm:w-8 h-px bg-base-content/50"></div>
                <span
                    class="text-[10px] sm:text-xs uppercase tracking-widest text-base-content/70">
                    Ingeniero en Sistemas
                </span>
            </div>

            <h1
                class="text-5xl sm:text-6xl lg:text-8xl font-bold leading-none tracking-tight">
                MANUEL MIGUEL
                <br />
                <span class="text-base-content/40 italic font-normal">
                    MIGUEL
                </span>
            </h1>

            <div
                class="border-l-2 border-base-content/30 pl-3 sm:pl-4 flex flex-col gap-1">
                <span
                    class="text-[10px] sm:text-xs uppercase tracking-widest text-base-content/70">
                    Desarrollador Fullstack
                </span>
                <span
                    class="text-[10px] sm:text-xs uppercase tracking-widest text-base-content/70">
                    MSc. Seguridad Informática
                </span>
                <span
                    class="text-[10px] sm:text-xs uppercase tracking-widest text-base-content/70">
                    QA Manual &amp; Automation
                </span>
            </div>

            <p
                class="text-sm sm:text-base text-base-content/80 leading-relaxed max-w-sm font-light">
                Del frontend al backend, y de ahí a la prueba.
                Ingeniero en Sistemas, fullstack middle, con maestría
                en Seguridad Informática. QA manual y automation:
                encuentro lo que se rompe antes de que lo haga el usuario.
            </p>

            <div class="flex gap-3 flex-wrap">
                <a
                    href="#contacto"
                    class="btn btn-neutral btn-sm rounded-none px-4 sm:px-6 text-xs sm:text-sm">
                    Contactar →
                </a>
                <a
                    href="/cvMiguel.pdf"
                    target="_blank"
                    class="btn btn-outline btn-sm rounded-none px-4 sm:px-6 gap-2 text-xs sm:text-sm">
                    <i class="fa-solid fa-download text-xs"></i>
                    Descargar CV
                </a>
            </div>
        </div>

        <!-- Avatar -->
        <div class="flex justify-center lg:justify-end mt-8 lg:mt-0">
            <div class="relative">
                <div
                    class="w-48 h-60 sm:w-64 sm:h-80 border border-base-300 overflow-hidden">
                    <img
                        src="/images/mmm.jpg"
                        alt="Manuel Miguel"
                        class="w-full h-full object-cover object-top" />
                </div>
                <div
                    class="badge badge-neutral rounded-none absolute -bottom-3 -right-3 py-2 sm:py-3 px-3 sm:px-4 text-[10px] sm:text-xs font-normal whitespace-nowrap">
                    🎓 MSc. Seguridad Informática
                </div>
            </div>
        </div>
    </div>
</section>

<!-- LOGROS DESTACADOS -->
<section
    class="px-4 sm:px-6 lg:px-16 py-12 sm:py-16 bg-base-200/30 border-y border-base-200">
    <div class="max-w-6xl mx-auto">
        <div class="grid grid-cols-1 sm:grid-cols-3 gap-6 sm:gap-8">
            <div class="flex flex-col items-center text-center">
                <div class="text-3xl sm:text-4xl font-bold text-primary mb-2">
                    5+
                </div>
                <div class="text-xs sm:text-sm text-base-content/80 font-light">
                    Años de experiencia
                </div>
            </div>
            <div class="flex flex-col items-center text-center">
                <div class="text-3xl sm:text-4xl font-bold text-primary mb-2">
                    60%
                </div>
                <div class="text-xs sm:text-sm text-base-content/80 font-light">
                    Reducción en tiempo de QA
                </div>
            </div>
            <div class="flex flex-col items-center text-center">
                <div class="text-3xl sm:text-4xl font-bold text-primary mb-2">
                    10+
                </div>
                <div class="text-xs sm:text-sm text-base-content/80 font-light">
                    Proyectos completados
                </div>
            </div>
        </div>
    </div>
</section>

<!-- EXPERIENCIA -->
<section
    class="px-4 sm:px-6 lg:px-16 py-16 sm:py-24 border-t border-base-200"
    id="experiencia">
    <div class="max-w-6xl mx-auto">
        <div class="flex items-baseline gap-3 sm:gap-4 mb-10 sm:mb-14">
            <span
                class="text-[10px] sm:text-xs text-base-content/50 tracking-widest font-mono">
                01
            </span>
            <h2 class="text-2xl sm:text-3xl font-bold tracking-tight">
                Experiencia
            </h2>
            <div class="flex-1 h-px bg-base-200"></div>
        </div>

        <div class="divide-y divide-base-200">
            {#each experiencia as exp}
                <div
                    class="grid grid-cols-1 lg:grid-cols-[180px_1fr] gap-4 lg:gap-12 py-6 sm:py-8">
                    <div class="flex flex-col gap-1 pt-1">
                        <span class="text-xs font-mono text-base-content/70">
                            {exp.periodo}
                        </span>
                        <span class="text-xs font-mono text-base-content/60">
                            {exp.lugar}
                        </span>
                    </div>
                    <div class="flex flex-col gap-2">
                        <span
                            class="text-[10px] sm:text-xs uppercase tracking-widest text-base-content/60 font-mono">
                            {exp.empresa}
                        </span>
                        <h3
                            class="text-lg sm:text-xl font-semibold tracking-tight">
                            {exp.rol}
                        </h3>
                        <p
                            class="text-xs sm:text-sm text-base-content/80 leading-relaxed font-light">
                            {exp.descripcion}
                        </p>
                        {#if exp.logros}
                            <div class="mt-3 flex flex-col gap-2">
                                <span
                                    class="text-[10px] sm:text-xs uppercase tracking-widest text-base-content/70 font-mono">
                                    Logros clave:
                                </span>
                                <ul class="space-y-1.5">
                                    {#each exp.logros as logro}
                                        <li
                                            class="flex items-start gap-2 text-xs sm:text-sm text-base-content/80">
                                            <i
                                                class="fa-solid fa-check text-primary text-xs mt-0.5 sm:mt-1 flex-shrink-0">
                                            </i>
                                            <span class="flex-1">{logro}</span>
                                        </li>
                                    {/each}
                                </ul>
                            </div>
                        {/if}
                    </div>
                </div>
            {/each}
        </div>
    </div>
</section>

<!-- HABILIDADES -->
<section
    class="px-4 sm:px-6 lg:px-16 py-16 sm:py-24 border-t border-base-200"
    id="habilidades">
    <div class="max-w-6xl mx-auto">
        <div class="flex items-baseline gap-3 sm:gap-4 mb-10 sm:mb-14">
            <span
                class="text-[10px] sm:text-xs text-base-content/50 tracking-widest font-mono">
                02
            </span>
            <h2 class="text-2xl sm:text-3xl font-bold tracking-tight">
                Habilidades
            </h2>
            <div class="flex-1 h-px bg-base-200"></div>
        </div>

        <div
            class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 divide-x-0 sm:divide-x divide-y sm:divide-y-0 lg:divide-y divide-base-200 border border-base-200">
            {#each Object.entries(skills) as [categoria, items]}
                <div class="p-4 sm:p-6 hover:bg-base-200/40 transition-colors">
                    <p
                        class="text-[10px] sm:text-xs uppercase tracking-widest text-base-content/60 font-mono mb-4 sm:mb-5 pb-3 sm:pb-4 border-b border-base-200">
                        {categoria}
                    </p>
                    <ul class="flex flex-col gap-2 sm:gap-3">
                        {#each items as skill}
                            <li
                                class="flex items-center gap-2 sm:gap-3 text-xs sm:text-sm text-base-content/80 hover:text-base-content transition-colors">
                                <i
                                    class="{skill.icon} w-4 text-center text-base-content/40">
                                </i>
                                {skill.name}
                            </li>
                        {/each}
                    </ul>
                </div>
            {/each}
        </div>

        <!-- Idiomas -->
        <div
            class="grid grid-cols-1 sm:grid-cols-3 divide-x-0 sm:divide-x divide-y sm:divide-y-0 divide-base-200 border border-base-200 border-t-0">
            {#each [["Español", "Nativo"], ["Inglés", "Intermedio"], ["Q'eqchi'", "Nativo"]] as [lang, nivel]}
                <div
                    class="px-4 sm:px-6 py-3 sm:py-4 hover:bg-base-200/40 transition-colors flex items-center justify-between">
                    <span class="text-xs sm:text-sm text-base-content">
                        {lang}
                    </span>
                    <span
                        class="text-[10px] sm:text-xs font-mono text-base-content/60 uppercase tracking-wider">
                        {nivel}
                    </span>
                </div>
            {/each}
        </div>
    </div>
</section>

<!-- PROYECTOS -->
<section
    class="px-4 sm:px-6 lg:px-16 py-16 sm:py-24 border-t border-base-200"
    id="proyectos">
    <div class="max-w-6xl mx-auto">
        <div class="flex items-baseline gap-3 sm:gap-4 mb-10 sm:mb-14">
            <span
                class="text-[10px] sm:text-xs text-base-content/50 tracking-widest font-mono">
                03
            </span>
            <h2 class="text-2xl sm:text-3xl font-bold tracking-tight">
                Proyectos
            </h2>
            <div class="flex-1 h-px bg-base-200"></div>
        </div>

        <div
            class="grid grid-cols-1 lg:grid-cols-2 divide-x-0 lg:divide-x divide-y lg:divide-y-0 divide-base-200 border border-base-200">
            {#each proyectos as proyecto, i}
                <a
                    href={proyecto.githubUrl}
                    target="_blank"
                    class="p-6 sm:p-8 flex flex-col gap-3 hover:bg-base-200/40 transition-colors group no-underline">
                    <div class="flex justify-between items-start">
                        <span class="text-xs font-mono text-base-content/40">
                            0{i + 1}
                        </span>
                        <i
                            class="fa-solid fa-arrow-up-right text-xs text-base-content/40 group-hover:text-base-content group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-all">
                        </i>
                    </div>
                    <h3 class="text-lg sm:text-xl font-semibold tracking-tight">
                        {proyecto.title}
                    </h3>
                    {#if proyecto.metrics}
                        <div
                            class="badge badge-sm badge-outline rounded-none text-[10px] sm:text-xs font-mono text-primary border-primary/30">
                            {proyecto.metrics}
                        </div>
                    {/if}
                    <p
                        class="text-xs sm:text-sm text-base-content/80 leading-relaxed font-light">
                        {proyecto.description}
                    </p>
                    <div class="flex flex-wrap gap-2 mt-auto pt-2">
                        {#each proyecto.tags as tag}
                            <span
                                class="text-[10px] sm:text-xs font-mono text-base-content/60 border border-base-content/20 px-2 py-1">
                                {tag}
                            </span>
                        {/each}
                    </div>
                </a>
            {/each}
        </div>

        <div class="flex justify-center mt-6 sm:mt-8">
            <a
                href="https://github.com/miguemi"
                target="_blank"
                class="btn btn-outline btn-sm rounded-none gap-2 text-xs sm:text-sm">
                <i class="fa-brands fa-github"></i>
                Ver más en GitHub
            </a>
        </div>
    </div>
</section>

<!-- CONTACTO -->
<section
    class="px-4 sm:px-6 lg:px-16 py-16 sm:py-24 border-t border-base-200"
    id="contacto">
    <div class="max-w-6xl mx-auto">
        <div class="flex items-baseline gap-3 sm:gap-4 mb-10 sm:mb-14">
            <span
                class="text-[10px] sm:text-xs text-base-content/50 tracking-widest font-mono">
                04
            </span>
            <h2 class="text-2xl sm:text-3xl font-bold tracking-tight">
                Contacto
            </h2>
            <div class="flex-1 h-px bg-base-200"></div>
        </div>

        <div class="max-w-2xl">
            <h2
                class="text-3xl sm:text-4xl lg:text-5xl font-bold tracking-tight leading-tight mb-4">
                ¿Buscas un desarrollador
                <br />
                <span class="text-base-content/40 italic font-normal">
                    fullstack?
                </span>
            </h2>
            <p
                class="text-xs sm:text-sm text-base-content/80 leading-relaxed font-light mb-8 sm:mb-10">
                Estoy disponible para oportunidades de desarrollo fullstack, QA
                automation y consultoría en seguridad informática. Trabajo
                remoto o híbrido. Respondemos en menos de 24 horas.
            </p>

            <div class="divide-y divide-base-200 border-y border-base-200">
                <a
                    href="mailto:miguemi41m@gmail.com"
                    class="flex items-center justify-between py-4 sm:py-5 hover:pl-2 sm:hover:pl-3 transition-all group no-underline">
                    <div class="flex items-center gap-3 sm:gap-4">
                        <div
                            class="w-8 h-8 sm:w-9 sm:h-9 border border-base-300 flex items-center justify-center group-hover:border-base-content transition-colors flex-shrink-0">
                            <i
                                class="fa-solid fa-envelope text-xs sm:text-sm text-base-content/30 group-hover:text-base-content transition-colors">
                            </i>
                        </div>
                        <div class="min-w-0">
                            <span
                                class="block text-[10px] sm:text-xs font-mono uppercase tracking-widest text-base-content/50">
                                Email
                            </span>
                            <span
                                class="block text-xs sm:text-sm text-base-content/80 group-hover:text-base-content transition-colors break-all">
                                miguemi41m@gmail.com
                            </span>
                        </div>
                    </div>

                    <i
                        class="fa-solid fa-arrow-up-right text-xs text-base-content/30 group-hover:text-base-content group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-all flex-shrink-0 ml-2">
                    </i>
                </a>

                <a
                    href="https://linkedin.com/in/miguemi"
                    target="_blank"
                    rel="noopener noreferrer"
                    class="flex items-center justify-between py-4 sm:py-5 hover:pl-2 sm:hover:pl-3 transition-all group no-underline">
                    <div class="flex items-center gap-3 sm:gap-4">
                        <div
                            class="w-8 h-8 sm:w-9 sm:h-9 border border-base-300 flex items-center justify-center group-hover:border-base-content transition-colors flex-shrink-0">
                            <i
                                class="fa-brands fa-linkedin text-xs sm:text-sm text-base-content/30 group-hover:text-base-content transition-colors">
                            </i>
                        </div>
                        <div class="min-w-0">
                            <span
                                class="block text-[10px] sm:text-xs font-mono uppercase tracking-widest text-base-content/50">
                                LinkedIn
                            </span>
                            <span
                                class="block text-xs sm:text-sm text-base-content/80 group-hover:text-base-content transition-colors break-all">
                                linkedin.com/in/miguemi
                            </span>
                        </div>
                    </div>

                    <i
                        class="fa-solid fa-arrow-up-right text-xs text-base-content/30 group-hover:text-base-content group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-all flex-shrink-0 ml-2">
                    </i>
                </a>

                <a
                    href="tel:+50231247397"
                    class="flex items-center justify-between py-4 sm:py-5 hover:pl-2 sm:hover:pl-3 transition-all group no-underline">
                    <div class="flex items-center gap-3 sm:gap-4">
                        <div
                            class="w-8 h-8 sm:w-9 sm:h-9 border border-base-300 flex items-center justify-center group-hover:border-base-content transition-colors flex-shrink-0">
                            <i
                                class="fa-solid fa-phone text-xs sm:text-sm text-base-content/30 group-hover:text-base-content transition-colors">
                            </i>
                        </div>
                        <div>
                            <span
                                class="block text-[10px] sm:text-xs font-mono uppercase tracking-widest text-base-content/50">
                                Teléfono
                            </span>
                            <span
                                class="block text-xs sm:text-sm text-base-content/80 group-hover:text-base-content transition-colors">
                                +502 3124 7397
                            </span>
                        </div>
                    </div>
                    <i
                        class="fa-solid fa-arrow-up-right text-xs text-base-content/30 group-hover:text-base-content group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-all flex-shrink-0 ml-2">
                    </i>
                </a>

                <a
                    href="https://github.com/miguemi"
                    target="_blank"
                    class="flex items-center justify-between py-4 sm:py-5 hover:pl-2 sm:hover:pl-3 transition-all group no-underline">
                    <div class="flex items-center gap-3 sm:gap-4">
                        <div
                            class="w-8 h-8 sm:w-9 sm:h-9 border border-base-300 flex items-center justify-center group-hover:border-base-content transition-colors flex-shrink-0">
                            <i
                                class="fa-brands fa-github text-xs sm:text-sm text-base-content/30 group-hover:text-base-content transition-colors">
                            </i>
                        </div>
                        <div class="min-w-0">
                            <span
                                class="block text-[10px] sm:text-xs font-mono uppercase tracking-widest text-base-content/50">
                                GitHub
                            </span>
                            <span
                                class="block text-xs sm:text-sm text-base-content/80 group-hover:text-base-content transition-colors break-all">
                                github.com/miguemi
                            </span>
                        </div>
                    </div>

                    <i
                        class="fa-solid fa-arrow-up-right text-xs text-base-content/30 group-hover:text-base-content group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-all flex-shrink-0 ml-2">
                    </i>
                </a>
            </div>
        </div>
    </div>
</section>
