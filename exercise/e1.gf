-- Exercise. Define the non-context-free copy language {x x | x <- (a|b)*} in GF.
abstract e1 = {

    flags startcat = DoublePhrase;

    cat Phrase; DoublePhrase;

    fun
        A, B : Phrase;
        AddA : Phrase -> Phrase;
        AddB : Phrase -> Phrase;
        Double : Phrase -> DoublePhrase;
}