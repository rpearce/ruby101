=begin
  So this is a supersweet multi-line comment.

  In your Terminal, open IRB from your
  ruby101/assignments/week1 folder and
  then require this file:

  $ irb
  #> load 'dinosaur_refactored.rb'

  This is the same as copy/pasting the
  code below in to IRB.

  NOTE: execute 1 line at a time.
  NOTE: The #=> are what SHOULD be returned

  scary_dinosaur = Dinosaur.new('Velociraptor', 'humans')
    #=> #<Dinosaur:0x007f89b1fd88a0 @type="Velociraptor", @favorite_snack="humans", @meals_eaten_count=10>
  scary_dinosaur.type
    #=> "Velociraptor"
  scary_dinosaur.favorite_snack
    #=> "humans"
  scary_dinosaur.meals_eaten_count
    #=> 10
  scary_dinosaur.snack
    #=> 11
  scary_dinosaur.meals_eaten_count == 11
    #=> true
  scary_dinosaur.favorite_snack = 'lamb'
    #=> "lamb"
  scary_dinosaur.favorite_snack == 'lamb'
    #=> true
  scary_dinosaur.snack
    #=> 12
  scary_dinosaur.meals_eaten_count == 12
    #=> true
=end

class Dinosaur
  attr_accessor :type, :favorite_snack, :meals_eaten_count

  def initialize(type, favorite_snack)
    self.type = type
    self.favorite_snack = favorite_snack
    self.meals_eaten_count = 10
  end

  def snack
    self.meals_eaten_count += 1
  end
end

# Isn't this so much better?!
