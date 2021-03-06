using System;
using System.Linq;

public static class Hamming
{
    public static int Distance(string firstStrand, string secondStrand)
    {
        if (firstStrand.Length != secondStrand.Length) 
        {
            throw new ArgumentException();
        }
        return firstStrand
            .Where((nucleotide, index) => nucleotide != secondStrand[index])
            .Count();
    }
}
