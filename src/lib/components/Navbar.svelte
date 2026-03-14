<script>
    import { page } from "$app/stores"

    let isOpen = false

    const links = {
        Inicio: "/",
        Proyectos: "/#proyectos",
        Habilidades: "/#habilidades",
        Contacto: "/#contacto",
    }

    $: currentPath = $page.url.pathname
</script>

<nav class="navbar fixed top-0 w-full z-50 px-6 py-4">
    <div class="max-w-6xl mx-auto w-full flex items-center justify-between">
        <!-- Logo -->
        <a href="/" class="flex items-center gap-1 group">
            <span class="font-mono text-sm text-primary">&lt;</span>
            <span
                class="font-bold text-base-content text-lg tracking-tight group-hover:text-primary transition-colors duration-200">
                miguemi
            </span>
            <span class="font-mono text-sm text-primary">/&gt;</span>
        </a>

        <!-- Desktop links -->
        <ul class="hidden md:flex items-center gap-8">
            {#each Object.entries(links) as [label, path]}
                <li>
                    <a
                        href={path}
                        class="text-sm font-medium tracking-wide transition-colors duration-200 hover:text-primary relative group
                               {currentPath === path
                            ? 'text-primary'
                            : 'text-base-content/50'}">
                        {label}
                        <span
                            class="absolute -bottom-1 left-0 w-0 h-px bg-primary transition-all duration-300 group-hover:w-full">
                        </span>
                    </a>
                </li>
            {/each}
        </ul>

        <!-- CTA -->
        <a
            href="/cv_Manuel_Miguel_Miguel.pdf"
            target="_blank"
            class="hidden md:inline-flex items-center gap-2 px-4 py-2 text-sm font-semibold
                   border border-primary text-primary bg-transparent
                   hover:bg-primary/10 hover:scale-105 transition-all duration-200 rounded-md">
            <i class="fa-solid fa-download text-xs"></i>
            CV
        </a>

        <!-- Mobile hamburger -->
        <button
            class="md:hidden p-2 text-primary"
            on:click={() => (isOpen = !isOpen)}
            aria-label="Menu">
            <i class="fa-solid {isOpen ? 'fa-xmark' : 'fa-bars'} text-xl"></i>
        </button>
    </div>

    <!-- Mobile menu -->
    {#if isOpen}
        <div
            class="md:hidden absolute top-full left-0 w-full py-4 px-6 flex flex-col gap-2 bg-base-100/97 backdrop-blur-md border-b border-base-200">
            {#each Object.entries(links) as [label, path]}
                <a
                    href={path}
                    class="text-base font-medium py-2 border-b border-base-200 text-base-content/50 hover:text-primary transition-colors"
                    on:click={() => (isOpen = false)}>
                    {label}
                </a>
            {/each}
        </div>
    {/if}
</nav>
