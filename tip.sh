# !/bin/sh

lww_keys[0]='tar 0'
lww_keys[1]='find 1'

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



for i in "${!lww_keys[@]}"; do
  keysplt=(${lww_keys[$i]})
  if [ $1 = ${keysplt[0]} ]
  then
    re=${keysplt[1]}
    res=${re//,/ }
	for element in $res 
	do
	    echo ${lww_tips[$element]}
	done
  fi
done