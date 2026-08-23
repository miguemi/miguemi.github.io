<script>
    let nombre = ""
    let email = ""
    let mensaje = ""
    let enviando = false
    let estado = null // 'ok' | 'error' | null

    // Formulario configurado en https://formspree.io/
    const FORMSPREE_ENDPOINT = "https://formspree.io/f/xzepwlay"

    async function enviarFormulario(event) {
        event.preventDefault()
        enviando = true
        estado = null

        try {
            const response = await fetch(FORMSPREE_ENDPOINT, {
                method: "POST",
                headers: { Accept: "application/json" },
                body: new FormData(event.target),
            })

            if (response.ok) {
                estado = "ok"
                nombre = ""
                email = ""
                mensaje = ""
            } else {
                estado = "error"
            }
        } catch (err) {
            estado = "error"
        } finally {
            enviando = false
        }
    }
</script>

<svelte:head>
    <title>Contacto - Manuel Miguel</title>
    <meta
        name="description"
        content="Contacta a Manuel Miguel para oportunidades de desarrollo fullstack y consultoría en seguridad informática." />
</svelte:head>

<section class="px-4 sm:px-6 lg:px-16 py-24 sm:py-32 min-h-screen">
    <div class="max-w-4xl mx-auto">
        <!-- Breadcrumb -->
        <nav class="mb-8 text-sm">
            <a
                href="/"
                class="text-base-content/60 hover:text-primary transition-colors">
                Inicio
            </a>
            <span class="mx-2 text-base-content/40">/</span>
            <span class="text-base-content">Contacto</span>
        </nav>

        <div class="flex items-baseline gap-3 sm:gap-4 mb-10 sm:mb-14">
            <span
                class="text-[10px] sm:text-xs text-base-content/50 tracking-widest font-mono">
                05
            </span>
            <h1
                class="text-3xl sm:text-4xl lg:text-5xl font-bold tracking-tight">
                Contacto
            </h1>
            <div class="flex-1 h-px bg-base-200"></div>
        </div>

        <div class="mb-10">
            <h2
                class="text-3xl sm:text-4xl lg:text-5xl font-bold tracking-tight leading-tight mb-4">
                ¿Buscas un desarrollador
                <br />
                <span class="text-base-content/40 italic font-normal">
                    fullstack?
                </span>
            </h2>
            <p
                class="text-sm sm:text-base text-base-content/80 leading-relaxed font-light mb-8">
                Estoy disponible para oportunidades de desarrollo fullstack
            </p>
        </div>

        <!-- Formulario de contacto (Formspree) -->
        <form
            on:submit={enviarFormulario}
            class="flex flex-col gap-4 sm:gap-5 p-6 sm:p-8 border border-base-200 mb-12">
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 sm:gap-5">
                <div class="flex flex-col gap-2">
                    <label
                        for="name"
                        class="text-xs sm:text-sm font-mono uppercase tracking-widest text-base-content/60">
                        Nombre
                    </label>
                    <input
                        id="name"
                        name="name"
                        type="text"
                        required
                        bind:value={nombre}
                        class="input input-bordered rounded-none w-full text-sm sm:text-base"
                        placeholder="Tu nombre" />
                </div>
                <div class="flex flex-col gap-2">
                    <label
                        for="email"
                        class="text-xs sm:text-sm font-mono uppercase tracking-widest text-base-content/60">
                        Email
                    </label>
                    <input
                        id="email"
                        name="email"
                        type="email"
                        required
                        bind:value={email}
                        class="input input-bordered rounded-none w-full text-sm sm:text-base"
                        placeholder="tu@correo.com" />
                </div>
            </div>

            <div class="flex flex-col gap-2">
                <label
                    for="message"
                    class="text-xs sm:text-sm font-mono uppercase tracking-widest text-base-content/60">
                    Mensaje
                </label>
                <textarea
                    id="message"
                    name="message"
                    rows="5"
                    required
                    bind:value={mensaje}
                    class="textarea textarea-bordered rounded-none w-full text-sm sm:text-base"
                    placeholder="Cuéntame sobre tu proyecto u oportunidad...">
                </textarea>
            </div>

            <button
                type="submit"
                disabled={enviando}
                class="btn btn-neutral btn-sm rounded-none px-6 self-start gap-2">
                {#if enviando}
                    <span class="loading loading-spinner loading-xs"></span>
                    Enviando...
                {:else}
                    Enviar mensaje →
                {/if}
            </button>

            {#if estado === "ok"}
                <p class="text-sm text-success flex items-center gap-2">
                    <i class="fa-solid fa-circle-check"></i>
                    ¡Gracias! Tu mensaje fue enviado, te responderé pronto.
                </p>
            {:else if estado === "error"}
                <p class="text-sm text-error flex items-center gap-2">
                    <i class="fa-solid fa-circle-exclamation"></i>
                    Hubo un problema al enviar el mensaje. Intenta de nuevo o escríbeme
                    directamente a
                    <a href="mailto:miguemi41m@gmail.com" class="underline">
                        miguemi41m@gmail.com
                    </a>
                    .
                </p>
            {/if}
        </form>

        <div class="divide-y divide-base-200 border-y border-base-200">
            <a
                href="mailto:miguemi41m@gmail.com"
                class="flex items-center justify-between py-5 sm:py-6 hover:pl-2 sm:hover:pl-3 transition-all group no-underline">
                <div class="flex items-center gap-4">
                    <div
                        class="w-10 h-10 sm:w-12 sm:h-12 border border-base-300 flex items-center justify-center group-hover:border-primary transition-colors flex-shrink-0">
                        <i
                            class="fa-solid fa-envelope text-base sm:text-lg text-base-content/30 group-hover:text-primary transition-colors">
                        </i>
                    </div>
                    <div class="min-w-0">
                        <span
                            class="block text-xs sm:text-sm font-mono uppercase tracking-widest text-base-content/50">
                            Email
                        </span>
                        <span
                            class="block text-sm sm:text-base text-base-content/80 group-hover:text-primary transition-colors break-all">
                            miguemi41m@gmail.com
                        </span>
                    </div>
                </div>
                <i
                    class="fa-solid fa-arrow-up-right text-xs text-base-content/30 group-hover:text-primary group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-all flex-shrink-0 ml-2">
                </i>
            </a>

            <a
                href="https://linkedin.com/in/miguemi"
                target="_blank"
                rel="noopener noreferrer"
                class="flex items-center justify-between py-5 sm:py-6 hover:pl-2 sm:hover:pl-3 transition-all group no-underline">
                <div class="flex items-center gap-4">
                    <div
                        class="w-10 h-10 sm:w-12 sm:h-12 border border-base-300 flex items-center justify-center group-hover:border-primary transition-colors flex-shrink-0">
                        <i
                            class="fa-brands fa-linkedin text-base sm:text-lg text-base-content/30 group-hover:text-primary transition-colors">
                        </i>
                    </div>
                    <div class="min-w-0">
                        <span
                            class="block text-xs sm:text-sm font-mono uppercase tracking-widest text-base-content/50">
                            LinkedIn
                        </span>
                        <span
                            class="block text-sm sm:text-base text-base-content/80 group-hover:text-primary transition-colors break-all">
                            linkedin.com/in/miguemi
                        </span>
                    </div>
                </div>
                <i
                    class="fa-solid fa-arrow-up-right text-xs text-base-content/30 group-hover:text-primary group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-all flex-shrink-0 ml-2">
                </i>
            </a>

            <a
                href="tel:+50231247397"
                class="flex items-center justify-between py-5 sm:py-6 hover:pl-2 sm:hover:pl-3 transition-all group no-underline">
                <div class="flex items-center gap-4">
                    <div
                        class="w-10 h-10 sm:w-12 sm:h-12 border border-base-300 flex items-center justify-center group-hover:border-primary transition-colors flex-shrink-0">
                        <i
                            class="fa-solid fa-phone text-base sm:text-lg text-base-content/30 group-hover:text-primary transition-colors">
                        </i>
                    </div>
                    <div>
                        <span
                            class="block text-xs sm:text-sm font-mono uppercase tracking-widest text-base-content/50">
                            Teléfono
                        </span>
                        <span
                            class="block text-sm sm:text-base text-base-content/80 group-hover:text-primary transition-colors">
                            +502 3124 7397
                        </span>
                    </div>
                </div>
                <i
                    class="fa-solid fa-arrow-up-right text-xs text-base-content/30 group-hover:text-primary group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-all flex-shrink-0 ml-2">
                </i>
            </a>

            <a
                href="https://github.com/miguemi"
                target="_blank"
                class="flex items-center justify-between py-5 sm:py-6 hover:pl-2 sm:hover:pl-3 transition-all group no-underline">
                <div class="flex items-center gap-4">
                    <div
                        class="w-10 h-10 sm:w-12 sm:h-12 border border-base-300 flex items-center justify-center group-hover:border-primary transition-colors flex-shrink-0">
                        <i
                            class="fa-brands fa-github text-base sm:text-lg text-base-content/30 group-hover:text-primary transition-colors">
                        </i>
                    </div>
                    <div class="min-w-0">
                        <span
                            class="block text-xs sm:text-sm font-mono uppercase tracking-widest text-base-content/50">
                            GitHub
                        </span>
                        <span
                            class="block text-sm sm:text-base text-base-content/80 group-hover:text-primary transition-colors break-all">
                            github.com/miguemi
                        </span>
                    </div>
                </div>
                <i
                    class="fa-solid fa-arrow-up-right text-xs text-base-content/30 group-hover:text-primary group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-all flex-shrink-0 ml-2">
                </i>
            </a>
        </div>

        <!-- Disponibilidad -->
        <div class="mt-12 p-6 sm:p-8 border border-base-200 bg-base-200/30">
            <div class="flex items-center gap-3 mb-4">
                <span
                    class="inline-block w-3 h-3 rounded-full bg-green-500 animate-pulse">
                </span>
                <span class="text-sm font-semibold uppercase tracking-wider">
                    Disponible para nuevos proyectos
                </span>
            </div>
            <p class="text-sm text-base-content/70">
                Actualmente acepto proyectos de desarrollo fullstack y
                consultoría en seguridad informática.
            </p>
        </div>

        <!-- CTA -->
        <div class="mt-12 flex flex-wrap gap-4">
            <a href="/" class="btn btn-outline btn-sm rounded-none px-6">
                ← Volver al inicio
            </a>
            <a
                href="/cvMiguel.pdf"
                target="_blank"
                class="btn btn-neutral btn-sm rounded-none px-6 gap-2">
                <i class="fa-solid fa-download text-xs"></i>
                Descargar CV
            </a>
        </div>
    </div>
</section>
