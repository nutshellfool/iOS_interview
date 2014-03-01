#iOS 进阶面试题##写在最前本文档旨在列出iOS开发中常见的技术问题，帮助准备iOS技术面试的程序员梳理思路。作为iOS面试题系列文档中的一员，本文的目标读者为具有一定开发经验的高级开发者。注： 本文中的部分题目可以作为面试iOS 技术Leader的笔试题目。##内容概括：###Objective-C 语言高级特性 – Block，多线程###内存管理 – Objective-C 内存管理方式，常见的内存问题####ARC
Q: 什么是ARC？他与GC有什么区别？
   
Q: 引用计数是什么技术？
   
Q: 什么是循环引用计数？ARC中会造成循环引用计数的情况有哪些？为了避免这些有哪些需要注意的规则？
####MRC
~~Q: 什么是MRC？它与ARC有什么区别和联系~~

###性能调优###测试相关Q：出现了一个不会100%重现的bug，可能的原因有哪些？能举例说明下你碰到的情况么？  
A:  
	1. 程序中含有随机数或类似代码  
	2. 线程问题 （multithread is devil）  
	3. 特定的网络数据
	4. 未意料到的复杂的重现重现条件  ###设计模式


###Refactor


###iOS 安全

##参考资料：

设计模式：[邓同学的百度面试](http://studentdeng.github.io/blog/2014/02/11/baidu-interview/)
iOS 安全：[hackingiOS -- 念茜CSDN博客](http://blog.csdn.net/column/details/hackingios.html)
objc.io: [objc.io](http://objc.io)
objc.io 文章翻译：[objc.io 中文翻译列表](http://iosinit.com/?p=787)