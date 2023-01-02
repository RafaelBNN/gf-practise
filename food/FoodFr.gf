concrete FoodFr of Food = {

    lincat Phrase, Item, Kind, Quality = {s : Str};

    lin
        Is item quality = {s = item.s ++ "est" ++ quality.s};
        This kind = {s = "cette" ++ kind.s};
        That kind = {s = "cette" ++ kind.s};
        QualityKind quality kind = {s = kind.s ++ quality.s};
        Wine = {s = "vin"};
        Cheese = {s = "fromage"};
        Fish = {s = "poisson"};
        Very quality = {s = "très" ++ quality.s};
        Fresh = {s = "fraîche"};
        Warm = {s = "chaude"};
        Italian = {s = "italien"};
        Delicious = {s = "délicieux"};
}