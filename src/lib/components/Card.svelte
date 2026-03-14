<script>
    export let title = "Proyecto"
    export let description = "Descripción del proyecto"
    export let tags = []
    export let githubUrl = "#"
    export let liveUrl = ""
    export let imageSrc = ""
    export let featured = false
</script>

<div
    class="card bg-base-200 border border-base-300 hover:border-primary/40 hover:-translate-y-1 hover:shadow-lg transition-all duration-200 h-full">
    <!-- Header visual -->
    <figure class="relative h-36 bg-base-300 overflow-hidden">
        {#if imageSrc}
            <img
                src={imageSrc}
                alt={title}
                class="w-full h-full object-cover opacity-70 hover:opacity-90 hover:scale-105 transition-all duration-300" />
        {:else}
            <div class="w-full h-full flex items-center justify-center">
                <i class="fa-solid fa-code text-4xl text-base-content/10"></i>
            </div>
        {/if}
        {#if featured}
            <span class="badge badge-outline badge-sm absolute top-2 right-2">
                ⭐ Destacado
            </span>
        {/if}
    </figure>

    <!-- Body -->
    <div class="card-body p-5 gap-3 flex flex-col flex-1">
        <div class="flex items-start justify-between gap-3">
            <h3 class="font-bold text-base-content leading-snug">{title}</h3>
            <div class="flex gap-3 shrink-0 mt-0.5">
                {#if githubUrl}
                    <a
                        href={githubUrl}
                        target="_blank"
                        rel="noopener"
                        title="GitHub"
                        class="text-base-content/30 hover:text-base-content transition-colors text-base">
                        <i class="fa-brands fa-github"></i>
                    </a>
                {/if}
                {#if liveUrl}
                    <a
                        href={liveUrl}
                        target="_blank"
                        rel="noopener"
                        title="Ver en vivo"
                        class="text-base-content/30 hover:text-base-content transition-colors text-base">
                        <i class="fa-solid fa-arrow-up-right-from-square"></i>
                    </a>
                {/if}
            </div>
        </div>

        <p
            class="text-sm text-base-content/50 leading-relaxed font-light flex-1">
            {description}
        </p>

        {#if tags.length > 0}
            <div class="flex flex-wrap gap-1.5 mt-auto pt-2">
                {#each tags as tag}
                    <span
                        class="text-xs font-mono text-base-content/40 border border-base-content/10 px-2 py-0.5">
                        {tag}
                    </span>
                {/each}
            </div>
        {/if}
    </div>
</div>
