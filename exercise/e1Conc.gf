concrete e1Conc of e1 = {

    lincat Phrase, DoublePhrase = {s : Str};

    lin
        A = {s = "A"};
        B = {s = "B"};
        -- _ = {s = "_"};
        AddA phrase = {s = phrase.s ++ "A"};
        AddB phrase = {s = phrase.s ++ "B"};
        Double phrase = {s = phrase.s ++ phrase.s};
}