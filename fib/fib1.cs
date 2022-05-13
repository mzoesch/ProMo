// Base case
// Worst calculation

using System;
  
public class fib1 {
          
    public static void Main(string[] args) {
              
        // Get number to calc
        Console.WriteLine("Num: ");
        string strnum = Console.ReadLine();
        
        // Convert to Integer
        int num;
        try {
            num = Int32.Parse(strnum);
        } catch (Exception e) {
            Console.Write("\n-1");
            return;
        }

        // Calculating the stuff
        var watch = System.Diagnostics.Stopwatch.StartNew();
        Console.WriteLine(fib(num));
        watch.Stop();
        
        TimeSpan ts = watch.Elapsed;
        Console.WriteLine("Elapsed Time is {1:00}:{2:00}.{3}",
                        ts.Minutes, ts.Seconds, ts.Milliseconds);
        }


    private static int fib(int n) {

        // Prints all calcs above x
        // if (n > 30) {
        //    Console.WriteLine(n);
        // }

        if (n == 0 || n == 1) {
            return n;
        }

        return fib(n-1) + fib(n-2);
    }
}

