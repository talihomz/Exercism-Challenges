class SpaceAge

    EARTH_AGE_MAPPING = {
        "mercury" => 0.2408467,
        "venus" => 0.61519726,
        "mars" => 1.8808158,
        "jupiter" => 11.862615,
        "saturn" => 29.447498,
        "uranus" => 84.016846,
        "neptune" => 164.79132
    }

    def initialize(inputAgeInSeconds)
        @earthAge = inputAgeInSeconds / 31557600.0;
    end

    def on_mercury
        return getFormatedResult(@earthAge / EARTH_AGE_MAPPING["mercury"]);
    end
    
    def on_venus
        return getFormatedResult(@earthAge / EARTH_AGE_MAPPING["venus"]);
    end
    
    def on_earth
        return getFormatedResult(@earthAge);
    end
    
    def on_mars
        return getFormatedResult(@earthAge / EARTH_AGE_MAPPING["mars"]);
    end
    
    def on_jupiter
        return getFormatedResult(@earthAge / EARTH_AGE_MAPPING["jupiter"]);
    end
    
    def on_saturn
        return getFormatedResult(@earthAge / EARTH_AGE_MAPPING["saturn"]);
    end
    
    def on_uranus
        return getFormatedResult(@earthAge / EARTH_AGE_MAPPING["uranus"]);
    end
    
    def on_neptune
        return getFormatedResult(@earthAge / EARTH_AGE_MAPPING["neptune"]);
    end


    def getFormatedResult(input)
        return input.round(2);
    end
end