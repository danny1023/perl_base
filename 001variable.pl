#! d:/Strawberry/perl/bin/perl


######################标量
$age = 25;
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



######################数组
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


@array = (1,2,3);
#下面给array添加索引为50的一个元素，整个数据长度增加为51
$array[50] = 4;

$size = @array;
$max_index = $#array;

print "数组大小:  $size\n";
print "最大索引: $max_index\n";



# 创建一个简单数组
@sites = ("google","youj","taobao");
print "1. \@sites  = @sites\n";

# 在数组结尾添加一个元素
push(@sites, "baidu");
print "2. \@sites  = @sites\n";

# 在数组开头添加一个元素
unshift(@sites, "weibo");
print "3. \@sites  = @sites\n";

# 删除数组末尾的元素
pop(@sites);
print "4. \@sites  = @sites\n";

# 移除数组开头的元素
shift(@sites);
print "5. \@sites  = @sites\n";


#切割数组
@sites = qw/google taobao youj weibo qq facebook 网易/;

@sites2 = @sites[3,4,5];
@sites3 = @sites[3..5];
print "@sites2\n";
print "@sites3\n";


#替换数组部分元素
@nums = (1..20);
print "替换前 - @nums\n";
splice(@nums, 5, 5, 21..25); 
print "替换后 - @nums\n";

#字符串切割
# 定义字符串
$var_test = "youj";
$var_string = "www-youj-com";
$var_names = "google,taobao,youj,weibo";

# 字符串转为数组
@test = split('', $var_test);
@string = split('-', $var_string);
@names  = split(',', $var_names);

print "$test[3]\n";
print "$string[2]\n";
print "$names[3]\n";

#数组转字符串
# 定义字符串
$var_string = "www-youj-com";
$var_names = "google,taobao,youj,weibo";
# 字符串转为数组
@string = split('-', $var_string);
@names  = split(',', $var_names);
# 数组转为字符串
$string1 = join( '@', @string );
$string2 = join( '#', @names );

print "$string1\n";
print "$string2\n";



# 定义数组
@sites = qw(google taobao youj facebook Google2);
print "排序前: @sites\n";

# 对数组进行排序
@sites1 = sort(@sites);
print "排序后: @sites1\n";

# 对数组进行小写转换，再进行排序
@lstring = split(',', lc(join(',', @sites)));
@sites2 = sort(@lstring);
print "小写后排序: @sites2\n";

# 定义数组
@sites = qw(google taobao youj facebook);
print "网站: @sites\n";

# 设置数组的第一个索引为 1
# $[ = 1;
# Assigning non-zero to $[ is no longer possible at d:\perl_git\perl_base\tempCodeRunnerFile.pl line 5.

print "\@sites[1]: $sites[1]\n";
print "\@sites[2]: $sites[2]\n";


#合并数组
@numbers = (1,3,(4,5,6));
print "numbers = @numbers\n";
@odd = (1,3,5);
@even = (2, 4, 6);
@numbers = (@odd, @even);
print "numbers = @numbers\n";


$var = (5,4,3,2,1)[4];
print "var 的值为 = $var\n";
@list = (5,4,3,2,1)[1..3];
print "list 的值 = @list\n";





######################哈希（字典）
%data = ('google', 45, 'youj', 30, 'taobao', 40);

print "\$data{'google'} = $data{'google'}\n";
print "\$data{'youj'} = $data{'youj'}\n";
print "\$data{'taobao'} = $data{'taobao'}\n";