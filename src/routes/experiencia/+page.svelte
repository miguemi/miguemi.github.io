<script>
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
    <title>Experiencia - Manuel Miguel</title>
    <meta name="description" content="Experiencia profesional de Manuel Miguel como desarrollador fullstack y QA automation en Guatemala." />
</svelte:head>

<section class="px-4 sm:px-6 lg:px-16 py-24 sm:py-32 min-h-screen">
    <div class="max-w-6xl mx-auto">
        <!-- Breadcrumb -->
        <nav class="mb-8 text-sm">
            <a href="/" class="text-base-content/60 hover:text-primary transition-colors">Inicio</a>
            <span class="mx-2 text-base-content/40">/</span>
            <span class="text-base-content">Experiencia</span>
        </nav>

        <div class="flex items-baseline gap-3 sm:gap-4 mb-10 sm:mb-14">
            <span class="text-[10px] sm:text-xs text-base-content/50 tracking-widest font-mono">
                01
            </span>
            <h1 class="text-3xl sm:text-4xl lg:text-5xl font-bold tracking-tight">Experiencia Profesional</h1>
            <div class="flex-1 h-px bg-base-200"></div>
        </div>

        <div class="divide-y divide-base-200">
            {#each experiencia as exp}
                <div class="grid grid-cols-1 lg:grid-cols-[200px_1fr] gap-4 lg:gap-12 py-8 sm:py-10">
                    <div class="flex flex-col gap-1 pt-1">
                        <span class="text-sm font-mono text-base-content/70">
                            {exp.periodo}
                        </span>
                        <span class="text-xs font-mono text-base-content/60">
                            {exp.lugar}
                        </span>
                    </div>
                    <div class="flex flex-col gap-3">
                        <span class="text-xs sm:text-sm uppercase tracking-widest text-base-content/60 font-mono">
                            {exp.empresa}
                        </span>
                        <h2 class="text-xl sm:text-2xl font-semibold tracking-tight">
                            {exp.rol}
                        </h2>
                        <p class="text-sm sm:text-base text-base-content/80 leading-relaxed font-light">
                            {exp.descripcion}
                        </p>
                        {#if exp.logros}
                            <div class="mt-3 flex flex-col gap-2">
                                <span class="text-xs sm:text-sm uppercase tracking-widest text-base-content/70 font-mono">
                                    Logros clave:
                                </span>
                                <ul class="space-y-2">
                                    {#each exp.logros as logro}
                                        <li class="flex items-start gap-3 text-sm sm:text-base text-base-content/80">
                                            <i class="fa-solid fa-check text-primary text-sm mt-1 flex-shrink-0"></i>
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

        <!-- CTA -->
        <div class="mt-12 sm:mt-16 flex flex-wrap gap-4">
            <a href="/habilidades" class="btn btn-neutral btn-sm rounded-none px-6">
                Ver Habilidades →
            </a>
            <a href="/contacto" class="btn btn-outline btn-sm rounded-none px-6">
                Contactar
            </a>
        </div>
    </div>
</section>
