class User < ActiveRecord::Base
  def hello
    self.name += 'でござる'
  end
end
