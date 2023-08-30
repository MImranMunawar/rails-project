#Write a program to check if a given string is a palindrome or not.
def palindrome(str)
    return str == str.reverse
   end

   puts palindrome("010")

