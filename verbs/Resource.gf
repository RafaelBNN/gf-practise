resource Resource = {

    param Number = Sg | Pl ;
    param VerbForm = VPresent Number | VPast | VPastPart | VPresPart ;
    
    oper regNoun : Str -> {s : Number => Str} = \dog -> {
        s = table {
            Sg => dog;
            Pl => dog + "s"
        }
    };

    oper regVerb : Str -> {s : VerbForm => Str} = \talk -> {
        s = table {
            -- VPresent Sg => talk + "s";
            VPresent Pl => talk;
            VPresPart   => talk + "ing";
            _           => talk + "ed"
        }
    };

}