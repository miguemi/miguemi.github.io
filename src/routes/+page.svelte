<script>
    import Card from "$lib/components/Card.svelte"

    const skills = {
        Backend: [
            { name: "PHP", icon: "fa-brands fa-php" },
            { name: "Laravel", icon: "fa-brands fa-laravel" },
            { name: "Symfony", icon: "fa-solid fa-cubes" },
            { name: "Node.js", icon: "fa-brands fa-node-js" },
            { name: "Python", icon: "fa-brands fa-python" },
            { name: "C#", icon: "fa-solid fa-code" },
        ],
        Frontend: [
            { name: "JavaScript", icon: "fa-brands fa-js" },
            { name: "Angular", icon: "fa-brands fa-angular" },
            { name: "Tailwind CSS", icon: "fa-solid fa-wind" },
            { name: "DaisyUI", icon: "fa-solid fa-fire" },
        ],
        "Bases de datos": [
            { name: "SQL Server", icon: "fa-solid fa-database" },
            { name: "PostgreSQL", icon: "fa-solid fa-database" },
        ],
        "DevOps / Infraestructura": [
            { name: "Docker", icon: "fa-brands fa-docker" },
            { name: "Kubernetes (básico)", icon: "fa-solid fa-dharmachakra" },
            { name: "Linux / Unix", icon: "fa-brands fa-linux" },
        ],
        "Testing / QA": [
            { name: "Selenium", icon: "fa-solid fa-vial" },
            { name: "Appium", icon: "fa-solid fa-mobile-screen" },
            { name: "Cypress", icon: "fa-solid fa-vial-circle-check" },
        ],
        "Gestión de proyectos": [
            { name: "JIRA", icon: "fa-brands fa-jira" },
            { name: "Scrum", icon: "fa-solid fa-people-group" },
        ],
    }

    const proyectos = [
        {
            title: "Portfolio Personal",
            description:
                "Sitio web personal construido con SvelteKit, TailwindCSS y DaisyUI. Arquitectura moderna con SSG, optimizado para SEO y diseño responsive. Deploy automatizado en GitHub Pages.",
            tags: ["SvelteKit", "TailwindCSS", "DaisyUI", "SEO"],
            githubUrl: "https://github.com/miguemi/miguemi.github.io",
            liveUrl: "https://miguemi.github.io",
            metrics: "100% Lighthouse Score",
        },
        {
            title: "Sistema de Farmacia Multi-Tenant",
            description:
                "Sistema de gestión para farmacias con arquitectura multi-tenant desarrollado en PHP, permitiendo que múltiples farmacias operen de forma aislada sobre la misma plataforma.",
            tags: ["PHP", "Multi-tenant"],
        },
        {
            title: "Servicio de Llenado de PDF",
            description:
                "Servicio en PHP para sobrescribir plantillas PDF con datos provenientes de una API o de base de datos, generando documentos rellenados de forma automática.",
            tags: ["PHP", "PDF", "API"],
        },
        {
            title: "Sistema de Asignaciones",
            description:
                "Sistema de asignaciones con documentación de API generada con Swagger para facilitar su integración y consumo por otros equipos.",
            tags: ["PHP", "Swagger", "API REST"],
        },
        {
            title: "Control de Financiamiento de Vehículos",
            description:
                "Sistema desarrollado como prueba técnica para el control de financiamiento de vehículos.",
            tags: ["Prueba Técnica"],
        },
        {
            title: "IDE Colaborativo en Tiempo Real",
            description:
                "IDE colaborativo en tiempo real construido con JavaScript y Node.js, permitiendo edición simultánea de código entre varios usuarios.",
            tags: ["JavaScript", "Node.js", "Tiempo Real"],
        },
        {
            title: "Registro de Productos",
            description:
                "Mini proyecto para el registro de productos con backend en NestJS y frontend en Angular.",
            tags: ["NestJS", "Angular", "TypeScript"],
        },
        {
            title: "Reportes para Bomberos Voluntarios",
            description:
                "Sistema de generación de reportes para Bomberos Voluntarios, desarrollado en PHP.",
            tags: ["PHP"],
        },
        {
            title: "Sistema de Ventas",
            description: "Sistema de ventas desarrollado con Django y Python.",
            tags: ["Django", "Python"],
        },
    ]

    const certificaciones = [
        {
            name: "Scrum Fundamentals Certified (SFC)",
            entidad: "SCRUMstudy",
            icon: "fa-solid fa-people-group",
        },
        {
            name: "CCNA v7",
            entidad: "Cisco Networking Academy",
            icon: "fa-solid fa-network-wired",
        },
        {
            name: "CCNA1: Introducción a Redes, Fase 1",
            entidad: "INTECAP",
            icon: "fa-solid fa-diagram-project",
        },
    ]

    const experiencia = [
        {
            empresa: "Corposistemas S.A. (Freelance)",
            rol: "Desarrollador Fullstack — App de Restaurante",
            periodo: "Jun 2026 — Jul 2026",
            descripcion:
                "Desarrollo del flujo completo de la aplicación: gestión de pedidos, gestión de productos y experiencia de usuario.",
            lugar: "Remoto",
        },
        {
            empresa: "Proyecto Outsourcing (Freelance)",
            rol: "Desarrollador Fullstack — Sistema Contable",
            periodo: "Ene 2026 — May 2026",
            descripcion:
                "Construcción de un sistema contable en equipo reducido, cubriendo el ciclo completo desde el análisis hasta las pruebas.",
            lugar: "Remoto",
        },
        {
            empresa: "Finanssoreal S.A.",
            rol: "Desarrollador Fullstack",
            periodo: "2024 — 2025",
            descripcion:
                "Desarrollo y mantenimiento de una aplicación de créditos financieros para web y móvil.",
            lugar: "Cobán, Alta Verapaz",
            logros: [
                "Detección y corrección de una falla crítica de escalabilidad en la API compartida que saturaba el servidor",
                "Identificación de inconsistencias en estados de cuenta y validación de la integridad de datos financieros",
                "Implementación de revisión de código y pruebas de API por módulo antes de cada despliegue",
            ],
        },
        {
            empresa: "Tribunal Eclesiástico",
            rol: "Técnico de IT",
            periodo: "2019 — 2021",
            descripcion:
                "Soporte técnico en la Residencia Estudiantil Colonia Yalguo, Cobán.",
            lugar: "Cobán, Alta Verapaz",
        },
    ]
</script>

<svelte:head>
    <title>Miguemi</title>
    <meta
        name="description"
        content="Ingeniero en Sistemas y desarrollador fullstack con experiencia en PHP, Laravel, Symfony, Angular. Postgrado en Seguridad Informática. Disponible para nuevas oportunidades." />

    <!-- Schema.org JSON-LD para SEO estructurado -->
    {@html `
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Person",
        "name": "Manuel Miguel Miguel",
        "jobTitle": "Ingeniero en Sistemas - Fullstack Developer",
        "url": "https://miguemi.github.io",
        "image": "https://miguemi.github.io/images/mmm.jpg",
        "email": "mailto:miguemi41m@gmail.com",
        "telephone": "+50231247397",
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
                "name": "Maestría en Seguridad Informática"
            },
            {
                "@type": "EducationalOccupationalCredential",
                "credentialCategory": "degree",
                "name": "Ingeniería en Sistemas de Información y Ciencias de la Computación"
            },
            {
                "@type": "EducationalOccupationalCredential",
                "credentialCategory": "certification",
                "name": "Scrum Fundamentals Certified (SFC)"
            },
            {
                "@type": "EducationalOccupationalCredential",
                "credentialCategory": "certification",
                "name": "CCNA v7 - Cisco Networking Academy"
            }
        ],
        "knowsAbout": [
            "PHP", "Laravel", "Symfony", "Node.js", "Python", "C#",
            "JavaScript", "Angular", "Tailwind CSS", "SvelteKit",
            "SQL Server", "PostgreSQL", "Docker", "Kubernetes",
            "Linux", "Selenium", "Appium", "Cypress", "Scrum",
            "Seguridad Informática"
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
<section class="relative pt-16 pb-10 sm:pt-20 sm:pb-14 px-4 sm:px-6 lg:px-16">
    <div
        class="max-w-4xl mx-auto w-full flex flex-col lg:flex-row items-center justify-center gap-8 lg:gap-14">
        <!-- Texto -->
        <div
            class="flex flex-col gap-3 sm:gap-4 text-center lg:text-left lg:max-w-lg">
            <div
                class="flex items-center justify-center lg:justify-start gap-3">
                <div class="w-6 sm:w-8 h-px bg-base-content/50"></div>
                <span
                    class="text-[10px] sm:text-xs uppercase tracking-widest text-base-content/70">
                    Ingeniero en Sistemas
                </span>
            </div>

            <h1
                class="text-4xl sm:text-5xl lg:text-6xl font-bold leading-none tracking-tight">
                Manuel
                <span class="text-base-content/40 italic font-normal">
                    Miguel.
                </span>
            </h1>

            <div class="flex flex-wrap justify-center lg:justify-start gap-2">
                {#each ["Desarrollo Fullstack", "PHP · Laravel · Symfony", "MSc. Seguridad Informática"] as tag}
                    <span
                        class="text-[10px] sm:text-xs uppercase tracking-widest text-base-content/70 border border-base-300 px-2.5 py-1 hover:border-primary hover:text-primary transition-colors cursor-default">
                        {tag}
                    </span>
                {/each}
            </div>

            <p
                class="text-xs sm:text-sm text-base-content/80 leading-relaxed max-w-md mx-auto lg:mx-0 font-light">
                Ingeniero en Sistemas con 3 años de experiencia como
                desarrollador fullstack, enfocado en PHP, Laravel y Symfony, con
                experiencia complementaria en QA de aplicaciones web y móviles,
                Docker y Kubernetes básico. Postgrado en Seguridad Informática.
            </p>

            <div class="flex gap-3 flex-wrap justify-center lg:justify-start">
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
        <div class="flex justify-center lg:justify-end">
            <div class="relative group">
                <div
                    class="w-32 h-40 sm:w-40 sm:h-52 border border-base-300 overflow-hidden transition-transform duration-300 group-hover:-translate-y-1 group-hover:shadow-lg">
                    <img
                        src="/images/mmm.jpg"
                        alt="Manuel Miguel"
                        class="w-full h-full object-cover object-top" />
                </div>
                <div
                    class="badge badge-neutral rounded-none absolute -bottom-2 -right-2 py-1.5 sm:py-2 px-2 sm:px-3 text-[9px] sm:text-[10px] font-normal whitespace-nowrap">
                    🎓 MSc. Seguridad
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
            class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 divide-x-0 sm:divide-x divide-y sm:divide-y-0 lg:divide-y divide-base-200 border border-base-200">
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
            class="grid grid-cols-1 sm:grid-cols-2 divide-x-0 sm:divide-x divide-y sm:divide-y-0 divide-base-200 border border-base-200 border-t-0">
            {#each [["Español", "Nativo"], ["Inglés", "Intermedio"]] as [lang, nivel]}
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

<!-- CERTIFICACIONES -->
<section
    class="px-4 sm:px-6 lg:px-16 py-16 sm:py-24 border-t border-base-200"
    id="certificaciones">
    <div class="max-w-6xl mx-auto">
        <div class="flex items-baseline gap-3 sm:gap-4 mb-10 sm:mb-14">
            <span
                class="text-[10px] sm:text-xs text-base-content/50 tracking-widest font-mono">
                03
            </span>
            <h2 class="text-2xl sm:text-3xl font-bold tracking-tight">
                Certificaciones
            </h2>
            <div class="flex-1 h-px bg-base-200"></div>
        </div>

        <div
            class="grid grid-cols-1 sm:grid-cols-3 divide-x-0 sm:divide-x divide-y sm:divide-y-0 divide-base-200 border border-base-200">
            {#each certificaciones as cert}
                <div
                    class="p-5 sm:p-6 flex flex-col gap-3 hover:bg-base-200/40 transition-colors">
                    <div
                        class="w-9 h-9 border border-base-300 flex items-center justify-center">
                        <i class="{cert.icon} text-sm text-base-content/60"></i>
                    </div>
                    <h3
                        class="text-sm sm:text-base font-semibold tracking-tight leading-snug">
                        {cert.name}
                    </h3>
                    <span
                        class="text-[10px] sm:text-xs font-mono uppercase tracking-widest text-base-content/60">
                        {cert.entidad}
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
                04
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
                    href={proyecto.githubUrl || undefined}
                    target={proyecto.githubUrl ? "_blank" : undefined}
                    class="p-6 sm:p-8 flex flex-col gap-3 hover:bg-base-200/40 transition-colors group no-underline">
                    <div class="flex justify-between items-start">
                        <span class="text-xs font-mono text-base-content/40">
                            0{i + 1}
                        </span>
                        {#if proyecto.githubUrl}
                            <i
                                class="fa-solid fa-arrow-up-right text-xs text-base-content/40 group-hover:text-base-content group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-all">
                            </i>
                        {/if}
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
                05
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
                Estoy disponible para oportunidades de desarrollo fullstack y
                consultoría en seguridad informática. Trabajo remoto o
                presencial. Respondemos en menos de 24 horas.
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
