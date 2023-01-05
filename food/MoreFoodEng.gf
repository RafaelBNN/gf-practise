concrete MoreFoodEng of MoreFood = FoodEng ** {

    lincat QuestionPhrase, ExcusePhrase = {s : Str};

    lin
        QuestionIs item quality = {s = "is" ++ item.s ++ quality.s};
        ExcuseMe phrase = {s = "excuse me but" ++ phrase.s};
        Pizza = {s = "pizza"};
}