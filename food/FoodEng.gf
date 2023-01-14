concrete FoodEng of Food = {

    param Number = Sg | Pl;

    lincat Phrase, Quality, Item, Drink = {s : Str};
    lincat Kind = {s : Number => Str};

    lin
        Is item quality = {s = item.s ++ "is" ++ quality.s};
        -- This kind = {s = table {
        --     Sg => "this" ++ kind.s!Sg;
        --     Pl => "that" ++ kind.s!Pl
        -- }};
        -- This kind = {s = "this" ++ kind.s};
        -- That kind = {s = "that" ++ kind.s};
        QualityKind quality kind = {s = table {
            Sg => quality.s ++ kind.s!Sg;
            Pl => quality.s ++ kind.s!Pl
        }};
        Cheese = {s = table {
            Sg => "cheese";
            Pl => "cheeses"
        }};
        Bread = {s = table {
            Sg => "bread";
            Pl => "breads"
        }};
        Chocolate = {s = table {
            Sg => "chocolate";
            Pl => "chocolates"
        }};
        Wine = {s = "wine"};
        Very quality = {s = "very" ++ quality.s};
        VeryVery quality = {s = "very very" ++ quality.s};
        Fresh = {s = "fresh"};
        Warm = {s = "warm"};
        Italian = {s = "italian"};
        Greek = {s = "greek"};
        Delicious = {s = "delicious" | "exquisit" | "tasty" | "yummy"};
}