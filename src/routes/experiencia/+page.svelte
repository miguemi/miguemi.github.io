<script>
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
    <title>Experiencia - Manuel Miguel</title>
    <meta
        name="description"
        content="Experiencia profesional de Manuel Miguel como desarrollador fullstack en Guatemala: PHP, Laravel, Symfony y más." />
</svelte:head>

<section class="px-4 sm:px-6 lg:px-16 py-24 sm:py-32 min-h-screen">
    <div class="max-w-6xl mx-auto">
        <!-- Breadcrumb -->
        <nav class="mb-8 text-sm">
            <a
                href="/"
                class="text-base-content/60 hover:text-primary transition-colors">
                Inicio
            </a>
            <span class="mx-2 text-base-content/40">/</span>
            <span class="text-base-content">Experiencia</span>
        </nav>

        <div class="flex items-baseline gap-3 sm:gap-4 mb-10 sm:mb-14">
            <span
                class="text-[10px] sm:text-xs text-base-content/50 tracking-widest font-mono">
                01
            </span>
            <h1
                class="text-3xl sm:text-4xl lg:text-5xl font-bold tracking-tight">
                Experiencia Profesional
            </h1>
            <div class="flex-1 h-px bg-base-200"></div>
        </div>

        <div class="divide-y divide-base-200">
            {#each experiencia as exp}
                <div
                    class="grid grid-cols-1 lg:grid-cols-[200px_1fr] gap-4 lg:gap-12 py-8 sm:py-10">
                    <div class="flex flex-col gap-1 pt-1">
                        <span class="text-sm font-mono text-base-content/70">
                            {exp.periodo}
                        </span>
                        <span class="text-xs font-mono text-base-content/60">
                            {exp.lugar}
                        </span>
                    </div>
                    <div class="flex flex-col gap-3">
                        <span
                            class="text-xs sm:text-sm uppercase tracking-widest text-base-content/60 font-mono">
                            {exp.empresa}
                        </span>
                        <h2
                            class="text-xl sm:text-2xl font-semibold tracking-tight">
                            {exp.rol}
                        </h2>
                        <p
                            class="text-sm sm:text-base text-base-content/80 leading-relaxed font-light">
                            {exp.descripcion}
                        </p>
                        {#if exp.logros}
                            <div class="mt-3 flex flex-col gap-2">
                                <span
                                    class="text-xs sm:text-sm uppercase tracking-widest text-base-content/70 font-mono">
                                    Logros clave:
                                </span>
                                <ul class="space-y-2">
                                    {#each exp.logros as logro}
                                        <li
                                            class="flex items-start gap-3 text-sm sm:text-base text-base-content/80">
                                            <i
                                                class="fa-solid fa-check text-primary text-sm mt-1 flex-shrink-0">
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

        <!-- CTA -->
        <div class="mt-12 sm:mt-16 flex flex-wrap gap-4">
            <a
                href="/habilidades"
                class="btn btn-neutral btn-sm rounded-none px-6">
                Ver Habilidades →
            </a>
            <a
                href="/contacto"
                class="btn btn-outline btn-sm rounded-none px-6">
                Contactar
            </a>
        </div>
    </div>
</section>
