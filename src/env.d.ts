/// <reference types="astro/client" />

declare module 'cloudflare:workers' {
  export const env: {
    DB: import('@cloudflare/workers-types').D1Database;
    ADMIN_API_KEY: string;
    ASSETS: import('@cloudflare/workers-types').Fetcher;
  };
}
