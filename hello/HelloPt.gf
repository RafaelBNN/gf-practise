concrete HelloPt of Hello = {
    
    lincat Greeting, Recipient = {s : Str};

    lin
        Hello recip = {s = "ola" ++ recip.s};
        GoodMorning recip = {s = "bom dia" ++ recip.s};
        GoodAfternoon recip = {s = "boa tarde" ++ recip.s};
        World = {s = "mundo"};
        Mum = {s = "mae"};
        Friends = {s = "comparsas"};
        Dad = {s = "pai"};
        Brother = {s = "irmao"};
}