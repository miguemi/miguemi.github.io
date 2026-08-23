<script>
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
</script>

<svelte:head>
    <title>Proyectos - Manuel Miguel</title>
    <meta
        name="description"
        content="Proyectos de desarrollo fullstack creados con PHP, Laravel, Symfony, NestJS, Angular, Django y más." />
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
            <span class="text-base-content">Proyectos</span>
        </nav>

        <div class="flex items-baseline gap-3 sm:gap-4 mb-10 sm:mb-14">
            <span
                class="text-[10px] sm:text-xs text-base-content/50 tracking-widest font-mono">
                04
            </span>
            <h1
                class="text-3xl sm:text-4xl lg:text-5xl font-bold tracking-tight">
                Proyectos Destacados
            </h1>
            <div class="flex-1 h-px bg-base-200"></div>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 sm:gap-8">
            {#each proyectos as proyecto, i}
                <svelte:element
                    this={proyecto.githubUrl || proyecto.liveUrl ? "a" : "div"}
                    href={proyecto.githubUrl || proyecto.liveUrl || undefined}
                    target={proyecto.githubUrl || proyecto.liveUrl
                        ? "_blank"
                        : undefined}
                    class="p-6 sm:p-8 flex flex-col gap-3 border border-base-200 hover:border-primary/30 hover:bg-base-200/40 transition-all group no-underline">
                    <div class="flex justify-between items-start">
                        <span class="text-xs font-mono text-base-content/40">
                            0{i + 1}
                        </span>
                        {#if proyecto.githubUrl || proyecto.liveUrl}
                            <i
                                class="fa-solid fa-arrow-up-right text-xs text-base-content/40 group-hover:text-primary group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-all">
                            </i>
                        {/if}
                    </div>
                    <h2
                        class="text-xl sm:text-2xl font-semibold tracking-tight group-hover:text-primary transition-colors">
                        {proyecto.title}
                    </h2>
                    {#if proyecto.metrics}
                        <div
                            class="badge badge-sm badge-outline rounded-none text-xs font-mono text-primary border-primary/30">
                            {proyecto.metrics}
                        </div>
                    {/if}
                    <p
                        class="text-sm sm:text-base text-base-content/80 leading-relaxed font-light">
                        {proyecto.description}
                    </p>
                    <div class="flex flex-wrap gap-2 mt-auto pt-2">
                        {#each proyecto.tags as tag}
                            <span
                                class="text-xs font-mono text-base-content/60 border border-base-content/20 px-2 py-1">
                                {tag}
                            </span>
                        {/each}
                    </div>
                    {#if proyecto.liveUrl}
                        <div class="mt-2">
                            <span
                                class="text-xs text-primary font-mono flex items-center gap-2">
                                <i class="fa-solid fa-globe"></i>
                                Ver en vivo
                            </span>
                        </div>
                    {/if}
                </svelte:element>
            {/each}
        </div>

        <div class="mt-12 flex justify-center">
            <a
                href="https://github.com/miguemi"
                target="_blank"
                class="btn btn-outline btn-sm rounded-none gap-2">
                <i class="fa-brands fa-github"></i>
                Ver más en GitHub
            </a>
        </div>

        <!-- CTA -->
        <div class="mt-12 sm:mt-16 flex flex-wrap gap-4">
            <a
                href="/contacto"
                class="btn btn-neutral btn-sm rounded-none px-6">
                Contactar →
            </a>
            <a
                href="/cvMiguel.pdf"
                target="_blank"
                class="btn btn-outline btn-sm rounded-none px-6 gap-2">
                <i class="fa-solid fa-download text-xs"></i>
                Descargar CV
            </a>
        </div>
    </div>
</section>
