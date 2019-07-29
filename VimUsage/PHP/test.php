<?php
$a = 'Kevin';
$b = 'Cassie';
$c = 'Lowry';
$d = 'Nathe';

$students = ['a','b','c','d'];

foreach($students as $seat) {
  echo $$seat . "\n";
}
