concrete FoodEng of Food = open StringOper in {

    param Number = Sg | Pl;

    lincat Phrase, Quality = SS;
    lincat Kind = {s : Number => Str};
    lincat Item = {s : Str ; n : Number};

    lin
        Is item quality = {s = item.s ++ copula item.n ++ quality.s};
        This = det Sg "this";
        These = det Pl "these";
        That = det Sg "that";
        Those = det Pl "those";
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
        Pizza = regNoun "pizza";
        Wine = regNoun "wine";
        Fish = irregNoun "fish" "fish";
        Very quality = {s = "very" ++ quality.s};
        VeryVery quality = {s = "very very" ++ quality.s};
        Fresh = {s = "fresh"};
        Warm = {s = "warm"};
        Italian = {s = "italian"};
        Greek = {s = "greek"};
        Delicious = {s = "delicious" | "exquisit" | "tasty" | "yummy"};

    oper copula : Number -> Str = \n ->
        case n of {
            Sg => "is";
            Pl => "are"
        };

    oper det : Number -> Str -> {s : Number => Str} -> {s : Str ; n : Number} =
        \n, demonst, kind -> {
            s = demonst ++ kind.s ! n;
            n = n
        };
    
    oper regNoun : Str -> {s : Number => Str} = \dog -> {
        s = table {
            Sg => dog;
            Pl => dog + "s"
        }
    };

    oper irregNoun : Str -> Str -> {s : Number => Str} = 
        \sing, plur -> {
            s = table {
                Sg => sing;
                Pl => plur
            }
        };
}