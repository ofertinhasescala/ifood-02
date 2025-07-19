/** @type {import('next').NextConfig} */
const nextConfig = {
  output: 'export',
  trailingSlash: true,
  images: {
    unoptimized: true
  },
  assetPrefix: process.env.NODE_ENV === 'production' ? '' : '',
  distDir: 'out',
  exportPathMap: async function () {
    return {
      '/': { page: '/' },
      '/dashboard': { page: '/dashboard' },
      '/saque': { page: '/saque' },
      '/desbloqueio': { page: '/desbloqueio' }
    }
  }
}

module.exports = nextConfig 