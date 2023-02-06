concrete VerbEng of Verb = open ResourcePt in {

    -- param Number = Sg | Pl;
    -- param Gender = Masc | Fem;
    -- param Person = Pri | Seg | Ter;

    lincat Phrase = {s : Str};
    lincat Subject = {s : Str ; p : Person ; n : Number ; g : Gender};
    lincat Verb = {s : Person => Number => Str};

    lin
        Speak = verboReg "falar";
        Eat = verboReg "comer";
        Sleep = verboReg "dormir";

    lin PersPronoun = {s = table {
            Pri => {s = table {
                Sg => "Eu";
                Pl => "Nós"
            }};
            Seg => {s = table {
                Sg => "Tu";
                Pl => "Vós"
            }};
            Ter => {s = table {
                Sg => {s = table {
                    Masc => "Ele";
                    Fem => "Ela"
                }};
                Pl => {s = table {
                    Fem => "Elas";
                    _ => "Eles"
                }}
            }}
        }};

    lin BuildPhr sujeito verbo = {s = sujeito ++ (verbo.s ! sujeito.p ! sujeito.n ! sujeito.g)}

}