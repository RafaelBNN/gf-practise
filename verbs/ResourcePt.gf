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

}