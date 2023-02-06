abstract Verb = {

    flags startcat = Phrase;

    cat Phrase; Subject; Verb;

    fun
        PersPronoun : Subject;
        Eat, Sleep, Speak : Verb;
        BuildPhr : Subject -> Verb -> Phrase;

}