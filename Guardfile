# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'cucumber', cli: '--drb' do
  # Features
  watch(%r{^features/.+\.feature$})
  # App
  # watch(%r{^app/controllers/.+$})
  watch(%r{^app/.+$})
  # Factories
  watch(%r{^test/factories/.+$})
  watch(%r{^features/support/.+$})          { 'features' }
  watch(%r{^features/step_definitions/(.+)_steps\.rb$}) { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'features' }

end
