concrete HelloEng of Hello = {

    lincat Greeting, Recipient = {s : Str};

    lin
        Hello recip = {s = "hello" ++ recip.s};
        GoodMorning recip = {s = "good morning" ++ recip.s};
        GoodAfternoon recip = {s = "good afternoon" ++ recip.s};
        World = {s = "world"};
        Mum = {s = "mum"};
        Friends = {s = "friends"};
        Dad = {s = "dad"};
        Brother = {s = "brother"};
}