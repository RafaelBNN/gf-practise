concrete FoodEng of Food = {

    lincat Phrase, Quality, Item, Kind, QuestionPhrase, ExcusePhrase = {s : Str};

    lin
        Is item quality = {s = item.s ++ "is" ++ quality.s};
        This kind = {s = "this" ++ kind.s};
        That kind = {s = "that" ++ kind.s};
        QualityKind quality kind = {s = quality.s ++ kind.s};
        Cheese = {s = "cheese"};
        Bread = {s = "bread"};
        Wine = {s = "wine"};
        Chocolate = {s = "chocolate"};
        Very quality = {s = "very" ++ quality.s};
        Fresh = {s = "fresh"};
        Warm = {s = "warm"};
        Italian = {s = "italian"};
        Greek = {s = "greek"};
        Delicious = {s = "delicious"};
        QuestionIs item quality = {s = "is" ++ item.s ++ quality.s};
        ExcuseMe phrase = {s = "excuse me but" ++ phrase.s};
}