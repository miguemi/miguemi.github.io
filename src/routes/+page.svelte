<script>
    import Card from "$lib/components/Card.svelte"

    const skills = {
        Lenguajes: [
            { name: "Python", icon: "fa-brands fa-python" },
            { name: "JavaScript", icon: "fa-brands fa-js" },
            { name: "C#", icon: "fa-solid fa-code" },
            { name: "PHP", icon: "fa-brands fa-php" },
        ],
        Frameworks: [
            { name: "Django", icon: "fa-solid fa-layer-group" },
            { name: "Angular", icon: "fa-brands fa-angular" },
            { name: "NestJS", icon: "fa-solid fa-server" },
            { name: "Laravel", icon: "fa-brands fa-laravel" },
            { name: "Symfony", icon: "fa-solid fa-cubes" },
        ],
        "Bases de datos": [
            { name: "SQL Server", icon: "fa-solid fa-database" },
            { name: "PostgreSQL", icon: "fa-solid fa-database" },
        ],
        Otros: [
            { name: "Nix / Linux", icon: "fa-brands fa-linux" },
            { name: "Git / GitHub", icon: "fa-brands fa-github" },
            { name: "QA Automation", icon: "fa-solid fa-vial" },
        ],
    }

    const proyectos = [
        {
            title: "Portfolio Personal",
            description:
                "Sitio web personal construido con SvelteKit y TailwindCSS. Muestra mi experiencia, proyectos y habilidades como Ingeniero en Sistemas.",
            tags: ["SvelteKit", "TailwindCSS", "DaisyUI"],
            githubUrl: "https://github.com/miguemi",
            liveUrl: "https://miguemi.github.io",
        },
        {
            title: "Sistema QA Automation",
            description:
                "Implementación de pruebas automatizadas para aplicaciones web en Finanssoreal S.A. Mejora de la calidad del software mediante testing continuo.",
            tags: ["QA", "Automation", "Testing"],
            githubUrl: "https://github.com/miguemi",
        },
        {
            title: "API REST Fullstack",
            description:
                "Desarrollo de backend con NestJS y frontend con Angular para gestión de datos empresariales. Integración con bases de datos PostgreSQL.",
            tags: ["NestJS", "Angular", "PostgreSQL"],
            githubUrl: "https://github.com/miguemi",
        },
        {
            title: "Aplicación Django",
            description:
                "Sistema web desarrollado con Django y Python para gestión interna. Incluye autenticación, panel de administración y API REST.",
            tags: ["Django", "Python", "SQL Server"],
            githubUrl: "https://github.com/miguemi",
        },
    ]

    const experiencia = [
        {
            empresa: "Finanssoreal S.A",
            rol: "QA Manual & Automation + Programador Fullstack",
            periodo: "2024 — 2025",
            descripcion:
                "Desarrollo fullstack y aseguramiento de calidad de software. Implementación de pruebas automáticas y desarrollo de nuevas funcionalidades.",
            lugar: "Cobán, Alta Verapaz",
        },
        {
            empresa: "Departamento de IT",
            rol: "Técnico en Sistemas",
            periodo: "2019 — 2021",
            descripcion:
                "Soporte técnico y mantenimiento de infraestructura tecnológica en el Tribunal Eclesiástico y Residencia Estudiantil.",
            lugar: "Cobán, Alta Verapaz",
        },
    ]
</script>

<svelte:head>
    <title>Miguemi</title>
    <meta
        name="description"
        content="Portfolio de Manuel Miguel Miguel, Ingeniero en Sistemas especializado en desarrollo fullstack." />
</svelte:head>

<!-- NAV -->
<div class="navbar bg-gray-200 fixed top-0 z-50 px-8">
    <div class="navbar-start">
        <span class="text-xl font-bold">MIGUEMI</span>
    </div>
    <div class="navbar-center hidden lg:flex">
        <ul
            class="menu menu-horizontal gap-1 text-xs uppercase tracking-widest">
            <li>
                <a
                    href="#experiencia"
                    class="text-base-content/50 hover:text-base-content">
                    Experiencia
                </a>
            </li>
            <li>
                <a
                    href="#habilidades"
                    class="text-base-content/50 hover:text-base-content">
                    Habilidades
                </a>
            </li>
            <li>
                <a
                    href="#proyectos"
                    class="text-base-content/50 hover:text-base-content">
                    Proyectos
                </a>
            </li>
            <li>
                <a
                    href="#contacto"
                    class="text-base-content/50 hover:text-base-content">
                    Contacto
                </a>
            </li>
        </ul>
    </div>
    <div class="navbar-end">
        <span class="flex items-center gap-2 text-xs text-base-content/40">
            <span class="inline-block w-2 h-2 rounded-full bg-green-500"></span>
            Disponible
        </span>
    </div>
</div>

<!-- HERO -->
<section class="min-h-screen flex items-center pt-20 px-8 lg:px-16">
    <div
        class="max-w-6xl mx-auto w-full grid grid-cols-1 lg:grid-cols-2 gap-16 items-center">
        <!-- Texto -->
        <div class="flex flex-col gap-6">
            <div class="flex items-center gap-3">
                <div class="w-8 h-px bg-base-content/30"></div>
                <span
                    class="text-xs uppercase tracking-widest text-base-content/40">
                    Ingeniero en Sistemas
                </span>
            </div>

            <h1
                class="text-6xl lg:text-8xl font-bold leading-none tracking-tight">
                Manuel
                <br />
                <span class="text-base-content/25 italic font-normal">
                    Miguel.
                </span>
            </h1>

            <div
                class="border-l-2 border-base-content/15 pl-4 flex flex-col gap-1">
                <span
                    class="text-xs uppercase tracking-widest text-base-content/40">
                    Desarrollo Fullstack
                </span>
                <span
                    class="text-xs uppercase tracking-widest text-base-content/40">
                    QA &amp; Automation
                </span>
                <span
                    class="text-xs uppercase tracking-widest text-base-content/40">
                    MSc. Seguridad Informática
                </span>
            </div>

            <p
                class="text-base text-base-content/50 leading-relaxed max-w-sm font-light">
                Construyo software robusto y con propósito. Apasionado por la
                tecnología, la calidad y los sistemas bien diseñados. Basado en
                Cobán, Guatemala.
            </p>

            <div class="flex gap-3 flex-wrap">
                <a
                    href="#proyectos"
                    class="btn btn-neutral btn-sm rounded-none px-6">
                    Ver trabajo →
                </a>
                <a
                    href="#contacto"
                    class="btn btn-outline btn-sm rounded-none px-6">
                    Hablemos
                </a>
            </div>
        </div>

        <!-- Avatar -->
        <div class="flex justify-center lg:justify-end">
            <div class="relative">
                <div class="w-64 h-80 border border-base-300 overflow-hidden">
                    <img
                        src="/images/mmm.jpg"
                        alt="Manuel Miguel"
                        class="w-full h-full object-cover object-top" />
                </div>
                <div
                    class="badge badge-neutral rounded-none absolute -bottom-3 -right-3 py-3 px-4 text-xs font-normal whitespace-nowrap">
                    🎓 MSc. Seguridad Informática
                </div>
            </div>
        </div>
    </div>
</section>

<!-- EXPERIENCIA -->
<section class="px-8 lg:px-16 py-24 border-t border-base-200" id="experiencia">
    <div class="max-w-6xl mx-auto">
        <div class="flex items-baseline gap-4 mb-14">
            <span
                class="text-xs text-base-content/30 tracking-widest font-mono">
                01
            </span>
            <h2 class="text-3xl font-bold tracking-tight">Experiencia</h2>
            <div class="flex-1 h-px bg-base-200"></div>
        </div>

        <div class="divide-y divide-base-200">
            {#each experiencia as exp}
                <div
                    class="grid grid-cols-1 lg:grid-cols-[180px_1fr] gap-4 lg:gap-12 py-8">
                    <div class="flex flex-col gap-1 pt-1">
                        <span class="text-xs font-mono text-base-content/45">
                            {exp.periodo}
                        </span>
                        <span class="text-xs font-mono text-base-content/30">
                            {exp.lugar}
                        </span>
                    </div>
                    <div class="flex flex-col gap-2">
                        <span
                            class="text-xs uppercase tracking-widest text-base-content/35 font-mono">
                            {exp.empresa}
                        </span>
                        <h3 class="text-xl font-semibold tracking-tight">
                            {exp.rol}
                        </h3>
                        <p
                            class="text-sm text-base-content/50 leading-relaxed font-light">
                            {exp.descripcion}
                        </p>
                    </div>
                </div>
            {/each}
        </div>
    </div>
</section>

<!-- HABILIDADES -->
<section class="px-8 lg:px-16 py-24 border-t border-base-200" id="habilidades">
    <div class="max-w-6xl mx-auto">
        <div class="flex items-baseline gap-4 mb-14">
            <span
                class="text-xs text-base-content/30 tracking-widest font-mono">
                02
            </span>
            <h2 class="text-3xl font-bold tracking-tight">Habilidades</h2>
            <div class="flex-1 h-px bg-base-200"></div>
        </div>

        <div
            class="grid grid-cols-2 lg:grid-cols-4 divide-x divide-y divide-base-200 border border-base-200">
            {#each Object.entries(skills) as [categoria, items]}
                <div class="p-6 hover:bg-base-200/40 transition-colors">
                    <p
                        class="text-xs uppercase tracking-widest text-base-content/35 font-mono mb-5 pb-4 border-b border-base-200">
                        {categoria}
                    </p>
                    <ul class="flex flex-col gap-3">
                        {#each items as skill}
                            <li
                                class="flex items-center gap-3 text-sm text-base-content/55 hover:text-base-content transition-colors">
                                <i
                                    class="{skill.icon} w-4 text-center text-base-content/20">
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
            class="grid grid-cols-3 divide-x divide-base-200 border border-base-200 border-t-0">
            {#each [["Español", "Nativo"], ["Inglés", "Intermedio"], ["Q'eqchi'", "Nativo"]] as [lang, nivel]}
                <div
                    class="px-6 py-4 hover:bg-base-200/40 transition-colors flex items-center justify-between">
                    <span class="text-sm">{lang}</span>
                    <span
                        class="text-xs font-mono text-base-content/35 uppercase tracking-wider">
                        {nivel}
                    </span>
                </div>
            {/each}
        </div>
    </div>
</section>

<!-- PROYECTOS -->
<section class="px-8 lg:px-16 py-24 border-t border-base-200" id="proyectos">
    <div class="max-w-6xl mx-auto">
        <div class="flex items-baseline gap-4 mb-14">
            <span
                class="text-xs text-base-content/30 tracking-widest font-mono">
                03
            </span>
            <h2 class="text-3xl font-bold tracking-tight">Proyectos</h2>
            <div class="flex-1 h-px bg-base-200"></div>
        </div>

        <div
            class="grid grid-cols-1 lg:grid-cols-2 divide-x divide-y divide-base-200 border border-base-200">
            {#each proyectos as proyecto, i}
                <a
                    href={proyecto.githubUrl}
                    target="_blank"
                    class="p-8 flex flex-col gap-3 hover:bg-base-200/40 transition-colors group no-underline">
                    <div class="flex justify-between items-start">
                        <span class="text-xs font-mono text-base-content/20">
                            0{i + 1}
                        </span>
                        <i
                            class="fa-solid fa-arrow-up-right text-xs text-base-content/20 group-hover:text-base-content group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-all">
                        </i>
                    </div>
                    <h3 class="text-xl font-semibold tracking-tight">
                        {proyecto.title}
                    </h3>
                    <p
                        class="text-sm text-base-content/45 leading-relaxed font-light">
                        {proyecto.description}
                    </p>
                    <div class="flex flex-wrap gap-2 mt-auto pt-2">
                        {#each proyecto.tags as tag}
                            <span
                                class="text-xs font-mono text-base-content/35 border border-base-content/10 px-2 py-1">
                                {tag}
                            </span>
                        {/each}
                    </div>
                </a>
            {/each}
        </div>

        <div class="flex justify-center mt-8">
            <a
                href="https://github.com/miguemi"
                target="_blank"
                class="btn btn-outline btn-sm rounded-none gap-2">
                <i class="fa-brands fa-github"></i>
                Ver más en GitHub
            </a>
        </div>
    </div>
</section>

<!-- CONTACTO -->
<section class="px-8 lg:px-16 py-24 border-t border-base-200" id="contacto">
    <div class="max-w-6xl mx-auto">
        <div class="flex items-baseline gap-4 mb-14">
            <span
                class="text-xs text-base-content/30 tracking-widest font-mono">
                04
            </span>
            <h2 class="text-3xl font-bold tracking-tight">Contacto</h2>
            <div class="flex-1 h-px bg-base-200"></div>
        </div>

        <div class="max-w-2xl">
            <h2
                class="text-4xl lg:text-5xl font-bold tracking-tight leading-tight mb-4">
                ¿Tienes un proyecto
                <br />
                <span class="text-base-content/20 italic font-normal">
                    en mente?
                </span>
            </h2>
            <p
                class="text-sm text-base-content/45 leading-relaxed font-light mb-10">
                Estoy disponible para nuevas oportunidades y colaboraciones. No
                dudes en escribirme.
            </p>

            <div class="divide-y divide-base-200 border-y border-base-200">
                <a
                    href="mailto:manuelmiguel80@hotmail.com"
                    class="flex items-center justify-between py-5 hover:pl-3 transition-all group no-underline">
                    <div class="flex items-center gap-4">
                        <div
                            class="w-9 h-9 border border-base-300 flex items-center justify-center group-hover:border-base-content transition-colors">
                            <i
                                class="fa-solid fa-envelope text-sm text-base-content/30 group-hover:text-base-content transition-colors">
                            </i>
                        </div>
                        <div>
                            <span
                                class="block text-xs font-mono uppercase tracking-widest text-base-content/30">
                                Email
                            </span>
                            <span
                                class="block text-sm text-base-content/60 group-hover:text-base-content transition-colors">
                                manuelmiguel80@hotmail.com
                            </span>
                        </div>
                    </div>

                    <i
                        class="fa-solid fa-arrow-up-right text-xs text-base-content/15 group-hover:text-base-content group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-all">
                    </i>
                </a>
                <a
                    href="tel:+50231247397"
                    class="flex items-center justify-between py-5 hover:pl-3 transition-all group no-underline">
                    <div class="flex items-center gap-4">
                        <div
                            class="w-9 h-9 border border-base-300 flex items-center justify-center group-hover:border-base-content transition-colors">
                            <i
                                class="fa-solid fa-phone text-sm text-base-content/30 group-hover:text-base-content transition-colors">
                            </i>
                        </div>
                        <div>
                            <span
                                class="block text-xs font-mono uppercase tracking-widest text-base-content/30">
                                Teléfono
                            </span>
                            <span
                                class="block text-sm text-base-content/60 group-hover:text-base-content transition-colors">
                                +502 3124 7397
                            </span>
                        </div>
                    </div>
                    <i
                        class="fa-solid fa-arrow-up-right text-xs text-base-content/15 group-hover:text-base-content group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-all">
                    </i>
                </a>

                <a
                    href="https://github.com/miguemi"
                    target="_blank"
                    class="flex items-center justify-between py-5 hover:pl-3 transition-all group no-underline">
                    <div class="flex items-center gap-4">
                        <div
                            class="w-9 h-9 border border-base-300 flex items-center justify-center group-hover:border-base-content transition-colors">
                            <i
                                class="fa-brands fa-github text-sm text-base-content/30 group-hover:text-base-content transition-colors">
                            </i>
                        </div>
                        <div>
                            <span
                                class="block text-xs font-mono uppercase tracking-widest text-base-content/30">
                                GitHub
                            </span>
                            <span
                                class="block text-sm text-base-content/60 group-hover:text-base-content transition-colors">
                                github.com/miguemi
                            </span>
                        </div>
                    </div>

                    <i
                        class="fa-solid fa-arrow-up-right text-xs text-base-content/15 group-hover:text-base-content group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-all">
                    </i>
                </a>
            </div>
        </div>
    </div>
</section>
