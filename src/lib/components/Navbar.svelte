<script>
    import { page } from "$app/stores"
    import { onMount } from "svelte"

    let isOpen = false
    let isDark = false

    const links = {
        Experiencia: "/experiencia",
        Habilidades: "/habilidades",
        Proyectos: "/proyectos",
        Contacto: "/contacto",
    }

    $: currentPath = $page.url.pathname

    onMount(() => {
        // Cargar tema guardado o usar el tema por defecto (oscuro)
        const savedTheme = localStorage.getItem("theme") || "dark"
        isDark = savedTheme === "dark"
        document.documentElement.setAttribute("data-theme", savedTheme)
    })

    function toggleTheme() {
        isDark = !isDark
        const theme = isDark ? "dark" : "light"
        document.documentElement.setAttribute("data-theme", theme)
        localStorage.setItem("theme", theme)
    }
</script>

<nav class="navbar fixed top-0 w-full z-50 px-4 sm:px-6 py-3 sm:py-4 bg-neutral text-neutral-content border-b border-neutral-content/10 shadow-sm">
    <div class="max-w-6xl mx-auto w-full flex items-center justify-between">
        <!-- Logo -->
        <a href="/" class="flex items-center gap-1 group">
            <span class="font-mono text-xs sm:text-sm text-primary">&lt;</span>
            <span
                class="font-bold text-neutral-content text-base sm:text-lg tracking-tight group-hover:text-primary transition-colors duration-200">
                miguemi
            </span>
            <span class="font-mono text-xs sm:text-sm text-primary">/&gt;</span>
        </a>

        <!-- Desktop links -->
        <ul class="hidden md:flex items-center gap-6 lg:gap-8">
            {#each Object.entries(links) as [label, path]}
                <li>
                    <a
                        href={path}
                        class="text-xs lg:text-sm font-medium tracking-wide transition-colors duration-200 hover:text-primary relative group
                               {currentPath === path || (currentPath === '/' && path === '/')
                            ? 'text-primary'
                            : 'text-neutral-content/70'}">
                        {label}
                        <span
                            class="absolute -bottom-1 left-0 w-0 h-px bg-primary transition-all duration-300 group-hover:w-full {currentPath === path ? 'w-full' : ''}">
                        </span>
                    </a>
                </li>
            {/each}
        </ul>

        <!-- CTA -->
        <div class="hidden md:flex items-center gap-3 lg:gap-4">
            <!-- Theme Toggle -->
            <button
                on:click={toggleTheme}
                class="p-2 text-neutral-content/60 hover:text-primary transition-colors duration-200"
                aria-label="Cambiar tema">
                {#if isDark}
                    <i class="fa-solid fa-sun text-lg"></i>
                {:else}
                    <i class="fa-solid fa-moon text-lg"></i>
                {/if}
            </button>
            
            <span class="flex items-center gap-2 text-[10px] lg:text-xs text-neutral-content/60">
                <span class="inline-block w-2 h-2 rounded-full bg-green-500 animate-pulse"></span>
                <span class="hidden lg:inline">Disponible</span>
            </span>
            <a
                href="/cvMiguel.pdf"
                target="_blank"
                class="inline-flex items-center gap-2 px-3 lg:px-4 py-1.5 lg:py-2 text-xs lg:text-sm font-semibold
                       border border-primary text-primary bg-transparent
                       hover:bg-primary hover:text-neutral transition-all duration-200 rounded-md">
                <i class="fa-solid fa-download text-xs"></i>
                <span class="hidden lg:inline">CV</span>
            </a>
        </div>

        <!-- Mobile hamburger & theme toggle -->
        <div class="md:hidden flex items-center gap-2">
            <button
                on:click={toggleTheme}
                class="p-2 text-neutral-content/60 hover:text-primary transition-colors duration-200"
                aria-label="Cambiar tema">
                {#if isDark}
                    <i class="fa-solid fa-sun text-lg"></i>
                {:else}
                    <i class="fa-solid fa-moon text-lg"></i>
                {/if}
            </button>
            <button
                class="p-2 text-primary"
                on:click={() => (isOpen = !isOpen)}
                aria-label="Menu">
                <i class="fa-solid {isOpen ? 'fa-xmark' : 'fa-bars'} text-lg sm:text-xl"></i>
            </button>
        </div>
    </div>

    <!-- Mobile menu -->
    {#if isOpen}
        <div
            class="md:hidden absolute top-full left-0 w-full py-4 px-4 sm:px-6 flex flex-col gap-2 bg-neutral border-b border-neutral-content/10 shadow-lg">
            {#each Object.entries(links) as [label, path]}
                <a
                    href={path}
                    class="text-sm sm:text-base font-medium py-2 sm:py-3 border-b border-neutral-content/10 text-neutral-content/70 hover:text-primary transition-colors"
                    on:click={() => (isOpen = false)}>
                    {label}
                </a>
            {/each}
            <a
                href="/cvMiguel.pdf"
                target="_blank"
                class="inline-flex items-center justify-center gap-2 px-4 py-2 mt-2 text-sm font-semibold
                       border border-primary text-primary bg-transparent
                       hover:bg-primary hover:text-neutral transition-all duration-200 rounded-md">
                <i class="fa-solid fa-download text-xs"></i>
                Descargar CV
            </a>
        </div>
    {/if}
</nav>
