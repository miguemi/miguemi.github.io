<script>
    import Card from "$lib/components/Card.svelte"

    const skills = {
        Lenguajes: [
            { name: "Python", icon: "fa-brands fa-python" },
            { name: "JavaScript", icon: "fa-brands fa-js" },
            { name: "TypeScript", icon: "fa-brands fa-js" },
            { name: "C#", icon: "fa-solid fa-code" },
            { name: "PHP", icon: "fa-brands fa-php" },
        ],
        Frameworks: [
            { name: "Django", icon: "fa-solid fa-layer-group" },
            { name: "Angular", icon: "fa-brands fa-angular" },
            { name: "NestJS", icon: "fa-solid fa-server" },
            { name: "SvelteKit", icon: "fa-solid fa-fire" },
            { name: "Laravel", icon: "fa-brands fa-laravel" },
            { name: "Symfony", icon: "fa-solid fa-cubes" },
        ],
        "Bases de datos": [
            { name: "SQL Server", icon: "fa-solid fa-database" },
            { name: "PostgreSQL", icon: "fa-solid fa-database" },
        ],
        "DevOps & Tools": [
            { name: "Git / GitHub", icon: "fa-brands fa-github" },
            { name: "Docker", icon: "fa-brands fa-docker" },
            { name: "Linux / Nix", icon: "fa-brands fa-linux" },
            { name: "QA Automation", icon: "fa-solid fa-vial" },
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
            title: "Sistema QA Automation",
            description:
                "Framework de pruebas automatizadas end-to-end para aplicaciones web en Finanssoreal S.A. Reducción del 60% en tiempo de testing y mejora continua de calidad del software.",
            tags: ["Selenium", "Python", "CI/CD", "Testing"],
            metrics: "60% reducción en tiempo de QA",
        },
        {
            title: "API REST Fullstack - Gestión Empresarial",
            description:
                "Sistema fullstack con backend NestJS (TypeScript) y frontend Angular. Arquitectura escalable con autenticación JWT, validación de datos y CRUD completo. PostgreSQL con ORM TypeORM.",
            tags: ["NestJS", "Angular", "PostgreSQL", "TypeScript"],
            metrics: "API RESTful con 20+ endpoints",
        },
        {
            title: "Sistema de Gestión Django",
            description:
                "Aplicación web empresarial con Django y Python. Incluye autenticación de usuarios, panel de administración personalizado, API REST con DRF y reportes automatizados.",
            tags: ["Django", "Python", "SQL Server", "REST API"],
            githubUrl: "https://github.com/miguemi",
            metrics: "Sistema multi-usuario con roles",
        },
    ]

    const experiencia = [
        {
            empresa: "Finanssoreal S.A",
            rol: "QA Manual & Automation + Programador Fullstack",
            periodo: "2024 — 2025",
            descripcion:
                "Desarrollo fullstack con NestJS, Angular y Django. Implementación de framework de pruebas automáticas que redujo tiempos de QA en 60%. Mantenimiento y optimización de aplicaciones financieras críticas. Testing end-to-end con Selenium y PyTest.",
            lugar: "Cobán, Alta Verapaz",
            logros: [
                "Reducción del 60% en tiempo de testing mediante automatización",
                "Desarrollo de 3+ aplicaciones fullstack en producción",
                "Implementación de CI/CD pipelines para deployment automatizado"
            ]
        },
        {
            empresa: "Departamento de IT",
            rol: "Técnico en Sistemas",
            periodo: "2019 — 2021",
            descripcion:
                "Administración de infraestructura tecnológica, soporte técnico a usuarios y mantenimiento de sistemas. Gestión de redes, servidores y equipos informáticos en el Tribunal Eclesiástico y Residencia Estudiantil.",
            lugar: "Cobán, Alta Verapaz",
            logros: [
                "Soporte técnico a 100+ usuarios",
                "Mantenimiento de infraestructura de red",
                "Resolución proactiva de incidentes técnicos"
            ]
        },
    ]
</script>

<svelte:head>
    <title>Manuel Miguel - Ingeniero en Sistemas | Fullstack Developer & QA Automation</title>
    <meta
        name="description"
        content="Desarrollador fullstack con experiencia en Python, JavaScript, C#, Django, Angular, NestJS. QA Automation specialist. MSc. Seguridad Informática. Disponible para nuevas oportunidades." />
    
    <!-- Schema.org JSON-LD para SEO estructurado -->
    {@html `
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "Person",
        "name": "Manuel Miguel Miguel",
        "jobTitle": "Ingeniero en Sistemas - Fullstack Developer & QA Automation",
        "url": "https://miguemi.github.io",
        "image": "https://miguemi.github.io/images/mmm.jpg",
        "email": "mailto:manuelmiguel80@hotmail.com",
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
<section class="min-h-screen flex items-center pt-24 pb-16 px-4 sm:px-6 lg:px-16">
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
                Manuel
                <br />
                <span class="text-base-content/40 italic font-normal">
                    Miguel.
                </span>
            </h1>

            <div
                class="border-l-2 border-base-content/30 pl-3 sm:pl-4 flex flex-col gap-1">
                <span
                    class="text-[10px] sm:text-xs uppercase tracking-widest text-base-content/70">
                    Desarrollo Fullstack
                </span>
                <span
                    class="text-[10px] sm:text-xs uppercase tracking-widest text-base-content/70">
                    QA &amp; Automation
                </span>
                <span
                    class="text-[10px] sm:text-xs uppercase tracking-widest text-base-content/70">
                    MSc. Seguridad Informática
                </span>
            </div>

            <p
                class="text-sm sm:text-base text-base-content/80 leading-relaxed max-w-sm font-light">
                Desarrollo software robusto, escalable y bien testeado. 
                Especializado en soluciones fullstack y automatización de QA. 
                Experiencia comprobada reduciendo bugs en producción y 
                optimizando procesos de desarrollo. Basado en Cobán, Guatemala.
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
                <div class="w-48 h-60 sm:w-64 sm:h-80 border border-base-300 overflow-hidden">
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
<section class="px-4 sm:px-6 lg:px-16 py-12 sm:py-16 bg-base-200/30 border-y border-base-200">
    <div class="max-w-6xl mx-auto">
        <div class="grid grid-cols-1 sm:grid-cols-3 gap-6 sm:gap-8">
            <div class="flex flex-col items-center text-center">
                <div class="text-3xl sm:text-4xl font-bold text-primary mb-2">5+</div>
                <div class="text-xs sm:text-sm text-base-content/80 font-light">
                    Años de experiencia
                </div>
            </div>
            <div class="flex flex-col items-center text-center">
                <div class="text-3xl sm:text-4xl font-bold text-primary mb-2">60%</div>
                <div class="text-xs sm:text-sm text-base-content/80 font-light">
                    Reducción en tiempo de QA
                </div>
            </div>
            <div class="flex flex-col items-center text-center">
                <div class="text-3xl sm:text-4xl font-bold text-primary mb-2">10+</div>
                <div class="text-xs sm:text-sm text-base-content/80 font-light">
                    Proyectos completados
                </div>
            </div>
        </div>
    </div>
</section>

<!-- EXPERIENCIA -->
<section class="px-4 sm:px-6 lg:px-16 py-16 sm:py-24 border-t border-base-200" id="experiencia">
    <div class="max-w-6xl mx-auto">
        <div class="flex items-baseline gap-3 sm:gap-4 mb-10 sm:mb-14">
            <span
                class="text-[10px] sm:text-xs text-base-content/50 tracking-widest font-mono">
                01
            </span>
            <h2 class="text-2xl sm:text-3xl font-bold tracking-tight">Experiencia</h2>
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
                        <h3 class="text-lg sm:text-xl font-semibold tracking-tight">
                            {exp.rol}
                        </h3>
                        <p
                            class="text-xs sm:text-sm text-base-content/80 leading-relaxed font-light">
                            {exp.descripcion}
                        </p>
                        {#if exp.logros}
                            <div class="mt-3 flex flex-col gap-2">
                                <span class="text-[10px] sm:text-xs uppercase tracking-widest text-base-content/70 font-mono">
                                    Logros clave:
                                </span>
                                <ul class="space-y-1.5">
                                    {#each exp.logros as logro}
                                        <li class="flex items-start gap-2 text-xs sm:text-sm text-base-content/80">
                                            <i class="fa-solid fa-check text-primary text-xs mt-0.5 sm:mt-1 flex-shrink-0"></i>
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
<section class="px-4 sm:px-6 lg:px-16 py-16 sm:py-24 border-t border-base-200" id="habilidades">
    <div class="max-w-6xl mx-auto">
        <div class="flex items-baseline gap-3 sm:gap-4 mb-10 sm:mb-14">
            <span
                class="text-[10px] sm:text-xs text-base-content/50 tracking-widest font-mono">
                02
            </span>
            <h2 class="text-2xl sm:text-3xl font-bold tracking-tight">Habilidades</h2>
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
                    <span class="text-xs sm:text-sm text-base-content">{lang}</span>
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
<section class="px-4 sm:px-6 lg:px-16 py-16 sm:py-24 border-t border-base-200" id="proyectos">
    <div class="max-w-6xl mx-auto">
        <div class="flex items-baseline gap-3 sm:gap-4 mb-10 sm:mb-14">
            <span
                class="text-[10px] sm:text-xs text-base-content/50 tracking-widest font-mono">
                03
            </span>
            <h2 class="text-2xl sm:text-3xl font-bold tracking-tight">Proyectos</h2>
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
                        <div class="badge badge-sm badge-outline rounded-none text-[10px] sm:text-xs font-mono text-primary border-primary/30">
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
<section class="px-4 sm:px-6 lg:px-16 py-16 sm:py-24 border-t border-base-200" id="contacto">
    <div class="max-w-6xl mx-auto">
        <div class="flex items-baseline gap-3 sm:gap-4 mb-10 sm:mb-14">
            <span
                class="text-[10px] sm:text-xs text-base-content/50 tracking-widest font-mono">
                04
            </span>
            <h2 class="text-2xl sm:text-3xl font-bold tracking-tight">Contacto</h2>
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
                Estoy disponible para oportunidades de desarrollo fullstack, QA automation 
                y consultoría en seguridad informática. Trabajo remoto o híbrido. 
                Respondemos en menos de 24 horas.
            </p>

            <div class="divide-y divide-base-200 border-y border-base-200">
                <a
                    href="mailto:manuelmiguel80@hotmail.com"
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
                                manuelmiguel80@hotmail.com
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
