concrete VerbEng of Verb = {

    param Number = Sg | Pl;

    lincat Phrase = {s : Str};
    lincat Subject = {s : Str ; n : Number};
    lincat Verb = {s : Number => Str};
}