package com.example.demodatasource.test;

public class PalindromeNumber {

        private void  ReverseNumber()
    {

            int number = 987654, reverse = 0;
            while(number != 0) {
                int remainder = number % 10;
                reverse = reverse * 10 + remainder;
                number = number / 10;



            }

        if (number == reverse) {
            System.out.println("its palindrome number" );
        } else {
            System.out.println("its not palindrome number");
        }
    }

    private  void  Fibonacciseries(){
            int n=0,n1=1,n2=1;

            for(int i=2;i>=n;i++){

               int n3=n+n1;
               n=n1;
               n1=n3;
                System.out.println(n3);
            }
    }

    public static void main(String args[]){
        PalindromeNumber number=new PalindromeNumber();
        number.ReverseNumber();
        number.Fibonacciseries();
    }
}
