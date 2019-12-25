#! d:/Strawberry/perl/bin/perl


#标量
$age = 25;             # 整型
$name = "youj";      # 字符串
$salary = 1445.50;     # 浮点数

print "Age = $age\n";
print "Name = $name\n";
print "Salary = $salary\n";


$str = "hello" . "world";       # 字符串连接
$num = 5 + 10;                  # 两数相加
$mul = 4 * 5;                   # 两数相乘
$mix = $str . $num;             # 连接字符串和数字

print("$str\n$mix\n");

#多行字符串
$string = '
单引号
	—— 多行字符语法！
';

print "$string\n";

print <<EOF;
here
	—— 多行字符语法！
EOF


print "文件名 ". __FILE__ . "\n";
print "行号 " . __LINE__ ."\n";
print "包名 " . __PACKAGE__ ."\n";

# 无法解析
print "__FILE__ __LINE__ __PACKAGE__\n";

#v字符串
$smile  = v9786;
$foo    = v102.111.111;
$martin = v77.97.114.116.105.110; 

print "smile = $smile\n";
print "foo = $foo\n";
print "martin = $martin\n";



#数组
@ages = (25, 30, 40);             
@names = ("google", "youj", "taobao");

print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";

@names = ('google', 'youj', 'taobao');

@copy = @names;   # 复制数组
$size = @names;   # 数组赋值给标量，返回数组元素个数

print "名字为 : @copy\n";
print "名字数为 : $size\n";

#可以以空格分割
@array = qw/这是 一个 数组/;
$size = @array;
print "\$array[0] = $array[0]\n";
print "\$array[1] = $array[1]\n";
print "\$array[2] = $array[2]\n";
print "数组长度为 : $size\n";

#可以以qw//分割
@days = qw/
Mon
Tues
Weds
/;
$size = @days;
print "\$days[0] = $days[0]\n";
print "\$days[1] = $days[1]\n";
print "\$days[2] = $days[2]\n";
print "数组长度为 : $size\n";

#可以以索引赋值
$array[0] = 'Monday';
$array[1] = 'Tuesday';
$array[2] = 'Wednesday';
$array[3] = 'Thursday';
$array[4] = 'Friday';
$array[5] = 'Saturday';
$array[6] = 'Sunday';
$size = @array;
print "\$array[0] = $array[0]\n";
print "\$array[1] = $array[1]\n";
print "\$array[2] = $array[2]\n";
print "\$array[-1] = $array[-1]\n";
print "数组长度为 : $size\n";

@var_10 = (1..10);
@var_20 = (10..20);
@var_abc = (a..z);

print "@var_10\n";   # 输出 1 到 10
print "@var_20\n";   # 输出 10 到 20
print "@var_abc\n";  # 输出 a 到 z




#哈希（字典）
%data = ('google', 45, 'youj', 30, 'taobao', 40);

print "\$data{'google'} = $data{'google'}\n";
print "\$data{'youj'} = $data{'youj'}\n";
print "\$data{'taobao'} = $data{'taobao'}\n";