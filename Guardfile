directories %w(spec lib)
notification :growl

guard :rspec, cmd: "bundle exec rspec" do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^spec/support/(.+)\.rb$}) { "spec" }
  watch('spec/spec_helper.rb')  { "spec" }

  watch(%r{^lib/slice_by_indexes/extention/array.rb$}) { |m| "spec/extention/array_spec.rb" }
end

