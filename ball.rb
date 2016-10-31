require 'yaml'

class Ball

  ANSWERS = YAML.load_file(File.join(__dir__, 'answers.yml'))

  def shake
    index = Random.rand(Ball::ANSWERS.length)
    puts "\e[#{color_effect(index)}m#{Ball::ANSWERS[index]}\e[0m"
  end

  def color_effect(index)
    case index
      when 0..4 then
        31
      when 5..9 then
        32
      when 10..14 then
        33
      when 14..19 then
        34
      else
        0
    end
  end

end