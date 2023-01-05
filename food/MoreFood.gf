abstract MoreFood = Food ** {

    cat QuestionPhrase; ExcusePhrase;

    fun
        QuestionIs : Item -> Quality -> QuestionPhrase;
        ExcuseMe : Phrase -> ExcusePhrase;
        Pizza : Kind;
}