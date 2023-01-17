-- conjugando verbos no presente do indicativo
resource ResourcePt = {

    param Numero = Sg | Pl;
    param Pessoa = Pri | Seg | Ter;
    
    oper substReg : Str -> {s : Numero => Str} = \cachorro -> {
        s = table {
            Sg => cachorro;
            Pl => cachorro + "s"
        }
    };

    oper verboReg : Str -> {s : Pessoa => Numero => Str} = \verbo -> {
            radical + "ar"    =>  table {
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
            radical + "er"    =>  table {
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
            radical + "ir"    =>  table {
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
            _           =>  table {
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
        }
    };
}