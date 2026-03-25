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
</script>

<svelte:head>
    <title>Proyectos - Manuel Miguel</title>
    <meta name="description" content="Proyectos de desarrollo fullstack, QA automation y aplicaciones web creadas con Python, JavaScript, Angular, Django y NestJS." />
</svelte:head>

<section class="px-4 sm:px-6 lg:px-16 py-24 sm:py-32 min-h-screen">
    <div class="max-w-6xl mx-auto">
        <!-- Breadcrumb -->
        <nav class="mb-8 text-sm">
            <a href="/" class="text-base-content/60 hover:text-primary transition-colors">Inicio</a>
            <span class="mx-2 text-base-content/40">/</span>
            <span class="text-base-content">Proyectos</span>
        </nav>

        <div class="flex items-baseline gap-3 sm:gap-4 mb-10 sm:mb-14">
            <span class="text-[10px] sm:text-xs text-base-content/50 tracking-widest font-mono">
                03
            </span>
            <h1 class="text-3xl sm:text-4xl lg:text-5xl font-bold tracking-tight">Proyectos Destacados</h1>
            <div class="flex-1 h-px bg-base-200"></div>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 sm:gap-8">
            {#each proyectos as proyecto, i}
                <a
                    href={proyecto.githubUrl || proyecto.liveUrl || "#"}
                    target="_blank"
                    class="p-6 sm:p-8 flex flex-col gap-3 border border-base-200 hover:border-primary/30 hover:bg-base-200/40 transition-all group no-underline">
                    <div class="flex justify-between items-start">
                        <span class="text-xs font-mono text-base-content/40">
                            0{i + 1}
                        </span>
                        <i class="fa-solid fa-arrow-up-right text-xs text-base-content/40 group-hover:text-primary group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-all"></i>
                    </div>
                    <h2 class="text-xl sm:text-2xl font-semibold tracking-tight group-hover:text-primary transition-colors">
                        {proyecto.title}
                    </h2>
                    {#if proyecto.metrics}
                        <div class="badge badge-sm badge-outline rounded-none text-xs font-mono text-primary border-primary/30">
                            {proyecto.metrics}
                        </div>
                    {/if}
                    <p class="text-sm sm:text-base text-base-content/80 leading-relaxed font-light">
                        {proyecto.description}
                    </p>
                    <div class="flex flex-wrap gap-2 mt-auto pt-2">
                        {#each proyecto.tags as tag}
                            <span class="text-xs font-mono text-base-content/60 border border-base-content/20 px-2 py-1">
                                {tag}
                            </span>
                        {/each}
                    </div>
                    {#if proyecto.liveUrl}
                        <div class="mt-2">
                            <span class="text-xs text-primary font-mono flex items-center gap-2">
                                <i class="fa-solid fa-globe"></i>
                                Ver en vivo
                            </span>
                        </div>
                    {/if}
                </a>
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
            <a href="/contacto" class="btn btn-neutral btn-sm rounded-none px-6">
                Contactar →
            </a>
            <a href="/cvMiguel.pdf" target="_blank" class="btn btn-outline btn-sm rounded-none px-6 gap-2">
                <i class="fa-solid fa-download text-xs"></i>
                Descargar CV
            </a>
        </div>
    </div>
</section>
