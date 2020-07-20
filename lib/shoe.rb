class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand
    BRANDS.collect do |new_brand|
      BRANDS.!include?(new_brand)
      BRANDS << new_brand
    end  
  end
  
  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
  
  # def unique_brands(brand)
  #   if BRANDS.include?(brand)
  #     BRANDS.pop
  #     return BRANDS
  #   end
  # end

end