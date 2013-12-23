if ENV['/usr/local/rvm/gems/ruby-2.0.0-p195@test1'] && ENV['/usr/local/rvm/gems/ruby-2.0.0-p195@test1'].include?('rvm')
  begin
    require 'rvm'
    RVM.use_from_path! File.dirname(File.dirname(__FILE__))
  rescue LoadError
    # RVM is unavailable at this point.
    raise "RVM ruby lib is currently unavailable."
  end
end
