resource StringOper = {

    param Number = Sg | Pl;

    oper
        SS : Type = {s : Str};
        ss : Str -> SS = \x -> {s = x};
        cc : SS -> SS -> SS = \x,y -> ss(x.s ++ y.s);
        prefix : Str -> SS -> SS = \p,x -> ss(p ++ x.s);
        infix : Str -> SS -> SS -> SS = \i,x,y -> ss(x.s ++ i ++ y.s);
    
    oper copula : Number -> Str = \n ->
        case n of {
            Sg => "is";
            Pl => "are"
        };

    oper det : Number -> Str -> {s : Number => Str} -> {s : Str ; n : Number} =
        \n, demonst, kind -> {
            s = demonst ++ kind.s ! n;
            n = n
        };
    
    oper regNoun : Str -> {s : Number => Str} = \dog -> irregNoun dog (dog + "s");

    oper irregNoun : (mouse, mice : Str) -> {s : Number => Str} = 
        \sing, plur -> {
            s = table {
                Sg => sing;
                Pl => plur
            }
        };

    oper mkNoun = overload {
        mkNoun : (ant : Str) -> {s : Number => Str} = regNoun;
        mkNoun : (tooth, teeth : Str) -> {s : Number => Str} = irregNoun
    };
}