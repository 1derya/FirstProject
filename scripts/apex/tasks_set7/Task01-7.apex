/**
1. Write an Apex code that create List or Array of 10 Integer values. 
   - remove duplicate and print it out 
   - print out the unique item count and difference between total list 
   item count
 */
Integer[] nums1 = new Integer[]{5,7,5,12,5,8,9,11,9,10};

Set<Integer> nums2 = new Set<Integer>(nums1);
System.debug('num2 value is : ' + nums2);  

System.debug(nums2.size());
System.debug(nums1.size());
System.debug(nums1.size()-nums2.size());
///////////////
//Task1
   Integer[] numbers = new Integer [10];
   numbers[0] = 1;
   numbers[1] = 2;
   numbers[2] = 10;
   numbers[3] = 4;
   numbers[4] = 13;
   numbers[5] = 1;
   numbers[6] = 3;
   numbers[7] = 1;
   numbers[8] = 4;
   numbers[9] = 1;
   

Set<Integer> noDuplicate = new Set <Integer> ();
   for(Integer each : numbers){
    noDuplicate.add(each);
   }
   System.debug(noDuplicate); 

System.debug(noDuplicate.size());
 Integer difference = numbers.size() - noDuplicate.size();
 System.debug(difference); 

////////////

Integer[] nums = new List<Integer>{ 5, 7, 10, 10, 61, 3, 10, 42, 8, 10 };

System.debug('nums value is : ' + nums.size());
Set<Integer> numsNoDuplicates = new Set<Integer>(nums);
System.debug('numsNoDuplicate value is : ' + numsNoDuplicates);
System.debug('The unique item count is: ' + numsNoDuplicates.size());
System.debug(
  'Difference between original items count and no duplicate items count is: ' +
    (nums.size() -
    numsNoDuplicates.size())
);



