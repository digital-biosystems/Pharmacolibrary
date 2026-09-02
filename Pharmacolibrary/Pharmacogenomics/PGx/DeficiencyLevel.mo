within Pharmacolibrary.Pharmacogenomics.PGx;
type DeficiencyLevel =
     enumeration(
       Indeterminate      "allele function not established",
       Normal             "normal enzyme activity",
       Variable           "heterozygous: activity varies (X-inactivation)",
       Deficient          "reduced activity, haemolysis risk on oxidative drugs",
       DeficientWithCNSHA "class I: chronic non-spherocytic haemolytic anaemia")
  "an ORDERED severity, unlike MetabolizerStatus which is an activity axis";
