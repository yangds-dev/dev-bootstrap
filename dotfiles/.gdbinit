
# 常用的 GDB 配置
# 关闭分页，避免输出被 --More-- 中断
set pagination off
# 关闭执行命令时的确认提示
set confirm off
# 以更易读的格式打印结构体和类
set print pretty on
# 根据动态类型打印对象
set print object on
# 打印静态成员
set print static-members on
# 打印虚函数表信息
set print vtbl on
# 不限制数组和容器元素的打印数量
set print elements 0
# 启用 C++ 符号反修饰
set print demangle on
# 单步执行时显示下一行源码和汇编
set disassemble-next-line on
# 允许对尚未加载的共享库设置断点
set breakpoint pending on
# 保存命令历史
set history save on
# 指定命令历史文件
set history filename ~/.gdb_history
# 设置命令历史最大保存条数
set history size 10000

# 显示源码和汇编
# 使用 Intel 语法显示反汇编
set disassembly-flavor intel
# 启用终端样式显示
set style enabled on
# 启用 debuginfod 自动下载调试信息
set debuginfod enabled on

# 常用别名
# 查看局部变量、函数参数和完整调用栈
define ll
	info locals
	info args
	backtrace
end

# 在 main 函数入口设置断点
define bmain
	break main
end

# 打印包含局部变量的完整调用栈
define btfull
	backtrace full
end

# 查看所有寄存器
define regs
	info registers
end

# 查看当前函数参数
define cargs
	info args
end

# 查看当前局部变量
define clocals
	info locals
end

# 对指定表达式设置访问断点
define watchpoint
	awatch $arg0
end

# 退出时不再询问确认
# 确保退出钩子中关闭确认提示
define hook-quit
	set confirm off
end
