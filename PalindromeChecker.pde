public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2 = onlyLetters(word);
  if (word2.equals(reverse(word2)))
  {
    return true;
  }
  return false;
}
public String onlyLetters(String let)
{
  
  String onlet = new String();
  for(int i =0; i <let.length();i++)
  {
    
  if(Character.isLetter(let.charAt(i))==true)
  {
   onlet = onlet + let.charAt(i);
  }
  }
  return onlet.toLowerCase();
}
public String reverse(String str)
{
 String sNew = new String();
 for(int i = str.length()-1; i>=0 ; i--)
{
  sNew = sNew + str.charAt(i);
}

    return sNew;
}
