test_that("Can extract all possible 8-mers from a sequence",{

  x <- "ATGCGCTAGTAGCATGC"

  expected_kmers <- c("ATGCGCTA", "TGCGCTAG", "GCGCTAGT", "CGCTAGTA",
                      "GCTAGTAG", "CTAGTAGC", "TAGTAGCA", "AGTAGCAT",
                      "GTAGCATG","TAGCATGC")

  all_kmers <- get_all_kmers(x, kmer_size = 8)

  expect_equal(all_kmers, expected_kmers)

})


test_that("Can extract specific kmer from a starting position and size",{

  x <- "ATGCGCTAGTAGCATGC"

  kmer <- get_kmer(x, 1, kmer_size = 8)
  expect_equal(kmer, "ATGCGCTA")

  kmer <- get_kmer(x, 5, kmer_size = 8)
  expect_equal(kmer, "GCTAGTAG")

  kmer <- get_kmer(x, 10, kmer_size = 8)
  expect_equal(kmer, "TAGCATGC")

  expect_error(get_kmer(x, 11, kmer_size = 8))

})
