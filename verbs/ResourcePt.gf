-- conjugando verbos no presente do indicativo
resource ResourcePt = {

    param Numero = Sg | Pl;
    param Pessoa = Pri | Seg | Ter;
    -- param VerbForm = VPresent Number | VPast | VPastPart | VPresPart;
    
    oper substReg : Str -> {s : Numero => Str} = \cachorro -> {
        s = table {
            Sg => cachorro;
            Pl => cachorro + "s"
        }
    };

    oper verboReg1aConjug : Str -> {s : Pessoa => Numero => Str} = \fal -> {
        s = table {
            Pri => table{
                Sg => fal + "o";
                Pl => fal + "amos"
            };
            Seg => table{
                Sg => fal + "as";
                Pl => fal + "ais"
            };
            Ter => table{
                Sg => fal + "a";
                Pl => fal + "am"
            }
        }
    };

    oper verboReg2aConjug : Str -> {s : Pessoa => Numero => Str} = \com -> {
        s = table {
            Pri => table{
                Sg => com + "o";
                Pl => com + "emos"
            };
            Seg => table{
                Sg => com + "es";
                Pl => com + "eis"
            };
            Ter => table{
                Sg => com + "e";
                Pl => com + "em"
            }
        }
    };

    oper verboReg3aConjug : Str -> {s : Pessoa => Numero => Str} = \abr -> {
        s = table {
            Pri => table{
                Sg => abr + "o";
                Pl => abr + "imos"
            };
            Seg => table{
                Sg => abr + "es";''
                Pl => abr + "is"
            };
            Ter => table{
                Sg => abr + "e";
                Pl => abr + "em"
            }
        }
    };

}