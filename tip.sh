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
lww_keys[12]='cpu100% 12'




lww_tips[0]='压缩前什么样子解压后就是什么样子，不会自建目录\n
tar -czvf ***.tar.gz 要压缩的文件或目录 #gz\n
tar -cjvf ***.tar.bz2 要压缩的文件或目录 #bz2\n
tar -xzvf ***.tar.gz  #解压gz\n
tar -xjvf ***.tar.bz2 #解压bz2\n'

lww_tips[1]='find  -mindepth 1  -maxdepth 2 -not -name init.sh -o -name  "aaa*" #搜索范围是从第一层到第二次包括第一层和第二层，是一个全局的限制即逻辑符号-a,-o前后都管用\n
find -maxdepth 1 -not -name init.sh # 逻辑not\n
find -maxdepth 1 -not -name init.sh -a -not -name "bbbb*"   #逻辑与\n
find -maxdepth 2  -not -name init.sh -o -not -name "bbbb*"  #逻辑或\n
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
1.  \n
https://juejin.im/post/5d25f1d6f265da1b7638caaf \n'

lww_tips[12]='-u 默认的参数，显示各个进程的CPU使用统计\n
-r 显示各个进程的内存使用统计 \n
-d 显示各个进程的IO使用情况 \n
-p 指定进程号 \n
-w 显示每个进程的上下文切换情况 \n
-t 显示选择任务的线程的统计信息外的额外信息 \n'





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

