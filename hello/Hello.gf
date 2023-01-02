-- a "Hello World" grammar
abstract Hello = {
    
    flags startcat = Greeting;

    cat Greeting; Recipient;

    fun
        Hello : Recipient -> Greeting;
        GoodMorning : Recipient -> Greeting;
        GoodAfternoon : Recipient -> Greeting;
        World, Mum, Friends, Dad, Brother : Recipient;
}