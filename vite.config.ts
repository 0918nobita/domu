import path from 'node:path';
import { defineConfig } from 'vite';

export default defineConfig({
  build: {
    minify: false,
    lib: {
      formats: ['es'],
      entry: [
        'ts/document_ffi.mts',
        'ts/event_target_ffi.mts',
        'ts/html_anchor_element_ffi.mts',
        'ts/node_ffi.mts',
        'ts/node_list_ffi.mts',
        'ts/nullable_ffi.mts',
      ],
    },
    rollupOptions: {
      output: {
        entryFileNames: '[name].mjs',
      },
      external: ['../gleam_stdlib/gleam/option.mjs'],
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
          return path.join("..", source.slice(2));
        }
      }
    }
  ]
});
