module Calculator
  class MetalUnit

    cattr_reader :metals_values

    @@metals_values ||= {} # e.g: {"Silver"=>17.0, "Gold"=>14450.0, "Iron"=>195.5}

    # Calculates the metal's value
    def self.set_metal_value(galaxy_units_array: required, metal: required, credits: required)
      numeral = GalaxyUnit.convert_to_numeral(galaxy_units_array: galaxy_units_array)
      @@metals_values[metal] = credits.to_i / numeral.to_f
    end

    def self.convert_to_numeral(galaxy_units_array: required , metal: required)
      (GalaxyUnit.convert_to_numeral(galaxy_units_array: galaxy_units_array) * @@metals_values[metal]).to_i
    end

  end
end
