concrete VerbsPort of Verbs = {

    param Gender = Masc | Fem;
    param Number = Sg | Pl;

    lincat Adjective = {s : Gender => Number => Str};

    lin Italian = {s = table{
        Masc Sg => "italiano";
        Masc Pl => "italianos";
        Fem Sg => "italiana";
        Fem Pl => "italianas"
    }};

    lin Fresh = {s = table{
        Masc Sg => "fresco";
        Masc Pl => "frescos";
        Fem Sg => "fresca";
        Fem Pl => "frescas"
    }};

    lin Green = {s = table{
        Masc Sg => "verde";
        Masc Pl => "verdes";
        Fem Sg => "verde";
        Fem Pl => "verdes"
    }};
}