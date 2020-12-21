require 'fileutils'

module Helper
  def report(file, result)
    path = "results/screenshots/test_#{result}"
    photo = "#{path}/#{file}.png"
    page.save_screenshot(photo)
    embed(photo, 'image/png', 'Click here')
  end
end
