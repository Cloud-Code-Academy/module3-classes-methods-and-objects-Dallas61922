/**
 * The ClassesObjectsMethods class serves as an exploration into Object Oriented Programming in Apex.
 * It covers fundamental aspects such as class instantiation, method creation, encapsulation, and object interaction.
 *
 * This class introduces developers to the concept of creating and manipulating objects in Apex. It discusses
 * how to define classes, create methods, and use objects. This class uses two example classes - Person and Book.
 * 
 * Topics covered in this class include:
 * - Understanding how to define a class in Apex.
 * - Understanding how to create methods in Apex.
 * - Understanding how to instantiate objects of a class.
 * - Understanding encapsulation and the importance of getter and setter methods.
 *
 * Users of this class can expect to gain a strong understanding of Object Oriented Programming in Apex and
 * be prepared for more advanced topics in Salesforce development.
 * 
 * The Person class is a simple representation of a person with properties like name and age, and a method
 * that allows the person to introduce themselves.
 * 
 * The Book class is a simple representation of a book with properties like title and author, and methods
 * to read and close the book.
 * 
 * Resources:
 * String class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm
 * Date class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm
 * Math class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm
 * Classes: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_understanding.htm
 *
 * @author Dallas Bailey
 */

public with sharing class ClassesObjectsMethods {
    
    /**
     * Question 1
     * It initializes a String to "Hello, Salesforce!" and demonstrates usage of
     * the length, substring, and toLowerCase methods of the String class.
     * Example: practiceStringMethods() should return a list like ["17", "Hello", "hello, salesforce!"].
     * @return A list containing the length of the string, a substring of the string, and the string in lower case.
     */
    public static List<String> practiceStringMethods() {
        // Initialize a String with 'Hello, Salesforce!'
        String myNewString = 'Hello, Salesforce!';
        
        // Get the length of the String     
        Integer len = myNewString.length();
        // Get a substring of the String of the first 5 characters
        String substringFive = myNewString.left(5);
        // Convert the String to lower case
        String lowerCase = myNewString.toLowerCase();
        // Return the list with the string data
        List<String> myStringDetails = new List<String>();
        myStringDetails.add(String.valueOf(len));
        myStringDetails.add(substringFive);
        myStringDetails.add(lowerCase);

        return myStringDetails; // Replace null with the variable you used to store the result
    }

    /**
     * Question 2
     * Check if the input string starts with 'Sales', ends with 'Force', and contains 'Awesome'.
     * Example: checkStringContent('Salesforce is Awesome!') should return a list like [true, false, true].
     * @param input The input string.
     * @return A list of boolean values indicating whether the string starts with 'Sales', ends with 'Force', or contains 'Awesome'.
     */
    public static List<Boolean> checkStringContent(String input) {
        // Initialize a list to store the results
        List<Boolean> wordsToCheck = new List<Boolean>();
        String stringToCheck = input;
        // Check if the string starts with 'Sales'
        Boolean firstCharactersMatch = (stringToCheck.left(5) == 'Sales');
        // Check if the string ends with 'Force'
        Boolean lastCharactersMatch = (stringToCheck.right(5) == 'Force');
        // Check if the string contains 'Awesome'
        Boolean containsAwesome = (stringToCheck.contains('Awesome'));
        wordsToCheck.add(firstCharactersMatch);
        wordsToCheck.add(lastCharactersMatch);
        wordsToCheck.add(containsAwesome);
        return wordsToCheck; // Replace null with the variable you used to store the result
    }

    /**
     * Question 3
     * Take a sentence then remove any duplicate words, and return the sentence with only unique words.
     * Example: removeDuplicateWords('Hello Hello Salesforce Salesforce') should return 'Hello Salesforce'.
     * @param sentence The input sentence.
     * @return A string consisting of only unique words from the input sentence.
     */
    public static String removeDuplicateWords(String sentence) {
        List<String> wordsSplit = sentence.split(' ');
        Set<String> uniqueWords = new Set<String>(wordsSplit);
        List<String> uniqueWordsList = new List<String>(uniqueWords);
        String newSentance = String.join(uniqueWordsList, ' ');
        return newSentance; 
    }

    /**
     * Question 4
     * This method takes a string as a parameter, and calculates the number of vowels in the string.
     * For simplicity, we will consider only five vowels: 'a', 'e', 'i', 'o', 'u', and we will ignore case.
     * Example: countVowels("Hello World!") should return 3
     * @param s The string in which to count vowels.
     * @return The number of vowels in the string.
     */
    public static Integer countVowels(String str) {
        Integer totalNumVowels = 0;
        List<String> charactersSplit = str.split('');
        for (String character : charactersSplit) {
            if (character.containsAny('aeiou')) {
                totalNumVowels += 1;
            }
        }
        return totalNumVowels;
    }

    /**
     * Question 5
     * Given a list of scientist names, combine their names together with a comma if it contains the letter 'g'.
     * The final string should not end with a comma.
     * Example: findTheScientist() should return "Alan Turing,Grace Hopper,Guido van Rossum,Stephen Hawking"
     * @return A string containing the names of scientists that contain the letter 'g'.
     */
    public static String findTheScientist() {
        List<String> scientistNames = new List<String>{'Tim Berners-Lee', 'Alan Turing', 'Grace Hopper', 'Donald Knuth', 'Guido van Rossum', 'Ken Thompson', 'Stephen Hawking'};
        List<String> namesWithG = new List<String>();
        String scientistNamesG;
        for (String individual : scientistNames){
            if (individual.containsAny('Gg')) {
                namesWithG.add(individual);
            } else {
                continue;
            }
        }
        scientistNamesG = String.join(namesWithG, ',');
        scientistNamesG.removeEnd(',');
        return scientistNamesG; 
    }

    /**
     * Question 6
     * This method calculates the absolute value of the difference between of two input numbers that are raised to the 2nd power.
     * Example: calculateDifferenceOfSquares(3, 4) should return 7.
     * @param a The first number.
     * @param b The second number.
     * @return The absolute value of the difference
     */
    public static Double calculateDifferenceOfSquares(Double a, Double b) {
        Double squareA = Math.pow(a, 2);
        Double squareB = Math.pow(b, 2);
        Double absDiff = Math.abs(squareA) - Math.abs(squareB);
        return absDiff; 
    }

    /**
     * Question 7
     * Generate a random number between 50 and 100
     * Example: generateRandomNumber() should return a number like 75.
     * @return A integer between 50 and 100.
     */
    public static Integer generateRandomNumber() {
        Double randomNumber = (50 + (Math.random() * 50));
        return (Integer)randomNumber;
    }

    /**
     * Question 8
     * Format the current date in the current user locale format.
     * Example: getCurrentDate() should return a string like "3/21/2001" for US locale users. Locale/String may differ depending on your location.
     * @return The current date in the current user locale format.
     */
    public static String getCurrentDate() {
        date currentDate = Date.today();
        String formattedDate = currentDate.format();
        return formattedDate;
    }

    /**
     * Question 9
     * Given a date time return the day of the week in number format
     * @param dt the current date and time
     * @return The number of the day of the week for the given date.
     */
    public static String getDayOfWeek(DateTime dt) {
        Map<String, Integer> weekDayByNumber = new Map<String, Integer>{'Monday' => 1, 'Tuesday' => 2, 'Wednesday' => 3, 'Thursday' => 4, 'Friday' => 5, 'Saturday' => 6, 'Sunday' => 7};
        Integer numberOfTheDay = 0;
        String writtenDay = dt.format('EEEE');
        Set<String> daysOfTheWeekSet = new Set<String>();
        daysOfTheWeekSet = weekDayByNumber.keySet();
        for (String individualDay : daysOfTheWeekSet){
            if (individualDay == writtenDay){
                numberOfTheDay = weekDayByNumber.get(individualDay);
            }
        }
        return numberOfTheDay.format();
    }


    /**
     * Question 10
     * Calculate the difference between the years of two dates
     * For example, if the first date is 2023-01-01 and the second date is 2025-12-31, the method should return 2
     * If either of the dates is null, return null.
     * @param d1 The first date.
     * @param d2 The second date.
     * @return The a positive number years between the two dates, or null if either date is null.
     */
    public static Integer calculateYearDifference(Date d1, Date d2) {
        Integer findDifference = null;
        if (d1 != null && d2 != null){
            findDifference = math.abs(d1.year() - d2.year());
        }
        return findDifference;
    }

    /**
     * Question 11
     * The Book class represents a book in a library. 
     * Each Book object has a title and an author, and methods to return these details.
     * This class can be used in the context of a library management system, bookstore, etc.
     * where you need to manipulate and manage book information.
     */
    public class Book {
        public String title;
        public String author;
        public Integer pages = 0;
    
        public Book(String title, String author) {
            this.title = title;
            this.author = author;
        }

        public Book() {
        }
        
        public String getBookDetails() {
            String myBooksDetails = ('Title: ' + title + ', Author: ' + author);
            return myBooksDetails;
        }
    }
    

    /**
     * Question 12
     * Create a Book object and returns the details of the book.
     * For example, createAndGetBookDetails() should return a string like "Title: A Brief History of Time, Author: Stephen Hawking".
     * @return A string containing the details of the book.
     */
    public static String createAndGetBookDetails() {
        Book firstCreatedBook = new Book('A Brief History of Time', 'Stephen Hawking');
        String myBooksDetails = firstCreatedBook.getBookDetails();
        return myBooksDetails;
    }

    /**
     * Question 13
     * Create and update two Book objects and returns the books.
     * For example, generateBookList(Book) should return a list like ["Title: Harry Potter and the Chamber of Secrets, Author: J.K. Rowling", "Title: A Brief History of Time, Author: Stephen Hawking"].
     * Update Book 1 values: title = "Harry Potter and the Chamber of Secrets", author = "J.K. Rowling", pages = 352
     * Book 2 values: title = "A Brief History of Time", author = "Stephen Hawking"
     * @param myBook1 The first book object.
     * @return return a list of books.
     */
    public static List<Book> generateBookList(Book myBook1) {
        List<Book> fullBookList = new List<Book>();
        myBook1.title = 'Harry Potter and the Chamber of Secrets';
        myBook1.author = 'J.K. Rowling';
        myBook1.pages = 352;
        Book myBook2 = new Book('A Brief History of Time', 'Stephen Hawking');
        myBook2.pages = 256;
        fullBookList.add(myBook1);
        fullBookList.add(myBook2);
        return fullBookList;     
    }


    /**
     * Question 14
     * The Person class represents a person.
     * Each Person object has a name and an age, and methods to return these details.
     * This class can be used in the context of a school, college, etc.
     * where you need to manipulate and manage person information.
     */
    public class Person {
        private String privateName;
        private Integer privateAge;
        private String introduceYourself;

        public Person(String privateName, Integer privateAge, String introduceYourself){
            this.privateName = privateName;
            this.privateAge = privateAge;
            this.introduceYourself = introduceYourself;
        }
        public Person(String privateName, Integer privateAge){
            this.privateName = privateName;
            this.privateAge = privateAge;
        }

        public String introduceYourself(){
 
            String fullIntroduction = ('Hello, my name is ' + privateName + ' and I am ' + privateAge + ' years old.');
            Return fullIntroduction; 
        }

        public String getName () {
            return privateName;
            }
        public Integer getAge () {
                return privateAge;
            }
        public void setName(String privateName){
                this.privateName = privateName;
            }
        public void setAge(Integer privateAge){
                this.privateAge = privateAge;
            }        
        }  
    

    /**
     * Question 15
     * Create a Person object and returns the details of the person.
     * For example, personDetails() should return a list like ["Hello, my name is John Doe and I am 28 years old.", "John Doe", "28"].
     * @return A string containing the details of the person.
     */

    public static List<String> personDetails() {
        List<String> results = new List<String>();

        Person johnDoe = new Person('John Doe', 28);

        results.add(johnDoe.introduceYourself());
        results.add(johnDoe.getName());
        results.add((johnDoe.getAge()).format());
        
        return results;
    }

    /**
     * Question 16
     * Create a Person object with the provided name and age.
     * @param name The name of the person.
     * @param age The age of the person.
     * @return A new instance of the Person class.
     */
    public static Person createPerson(String name, Integer age) {
        Person newPerson = new Person(name, age);
        return newPerson; 
    }

    /**
     * Question 17
     * Create a method that constructs multiple Person objects.
     * You are to create a new Person object for each name in the provided List<String> of names,
     * using the same age for all Person objects. The method should return a List<Person> of all the Person objects created. 
     * @param names A list of names.
     * @param age The age to be set for all the Person objects.
     * @return A list of new Person objects.
     */
    public static List<Person> createMultiplePersons(List<String> names, Integer age) {
        List<Person> listOfNewPersons = new List<Person>();

        for (String personToCreate : names){
            Person createPerson = new Person(personToCreate, age);
            listOfNewPersons.add(createPerson);
        }
        return listOfNewPersons;
    }


    /**
     * Question 18
     * Compare two Person objects based on their ages.
     * If the first Person is older, the method should return the first Person. If the second Person is older, it should return the second Person.
     * If they are the same age, return either.
     *
     * @param person1 The first Person object.
     * @param person2 The second Person object.
     * @return The Person object of the older person.
     */
    public static Person getOlderPerson(Person person1, Person person2) {
        Person olderPerson;
        if (person1.privateAge >= person2.privateAge){
            olderPerson = person1;
        }
        if (person2.privateAge > person1.privateAge){
            olderPerson = person2;
        }
        return olderPerson;
    }
} 
