# Fill in the values after # =>
#
$title    = "Ruby Variables"
@subtitle = "Where do they come from?"
presenter = "@tooky"
 
class Presentation
  @@length = "10 min"
  @style = "Code"
 
  def self.subtitle
    @subtitle
  end
 
  def self.style
    @style
  end
 
  def self.the_presenter
    presenter = presenter || "https://github.com/tooky"
    presenter
  end
 
  def self.length
    @@length
  end
 
  def self.title
    $title
  end
 
  def initialize(subtitle)
    @subtitle = subtitle
  end
 
  def the_presenter
    presenter = presenter || "Steve Tooke"
    presenter
  end
 
  def style
    @style
  end
 
  def length
    @@length
  end
 
  def title
    $title
  end
end
 
class Talk < Presentation
  @@length = "25 min"
  @style   = "Keynote"
end
 
a_presentation = Presentation.new("An instance has this effect.")
a_talk         = Talk.new("What happens with inheritance?")
 
$title    # => "Ruby Variables"
@subtitle # => "Where do they come from?"
presenter # =>"@tooky"
@style    # => Nil
 
Presentation.style         # => "Code"
Presentation.length        # => "25 min"
Presentation.the_presenter # => "https://github.com/tooky"
 
Talk.style         # => "Keynote"
Talk.length        # => "25 min"
Talk.the_presenter # => "https://github.com/tooky"
 
a_presentation.style         # => nil
a_presentation.length        # => "25 min"
a_presentation.the_presenter # => "Steve Tooke"
 
a_talk.style         # => nil
a_talk.length        # =>"25 min"
a_talk.the_presenter # => "Steve Tooke"