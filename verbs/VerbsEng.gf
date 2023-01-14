concrete VerbsEng of Verbs = {

    param VerbForm = VPresent Number | VPast | VPastPart | VPresPart;
    param Number = Sg | Pl;

    lincat Verb = {s : VerbForm => Str};
    lincat Kind = {s : Number => Str};

    lin Eat = {s = table {
        VPresent Sg => "eats";
        VPresent Pl => "eat";
        VPast => "ate";
        VPastPart => "eaten";
        VPresPart => "eating"
    }};

    lin Drink = {s = table {
        VPresent Sg => "drinks";
        VPresent Pl => "drink";
        VPast       => "drank";
        VPastPart   => "drunk";
        VPresPart   => "drinking"
    }};

    lin Cheese = {s = table {
        Sg => "cheese";
        Pl => "cheeses"
    }};

    lin Apple = {s = table {
        Sg => "apple";
        Pl => "apples"
    }};
}