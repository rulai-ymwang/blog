module.exports = {
  base: '/blog/',
  themeConfig: {
    logo: 'logo.png',
    nav: [
      { text: 'Storybook', link: 'https://yaomiao.wang/my-storybook/' },
    ],
  },
  head: [['link', { rel: 'icon', href: '/favicon.ico' }]],
  markdown: {
    lineNumbers: false,
  },
};
