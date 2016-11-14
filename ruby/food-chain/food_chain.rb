class FoodChain

  def self.song
    @creatures = ["fly","spider","bird","cat","dog","goat","cow","horse"]
    song = []
    @creatures.each_with_index do|i,j|
      song << "I know an old lady who swallowed a #{i}.\n" + imagination(i) + process(i,j)
    end
    song.join("\n\n")+"\n"
  end

  def self.imagination(creature)
    case creature
    when "fly"
      ""
    when "spider"
      ""
    when "bird"
      "How absurd to swallow a bird!\n"
    when "cat"
      "Imagine that, to swallow a cat!\n"
    when "dog"
      "What a hog, to swallow a dog!\n"
    when "goat"
      "Just opened her throat and swallowed a goat!\n"
    when "cow"
      "I don't know how she swallowed a cow!\n"
    when "horse"
      ""
    end
  end

  def self.process(creature,index)
    rhym = []
    case creature
    when "fly"
      rhym << "I don't know why she swallowed the fly. Perhaps she'll die."
    when "spider"
      rhym << "It wriggled and jiggled and tickled inside her."
      rhym << swallow(creature,index-1)
    when "bird"
      rhym << "She swallowed the bird to catch the spider " + process(@creatures[index-1],index-1).gsub("It","that")
    when "cat"
      rhym << swallow(creature,index-1)
    when "dog"
      rhym << swallow(creature,index-1)
    when "goat"
      rhym << swallow(creature,index-1)
    when "cow"
      rhym << swallow(creature,index-1)
    when "horse"
      rhym << "She's dead, of course!"
    end
    rhym.join("\n")
  end
  
  def self.swallow(creature,index)
    "She swallowed the #{creature} to catch the #{@creatures[index]}.\n" + process(@creatures[index],index)
  end

end