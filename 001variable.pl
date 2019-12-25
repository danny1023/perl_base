#! d:/Strawberry/perl/bin/perl

$age = 25;             # 整型
$name = "youj";      # 字符串
$salary = 1445.50;     # 浮点数

print "Age = $age\n";
print "Name = $name\n";
print "Salary = $salary\n";

@ages = (25, 30, 40);             
@names = ("google", "youj", "taobao");

print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";

%data = ('google', 45, 'youj', 30, 'taobao', 40);

print "\$data{'google'} = $data{'google'}\n";
print "\$data{'youj'} = $data{'youj'}\n";
print "\$data{'taobao'} = $data{'taobao'}\n";