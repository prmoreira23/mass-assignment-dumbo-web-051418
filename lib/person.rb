class Person
  #your code here
  # attr_accessor :name, :birthday, :hair_color,
  # :eye_color, :height, :weight, :handed,
  # :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length

  def initialize(args)
    args.each {|k, v|
      self.class.send(:attr_accessor, k)
      self.send(("#{k}="), v)
    }
  end
end
