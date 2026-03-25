<script>
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
</script>

<svelte:head>
    <title>Habilidades - Manuel Miguel</title>
    <meta name="description" content="Habilidades técnicas y lenguajes de programación: Python, JavaScript, Django, Angular, NestJS, PostgreSQL." />
</svelte:head>

<section class="px-4 sm:px-6 lg:px-16 py-24 sm:py-32 min-h-screen">
    <div class="max-w-6xl mx-auto">
        <!-- Breadcrumb -->
        <nav class="mb-8 text-sm">
            <a href="/" class="text-base-content/60 hover:text-primary transition-colors">Inicio</a>
            <span class="mx-2 text-base-content/40">/</span>
            <span class="text-base-content">Habilidades</span>
        </nav>

        <div class="flex items-baseline gap-3 sm:gap-4 mb-10 sm:mb-14">
            <span class="text-[10px] sm:text-xs text-base-content/50 tracking-widest font-mono">
                02
            </span>
            <h1 class="text-3xl sm:text-4xl lg:text-5xl font-bold tracking-tight">Habilidades Técnicas</h1>
            <div class="flex-1 h-px bg-base-200"></div>
        </div>

        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 divide-x-0 sm:divide-x divide-y sm:divide-y-0 lg:divide-y divide-base-200 border border-base-200">
            {#each Object.entries(skills) as [categoria, items]}
                <div class="p-6 sm:p-8 hover:bg-base-200/40 transition-colors">
                    <p class="text-xs sm:text-sm uppercase tracking-widest text-base-content/60 font-mono mb-5 pb-4 border-b border-base-200">
                        {categoria}
                    </p>
                    <ul class="flex flex-col gap-3">
                        {#each items as skill}
                            <li class="flex items-center gap-3 text-sm sm:text-base text-base-content/80 hover:text-base-content transition-colors">
                                <i class="{skill.icon} w-5 text-center text-base-content/40"></i>
                                {skill.name}
                            </li>
                        {/each}
                    </ul>
                </div>
            {/each}
        </div>

        <!-- Idiomas -->
        <div class="mt-8">
            <h2 class="text-xl sm:text-2xl font-bold mb-6">Idiomas</h2>
            <div class="grid grid-cols-1 sm:grid-cols-3 divide-x-0 sm:divide-x divide-y sm:divide-y-0 divide-base-200 border border-base-200">
                {#each [["Español", "Nativo"], ["Inglés", "Intermedio"], ["Q'eqchi'", "Nativo"]] as [lang, nivel]}
                    <div class="px-6 py-5 hover:bg-base-200/40 transition-colors flex items-center justify-between">
                        <span class="text-sm sm:text-base text-base-content">{lang}</span>
                        <span class="text-xs sm:text-sm font-mono text-base-content/60 uppercase tracking-wider">
                            {nivel}
                        </span>
                    </div>
                {/each}
            </div>
        </div>

        <!-- CTA -->
        <div class="mt-12 sm:mt-16 flex flex-wrap gap-4">
            <a href="/proyectos" class="btn btn-neutral btn-sm rounded-none px-6">
                Ver Proyectos →
            </a>
            <a href="/contacto" class="btn btn-outline btn-sm rounded-none px-6">
                Contactar
            </a>
        </div>
    </div>
</section>
