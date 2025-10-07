import { defineConfig } from 'vite';
import tailwindcss from '@tailwindcss/postcss';

export default defineConfig({
  build: {
    manifest: true,
    outDir: 'public/build',
    emptyOutDir: true,
    rollupOptions: {
      input: './assets/main.js',
    },
  },
  css: {
    postcss: {
      plugins: [tailwindcss()],
    },
  },
});
