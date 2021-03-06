class Student

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

    def full_name
      self.first_name + " " + self.last_name
    end

  def self.full_names
    self.all.map do |student|
      student.full_name
    end
  end

def add_boating_test(instructor, test_name, test_status)
  BoatingTest.new(self, test_name, test_status, instructor)
end

def self.find_student(full_name)
  self.all.find do |student|
    student.full_name == full_name
  end
end

end
