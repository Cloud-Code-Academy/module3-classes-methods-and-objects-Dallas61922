    public static String removeDuplicateWords(String sentence) {
        // Split the sentence into words
        /*String originalSentence = sentence;
        wordsSplit.add(sentence.split(' '));*/
        // Create a set to store the unique words
        List<String> wordsSplit = sentence.split(' ');
        // Add each word to the set
        Set<String> uniqueWords = new Set<String>();
        uniqueWords.addAll(wordsSplit);
        // Join the unique words back into a sentence
        String newSentance = String.join(wordsSplit, ' ');
        // Return the sentence with unique words
        return newSentance; // Replace null with the variable you used to store the resul