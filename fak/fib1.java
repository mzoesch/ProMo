import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class fib1 {

    // static List<Integer> l = new ArrayList<Integer>();

    private static void println(Object strng) {
        System.out.println(strng);
    }

    private static void print(Object strng) {
        System.out.print(strng);
    }

    public static void main(String[] args) {

        // Get number to calc
        print("Num: ");
        Scanner scnrnum = new Scanner(System.in);
        String strnum = scnrnum.nextLine();

        int num;
        try {
            num = Integer.parseInt(strnum);
        } catch (Exception e) {
            println("\n-1");
            return;
        }

        println(fib(num));
    }

    private static int fib(int n) {
        if (n > 10)
            println(n);

        if (n == 0 | n == 1)
            return n;

        return fib(n - 1) + fib(n - 2);
    }
}
