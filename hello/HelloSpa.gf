concrete HelloSpa of Hello = {

    lincat Greeting, Recipient = {s : Str};

    lin
        Hello recip = {s = "hola" ++ recip.s};
        GoodMorning recip = {s = "buenos dias" ++ recip.s};
        GoodAfternoon recip = {s = "buenas tardes" ++ recip.s};
        World = {s = "mundo"};
        Mum = {s = "mama"};
        Friends = {s = "amigos"};
        Dad = {s = "papa"};
        Brother = {s = "hermano"};
}