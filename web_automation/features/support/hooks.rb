Before do |feature|
  Capybara.reset_sessions!
end

After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')

  if scenario.failed?
    report(scenario_name.downcase!, 'Failed')
  else
    report(scenario_name.downcase!, 'Pass')
  end
end
