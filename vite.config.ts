import path from 'node:path';
import { defineConfig } from 'vite';

export default defineConfig({
  build: {
    minify: false,
    lib: {
      formats: ['es'],
      entry: [
        'ts/console.ts',
        'ts/document.ts',
        'ts/event_target.ts',
        'ts/event.ts',
        'ts/html_anchor_element.ts',
        'ts/iterator_compat.ts',
        'ts/node_list.ts',
        'ts/node.ts',
        'ts/nullable.ts',
        'ts/window.ts',
      ],
    },
    rollupOptions: {
      output: {
        entryFileNames: '[name].mjs',
      },
      external: [
        '../gleam_stdlib/gleam/iterator.mjs',
        '../gleam_stdlib/gleam/option.mjs',
      ],
    },
    outDir: 'src',
    emptyOutDir: false,
  },
  plugins: [
    {
      name: 'relative-path-alias',
      enforce: 'pre',
      resolveId(source, _importer) {
        if (source.startsWith('@/')) {
          return path.join('..', source.slice(2));
        }
      },
    },
  ],
});
