concrete FoodEngg of Food = open StringOper in {

    lincat S, Item, Kind, Quality = SS;

    lin
        Is = infix "is";
        This = prefix "this";
        That kind = prefix "that" kind;
        QualityKind quality kind = cc quality kind;
        Cheese = ss "cheese";
        Bread = ss "bread";
        Wine = ss "wine";
        Chocolate = ss "chocolate";
        Very quality = prefix "very" quality;
        VeryVery quality = prefix "very very" quality;
        Fresh = ss "fresh";
        Warm = ss "warm";
        Italian = ss "italian";
        Greek = ss "greek";
        Delicious = ss "delicious";
        QuestionIs item quality = prefix "is" (cc item quality);
        ExcuseMe phrase = prefix "excuse me but" phrase;

}

-- concrete FoodEng of Food = open StringOper in {
  
--       lincat
--         S, Item, Kind, Quality = SS ;
  
--       lin
--         Is item quality = cc item (prefix "is" quality) ;
--         This k = prefix "this" k ;
--         That k = prefix "that" k ;
--         QKind k q = cc k q ;
--         Wine = ss "wine" ;
--         Cheese = ss "cheese" ;
--         Fish = ss "fish" ;
--         Very = prefix "very" ;
--         Fresh = ss "fresh" ;
--         Warm = ss "warm" ;
--         Italian = ss "Italian" ;
--         Expensive = ss "expensive" ;
--         Delicious = ss "delicious" ;
--         Boring = ss "boring" ;
--     }