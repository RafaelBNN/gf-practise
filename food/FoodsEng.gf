concrete FoodsEng of Food = open StringOper in {
  
    lincat
      Quality = SS ;
      Kind = {s : Number => Str} ;
      Item = {s : Str ; n : Number} ;
  
    lin
      Is item quality = ss (item.s ++ copula item.n ++ quality.s) ;
      This  = det Sg "this" ;
      That  = det Sg "that" ;
      These = det Pl "these" ;
      Those = det Pl "those" ;
      QualityKind quality kind = {s = table {n => quality.s ++ kind.s ! n}} ;
      Wine = regNoun "wine" ;
      Cheese = regNoun "cheese" ;
      Fish = noun "fish" "fish" ;
      Pizza = regNoun "pizza" ;
      Very = prefix "very" ;
      Fresh = ss "fresh" ;
      Warm = ss "warm" ;
      Italian = ss "Italian" ;
      Greek = ss "greek" ;
      Delicious = ss "delicious" ;

    param
      Number = Sg | Pl ;
  
    oper
      det : Number -> Str -> {s : Number => Str} -> {s : Str ; n : Number} =
        \n,d,cn -> {
          s = d ++ cn.s ! n ;
          n = n
        } ;
      noun : Str -> Str -> {s : Number => Str} =
        \man,men -> {s = table {
          Sg => man ;
          Pl => men
          }
        } ;
      regNoun : Str -> {s : Number => Str} =
        \car -> noun car (car + "s") ;
      copula : Number -> Str =
        \n -> case n of {
          Sg => "is" ;
          Pl => "are"
          } ;
}