import adapter from '@sveltejs/adapter-static'  // para github pages
import { vitePreprocess } from '@sveltejs/vite-plugin-svelte'

const config = {
  preprocess: vitePreprocess(),
  kit: {
    adapter: adapter({
      fallback: '404.html'
    })
  }
}

export default config
