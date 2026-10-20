// Renders cover.html to cover.png (1600x2560, standard e-book cover ratio).
const path = require('path');
const { chromium } = require('playwright');
(async () => {
  const browser = await chromium.launch();
  const page = await browser.newPage({ viewport: { width: 1600, height: 2560 } });
  await page.goto('file://' + path.resolve(__dirname, 'cover.html'));
  await page.screenshot({ path: path.resolve(__dirname, 'cover.png') });
  await browser.close();
})();
