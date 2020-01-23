public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2 = new String();
  word2 = noSpaces(word);
  String word3 = new String();
  word3 = noCapitals(word2);
  String word4 = new String();
  word4 = onlyLetters(word3);

  if(word4.equals(reverse(word4))) 
  {
    return true;
  }
  return false;
  
}
public String reverse(String str)
{
  String sNew = new String();
  int rev = str.length() - 1;
  for(int i = rev; i >= 0; i--)
  {
    sNew = sNew + str.substring(i, i+1);
  }
  return sNew;
}
public String noSpaces(String str)
{
  String noSpace = new String();
  for(int i = 0; i < str.length(); i++)
  {
     if(!str.substring(i,i+1).equals(" "))
     {
       noSpace=noSpace + str.substring(i,i+1);
     }
  }
  return noSpace;
}

public String noCapitals(String str){
  return str.toLowerCase();
}

public String onlyLetters(String str){
  String lett = new String();
  for(int i = 0; i < str.length(); i++)
  {
    if(Character.isLetter(str.charAt(i)) == true)
    {
      lett = lett + str.substring(i,i+1);
    }
  }
  return lett;
}


