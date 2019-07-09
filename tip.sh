# !/bin/sh

lww_keys[0]='tar 0'
lww_keys[1]='find 1'
lww_keys[2]='path 2'
lww_keys[3]='命令行快捷键 3'
lww_keys[4]='csv 4'
lww_keys[5]='vim 5'
lww_keys[6]='vim替换 6'
lww_keys[7]='vim删除 7'




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
  for element in ${lww_keys[@]}
  do
    echo $element
    echo "\n"
  done
fi

