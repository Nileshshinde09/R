BCA 6th Semester PHP & MySQL Prashant. P. R 

___________________________________________________________________________ 

__________________________________________________________________________

D.M.S Mandal’s College of Computer Applications, Belgaum  

1. Develop a PHP program to display prime numbers between the given range and display the total number of prime numbers.
```php
<?php
$start = 17;
$end=139;
$total =0;
echo "Prime numbers from $start to $end are <br>";
while ($start <= $end )
{
$count=0;
for ( $i=2; $i<=$start/2; $i++)
{
if (($start%$i)==0)
{
$count++;
break;
}
}
if ($count==0)
{
echo "$start   ";
$total++;
}
$start++;
}
echo "<br>Total prime numbers are $total";
?>
```

2. Develop a PHP program and check message passing mechanism between pages.  
a. pgm2.html
```html
<html>
<head>
<title>Student Registration</title>
</head>
<body>
<h2>Student Registration</h2>
<form method="post" action="pgm2.php">
Name: <br />
<input type="text" name="sname" size="30" />
<p>
Roll no: <br />
<input type="text" name="rno" size="30" />
<p>
<input type="submit" name="submit" value="Submit" />
</form>
</body>
</html>
```

b. pgm2.php
```php
<html>
<head>
<title>Student Registration</title>
</head>
<body>
<h2>Student Registration</h2>
<?php
$sname = $_POST['sname'];
$rno = $_POST['rno'];
if (empty($sname))
{
die('ERROR: Please provide your name.');
}
if (empty($rno))
{
die('ERROR: Please provide your roll number.');
}
echo "Register successfully";
?>
</body>
</html>
```

4. Develop a PHP program to demonstrate String functions. (any 6).
```php
<?php
$str1="Welcome to BCA";
echo "String is ".$str1."<br>";
echo " Length of string is ".strlen($str1)."<br>";
echo " String in reverse order is ".strrev($str1)."<br>";
echo " String in lower case ".strtolower($str1)."<br>";
echo " String in upper case ".strtoupper($str1)."<br>";
echo " Total words present in String are ".str_word_count($str1)."<br>";
echo " substring of String is ".substr($str1,3,7)."<br>";
?>
```

5. Write a PHP program to illustrate built in Array manipulation functions.(any 6)
```php
<?php
$input= array( 15, 6, 0, 27, -4, -18, 2, 17);
echo " Smallest element in given array is " .min($input)."<br>";
echo " Largest element in given array is " .max($input)."<br>";

$asc=$input;
sort($asc);
echo " Sorted elements in Ascending order are:";
for($i=0;$i<count($asc);$i++)
echo " ".$asc[$i];
echo "<br>";

$dsc=$input;
rsort($dsc);
echo " Sorted elements in Descending order are:";
for($i=0;$i<count($dsc);$i++)
echo "   ".$dsc[$i];
echo "<br>";

$rev=array_reverse($input);
echo " Reverse elements are:";
for($i=0;$i<count($rev);$i++)
echo "  ".$rev[$i];
echo "<br>";

$random=$input;
shuffle($random);
echo " Shuffled elements are:";
for($i=0;$i<count($random);$i++)
echo "  ".$random[$i];
echo "<br>";
?>
```

6. Write a PHP program that displays a different message based on time of day. For example page should display “Good Morning” if it is accessed in the morning.
```php
<?php
date_default_timezone_set("Asia/kolkata");
$hours= date('H');
if($hours >=0 && $hours <12)
{
echo 'Good morning';
}
else if($hours >=12 && $hours <16)
{
echo 'Good afternoon';
}
else if($hours >=16 && $hours <20)
{
echo 'Good evening';
}
else
{
echo 'Good night';
}
?>
```

7. Write a PHP program that accepts two numbers using a web form and calculates greatest common divisor (GCD) and least common multiple (LCM) of entered numbers.(Use recursive function)
```php
<?php
function getGCD($a, $b)
{
if ($b == 0)
{
return $a;
}
else
{
return getGCD($b, $a % $b);
}
}

function getLCM($a, $b)
{
return ($a * $b) / getGCD($a, $b);
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Find GCD and LCM</title>
</head>
<body>
<h4>GCD and LCM of two numbers</h4>
<?php
if (!isset($_POST['submit']))
{
?>
<form method="post" action="pgm7.php">
Enter two integers: <br />
<input type="text" name="num_1" size="3" />
<p>
<input type="text" name="num_2" size="3" />
<p>
<input type="submit" name="submit" value="Submit" />
</form>
<?php
}
else
{
$num1 = (int)$_POST['num_1'];
$num2 = (int)$_POST['num_2'];

echo "You entered: $num1, $num2";
echo "<br />";
echo "The GCD of ($num1, $num2) is: " . getGCD($num1, $num2);
echo "<br />";
echo "The LCM of ($num1, $num2) is: " . getLCM($num1, $num2);
}
?>
</body>
</html>
```

8. Develop a PHP program to demonstrate constructors and destructors.
```php
<?php
class myclass
{
function __construct()
{
echo "Its a User-defined Constructor  <br>";
}

function __destruct()
{
echo "object is destroyed <br>";
}
}
$obj1=new myclass();
$obj2=new myclass();
?>
```