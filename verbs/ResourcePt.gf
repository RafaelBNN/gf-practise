-- conjugando verbos
resource ResourcePt = {

    param Numero = Sg | Pl;
    param Pessoa = Pri | Seg | Ter;
    param TempoVerbal = PresInd, PretImpInd, PretPerfInd, PretMaisInd, FutPresInd, FutPretInt;

    oper mkSubst : Str -> Str -> {s : Numero => Str} = \sg, pl -> {
        s = table {
            Sg => sg;
            Pl => pl
        }
    };
    
    oper substReg : Str -> {s : Numero => Str} = \subst -> {
        radical + ("r" | "z")   => mkSubst subst (radical + "es");
        radical + "m"           => mkSubst subst (radical + "ns");
        radical + "ão"          => mkSubst subst (radical + "ões");
        radical + "al"          => mkSubst subst (radical + "ais");
        radical + "el"          => mkSubst subst (radical + "eis");
        radical + "ol"          => mkSubst subst (radical + "ois");
        radical + "ul"          => mkSubst subst (radical + "uis");
        _                       => mkSubst subst (subst + "s")
    };

    oper verboReg : TempoVerbal -> Str -> {s : Pessoa => Numero => Str} = \tempo, verbo -> {
        PresInd verbo => verboRegPresInd verbo;
        PretImpInd verbo => verboRegPretImpInd verbo;
        PretPerfInd verbo => verboRegPretPerfInd verbo;
        PretMaisInd verbo => verboRegPretMaisInd verbo;
        FutPresInd verbo => verboRegFutPresInd verbo;
        FutPretInt verbo => verboRegFutPretInt verbo;
    };

    oper verboRegPresInd : Str -> {s : Pessoa => Numero => Str} = \verbo -> {
        radical + "ar"  =>  table {
                        Pri => table{
                            Sg => radical + "o";
                            Pl => radical + "amos"
                        };
                        Seg => table{
                            Sg => radical + "as";
                            Pl => radical + "ais"
                        };
                        Ter => table{
                            Sg => radical + "a";
                            Pl => radical + "am"
                        }
                    };
        radical + "er"  =>  table {
                        Pri => table{
                            Sg => radical + "o";
                            Pl => radical + "emos"
                        };
                        Seg => table{
                            Sg => radical + "es";
                            Pl => radical + "eis"
                        };
                        Ter => table{
                            Sg => radical + "e";
                            Pl => radical + "em"
                        }
                    };
        radical + "ir"  =>  table {
                        Pri => table{
                            Sg => radical + "o";
                            Pl => radical + "imos"
                        };
                        Seg => table{
                            Sg => radical + "es";
                            Pl => radical + "is"
                        };
                        Ter => table{
                            Sg => radical + "e";
                            Pl => radical + "em"
                        }
                    };
        _               =>  table {
                        Pri => table{
                            Sg => "por favor digite um verbo regular terminado em -ar, -er ou -ir";
                            Pl => "por favor digite um verbo regular terminado em -ar, -er ou -ir"
                        };
                        Seg => table{
                            Sg => "por favor digite um verbo regular terminado em -ar, -er ou -ir";
                            Pl => "por favor digite um verbo regular terminado em -ar, -er ou -ir"
                        };
                        Ter => table{
                            Sg => "por favor digite um verbo regular terminado em -ar, -er ou -ir";
                            Pl => "por favor digite um verbo regular terminado em -ar, -er ou -ir"
                        }
                    }
    };
}