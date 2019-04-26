// script to remove WordNet from the solution

match (wn:WN_Word) detach delete wn

match (wn:WN_Synset) detach delete wn

