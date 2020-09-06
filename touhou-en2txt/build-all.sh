# [bash - '\n' in `IFS](https://unix.stackexchange.com/questions/477959/n-in-ifs-n-is-a-variable)
# IFS=$'\n'

# mindepth will exclude .
# for dir in `find . -mindepth 1 -maxdepth 1 -type d `


for dir in */
	# enter dir
do
	echo $dir
	# [linux - How to cd into a directory with this name &quot;-2&quot; (starting with the hyphen)? - Server Fault](https://serverfault.com/questions/462739/how-to-cd-into-a-directory-with-this-name-2-starting-with-the-hyphen)
	# --强行将目录作为输入，否则无法进入

	# 不要忘记循环体最后返回，否则第二个出现进目录会出错
	# 搞清楚第一个是否出错，如果第一个没错 ，那么多半是没重置好pwd等
	cd -- "$dir"
	bash ../build.sh
	

	cd ..

done
