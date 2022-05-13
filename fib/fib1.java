// Base case
// Worst calculation

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class fib1 {

    // region IO

    private static void println(Object strng) {
        System.out.println(strng);
    }

    private static void print(Object strng) {
        System.out.print(strng);
    }

    // endregion

    public static void main(String[] args) {

        // Get number to calc
        print("Num: ");
        Scanner scnrnum = new Scanner(System.in);
        String strnum = scnrnum.nextLine();
        scnrnum.close();

        // Convert to Integer
        int num;
        try {
            num = Integer.parseInt(strnum);
        } catch (Exception e) {
            println("\n-1");
            return;
        }

        // Calculating the stuff
        long startTime = System.nanoTime();
        println(fib(num));
        long endTime = System.nanoTime();
        long totalTimeInNano = endTime - startTime;

        double totalTimeInSec = (double) totalTimeInNano / 1_000_000_000;
        println(String.format("\n%fs", totalTimeInSec));
    }

    private static int fib(int n) {

        // Prints all calcs above x
        // if (n > 30)
        // println(n);

        if (n == 0 | n == 1)
            return n;

        return fib(n - 1) + fib(n - 2);
    }
}
