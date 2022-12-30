-- a food grammar
abstract Food = {

    flags startcat = Phrase;

    cat Phrase; Quality; Item; Kind; QuestionPhrase; ExcusePhrase;

    fun
        Is : Item -> Quality -> Phrase;
        This, That : Kind -> Item;
        QualityKind : Quality -> Kind -> Kind;
        Cheese, Bread, Wine, Chocolate : Kind;
        Very : Quality -> Quality;
        Fresh, Warm, Italian, Greek, Delicious : Quality;
        QuestionIs : Item -> Quality -> QuestionPhrase;
        ExcuseMe : Phrase -> ExcusePhrase;
}