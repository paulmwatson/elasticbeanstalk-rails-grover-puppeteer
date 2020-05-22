# frozen_string_literal: true

Grover.configure do |config|
  config.use_png_middleware = true
  config.options = {
    viewport: {
      width: 1024,
      height: 768
    },
    prefer_css_page_size: true,
    emulate_media: 'screen',
    cache: true,
    timeout: 0,
    wait_until: 'domcontentloaded',
    full_page: true
  }
end
