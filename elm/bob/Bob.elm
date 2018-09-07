module Bob exposing (hey)

shouting remark =
  String.toUpper remark == remark && String.toLower remark /= remark

question remark =
  String.endsWith "?" remark

silence remark =
  String.isEmpty <| String.trim remark

hey : String -> String
hey remark =
  if shouting(remark) && question(remark) then
    "Calm down, I know what I'm doing!"
  else if question(remark) then
    "Sure."
  else if shouting(remark) then
    "Whoa, chill out!"
  else if silence(remark) then
    "Fine. Be that way!"
  else
    "Whatever."
