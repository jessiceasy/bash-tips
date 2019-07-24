# !/bin/sh

lww_keys[0]='tar 0'
lww_keys[1]='find 1'
lww_keys[2]='path 2'
lww_keys[3]='命令行快捷键 3'
lww_keys[4]='csv 4'
lww_keys[5]='vim 5'
lww_keys[6]='vim替换 6'
lww_keys[7]='vim删除 7'
lww_keys[8]='shell脚本转二进制 8'
lww_keys[9]='curl 9'
lww_keys[10]='chmod 10'
lww_keys[11]='cpu100% 11'
lww_keys[12]='pidstat 12'
lww_keys[13]='进制转换 13'
lww_keys[14]='jstack 14'
lww_keys[15]='jmap 15'
lww_keys[16]='jstat 16'
lww_keys[17]='jinfo 17'
lww_keys[18]='gc日志解释 18'
lww_keys[19]='markdown删除线 19'
lww_keys[20]='shelldebug 20'
lww_keys[21]='sed 21'
lww_keys[21]='nginx 22'







lww_tips[0]='压缩前什么样子解压后就是什么样子，不会自建目录\n
tar -czvf ***.tar.gz 要压缩的文件或目录 #gz\n
tar -cjvf ***.tar.bz2 要压缩的文件或目录 #bz2\n
tar -xzvf ***.tar.gz  #解压gz\n
tar -xjvf ***.tar.bz2 #解压bz2\n'

lww_tips[1]='find  -mindepth 1  -maxdepth 2 -not -name init.sh -o -name  "aaa*" #搜索范围是从第一层到第二次包括第一层和第二层，是一个全局的限制即逻辑符号-a,-o前后都管用\n
find -maxdepth 1 -not -name init.sh # 逻辑not\n
find -maxdepth 1 -not -name init.sh -a -not -name "bbbb*"   #逻辑与\n
find -maxdepth 2  -not -name init.sh -o -not -name "bbbb*"  #逻辑或\n 
-type d #查找目录 \n 
-type f #查找文件 \n
find find *.c -exec cp "'"{}"'" /tmp \; #拷贝查找结果至tmp  "\;"为固定格式  需要将大括号外面的双引号变为改为单引号\n'

lww_tips[2]='环境变量设置，脚本转化的可执行文件建议放在~/.path下面\n
zsh 在 ~/.zshrc 结尾增加 export PATH=~/.path:$PATH \n
bash 在 ~/.bashrc 结尾增加 export PATH=~/.path:$PATH \n'

lww_tips[3]='Ctrl + a ：移到命令行首\n
Ctrl + e ：移到命令行尾 \n
Ctrl + 左右方向键 ：按单词移动 \n
Ctrl + k ：从光标处删除至命令行尾 \n
Ctrl + u ：从光标处删除至命令行首 \n'

lww_tips[4]='https://segmentfault.com/a/1190000009179225\n'

lww_tips[5]='vim替换\n
vim删除 \n
vim快捷键 \n'

lww_tips[6]='全局替换:%s/old/new/g\n
替换当前行:s/old/new/g\n
替换从当前光标开始第一个匹配到的:s/old/new/\n
匹配替换50到100行:50,100s/old/new/g\n
语法跟sed的基本一样的\n
空格\s'

lww_tips[7]='全局删除匹配到的行:g/pattern/d\n
删除第1-10行里的匹配到的行:1,10g/pattern/d\n
删除匹配不到的行:g!/pattern/d\n
删除光标以下n行: n dd\n
删除空格行:g/^[\s]*\此处替换为n/d\n
删除n到m行: n,m d\n
单行第n行：n（待删除行）d\n
空格\s'

lww_tips[8]='gzexe 脚本文件名\n'

lww_tips[9]='curl url #直接显示网页内容\n
curl url > filename #将网页内容写入文件  \n
curl -O(大写O) http://www.linux.com/dodo[1-5].JPG  #循环下载，保存为默认名字 \n
curl -o(小写o) filename http:www.linux.com/dodo1.JPG #下载并保存为filename \n'

lww_tips[10]='r=4 w=2 x=1'

lww_tips[11]='方法一\n
1. top找到占用CPU最高的进程   \n
2. pidstat -p <PID> -u -t 1 3 #查找线程线程的消耗1秒统计一次总共统计3次 \n
3. jstack -l PID  /temp/test.log #查看当前线程的信息\n
方法二 arthas \n
1. thread 1 #显示线上1的运行堆栈 \n
2. thread -n 2 #显示当前最忙的2个线程 \n
3. thread #显示所有线程的信息 \n
4. thread -b #显示当前阻塞其他线程的所有线程 \n
5. thread thread -n 3 -i 1000 #显示当前最忙的3个线程 并且每1000毫秒统计一次\n
可能原因  \n
1. 死循环\n
2. 频繁GC \n'

lww_tips[12]='-u 默认的参数，显示各个进程的CPU使用统计\n
-r 显示各个进程的内存使用统计 \n
-d 显示各个进程的IO使用情况 \n
-p 指定进程号 \n
-w 显示每个进程的上下文切换情况 \n
-t 显示选择任务的线程的统计信息外的额外信息 \n
pidstat -p 798 -u -t 1 3 #查找线程线程的消耗1秒统计一次总共统计3次\n'

lww_tips[13]='printf %d 0xac #16转10\n
printf %x 172 #10转16 \n'

lww_tips[14]='-F 强制输出\n
-l 除堆外显示关于锁的附加信息 \n
-m 调用到本地方法的话可以显示C/C++的堆栈\n'

lww_tips[15]='1. -finalizerinfo #显示再F-Queue中等待Finalizer线程执行finalize方法的对象。只在linux平台有效 \n
2. -heap 显示java堆详细信息，如使用哪种回收器，参数配置，分代状况等  \n
一、风险提示\n
1. jmap -dump 这个命令执行，JVM会将整个heap的信息dump写入到一个文件，heap如果比较大的话，就会导致这个过程比较耗时，并且执行的过程中为了保证dump的信息是可靠的，所以会暂停应用。 \n
2. jmap -permstat 这个命令执行，JVM会去统计perm区的状况，这整个过程也会比较的耗时，并且同样也会暂停应用。 \n
3. jmap -histo:live 这个命令执行，JVM会先触发gc，然后再统计信息。 上面的这三个操作都将对应用的执行产生影响，所以建议如果不是很有必要的话，不要去执行。 \n
二、 风险较小的方案:可以用gcore [pid]直接保留，这个的执行速度会比jmap -dump快不少，之后可以再用jmap/jstack等从core dump文件里提取相应的信息，不过这个操作建议大家先测试下，貌似在有些jdk版本上不work \n
1. gcore -o filename pid # 指定要生成的文件路径和名称 \n
2. jmap -dump:format=b,file=dump.hprof /usr/bin/java corename #生成java的dump文件  \n
参考 https://github.com/lwwjxz/Blogs/blob/master/java/jvm/tool.md \n'

lww_tips[16]='https://blog.csdn.net/u012998254/article/details/81045414 \n'

lww_tips[17]='-flag <name>         to print the value of the named VM flag \n
-flag [+|-]<name>    to enable or disable the named VM flag 不是所有参数都能在运行时改变的\n
-flag <name>=<value> to set the named VM flag to the given value  不是所有参数都能在运行时改变的 \n
-flags               to print VM flags \n
-sysprops            to print Java system properties \n
<no option>          to print both of the above \n'

lww_tips[18]='https://blog.csdn.net/oDaiLiDong/article/details/80764479\n'

lww_tips[19]='~~被删除的内容~~\n'


lww_tips[20]='bash -x xxx.sh 如果xxx.sh中执行的脚本yyy.sh则需要 用bash -x yyy.sh的方式执行才能使yyy.sh也显示调试信息。 要显示文件名行号等可以在shell中执行export PS4="'"+${BASH_SOURCE}:${LINENO}:${FUNCNAME[0]}: "'"只在当前 窗口中有效，也可以加载xxx.sh中。https://coolshell.cn/articles/1379.html\n
bashdb \n'

lww_tips[21]=' 单引号和双引号应该都可以 \n
sed "s/my/Hao Chen/g" pets.txt"（s为替换命令，g表示行中的所有匹配到的内容都替换）\n
sed "s/^/#/g" pets.txt  #在行前面增加#，^表示行首 \n
sed "s/$/h/g" pets.txt  #在行尾增加h \n
sed "3s/my/your/g" pets.txt #匹配第三行 \n
sed "3,6s/my/your/g" pets.txt #匹配第三到六行 \n
sed "6,$s/my/your/g" pets.txt #匹配第6行到最后一行 \n
sed "$s/my/your/1" pets.txt #替换每行匹配到的第一个 \n
sed "$s/my/your/1,3" pets.txt #替换每行匹配到的第一到三个 \n
sed "$s/my/your/3g" pets.txt #替换每行匹配到的第三个到所有 \n
更详细参考:   https://coolshell.cn/articles/9104.html\n'

lww_tips[22]=' 测试配置文件语法错误 nginx -t -c 配置文件路径 \n
使修改的配置生效:/usr/local/nginx/sbin/nginx -s reload  \n
更详细参考:   https://github.com/lwwjxz/Blogs/tree/master/nginx \n'






isfind=false
for i in "${!lww_keys[@]}"; do
  keysplt=(${lww_keys[$i]})
  if [ $1 = ${keysplt[0]} ]
  then
    re=${keysplt[1]}
    res=${re//,/ }
	for element in $res 
	do
	    echo ${lww_tips[$element]}
	    isfind=true
	done
  fi
done

if [ "$isfind" = false ]; then
  for i in "${!lww_keys[@]}"; do
    element=(${lww_keys[$i]})
    echo ${element[0]}
  done
fi

