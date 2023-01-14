-- a food grammar
abstract Food = {

    flags startcat = Phrase;

    cat Phrase; Quality; Item; Kind;

    fun
        Is : Item -> Quality -> Phrase;
        This, That : Kind -> Item;
        These, Those : Kind -> Item;
        QualityKind : Quality -> Kind -> Kind;
        Cheese, Bread, Chocolate, Pizza, Wine, Fish : Kind;
        Very : Quality -> Quality;
        VeryVery : Quality -> Quality;
        Fresh, Warm, Italian, Greek, Delicious : Quality;
}