-- a food grammar
abstract Food = Drink ** {

    flags startcat = Phrase;

    cat Phrase; Quality; Item; Kind;

    fun
        Is : Item -> Quality -> Phrase;
        This, That : Kind -> Item;
        QualityKind : Quality -> Kind -> Kind;
        Cheese, Bread, Chocolate : Kind;
        Very : Quality -> Quality;
        VeryVery : Quality -> Quality;
        Fresh, Warm, Italian, Greek, Delicious : Quality;
}