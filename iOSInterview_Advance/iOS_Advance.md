# iOS 进阶面试题

## 写在最前

本文档旨在列出iOS开发中常见的技术问题，帮助准备iOS技术面试的程序员梳理思路。
作为iOS面试题系列文档中的一员，本文的目标读者为具有一定开发经验的高级开发者。
注： 本文中的部分题目可以作为面试iOS 技术Leader的笔试题目。

## 内容概括

### Objective-C 基础  

Q: @property 的本质是什么？ ivar？  

A:  简单的说就是 `@property = ivar + getter + setter`, objective-c 2.0 之后 属性成为语言的重要特性，在正规的 OC 编码风格中，getter setter 有着严格的命名规范  
例如以下这段代码在外部看来就是等效的  
1

```Objective-C
@interface User : NSObject
@property NSString *name
@end
```

2 

```Objective-C
@interface User : NSObject
- (NSString *) name;
- (void) setName:(NSString *)name;
@end
```

ivar getter setter 是怎样生成并添加到类中的？  
`自动合成 synthesis`  在定义好属性之后，编译器（注意，是编译器，这个事情发生在在编译阶段）会依据上面的规则自动生成getter、setter 方法， 同时会生成一个以 `_`开头的ivar 当然你也可以指定ivar 的名称

Q: @property 中有哪些属性关键字？  

A:  四类  

1. 原子性 （atomic，nonatomic）

2. 读写（readwrite, readonly）

3. 内存管理（assign, strong, weak, unsafe_unretained,copy）

4. getter、setter

Q: 向一个nil对象发送消息会发生什么？  

A: 

Q: 什么时候会报 unrecognized selector 异常？

A： 当调用对象（子类，各级父类）中不含有对应方法的时候，并且依旧没有给出“消息转发”的具体方案的时候，程序在运行时会crash并抛出 unrecognized selector 异常  

objective-c 中的每个方法在运行时会被转为消息发送`objc_msgSend(reciver, selector)`

例如 `[foo bar]` 就会被转化为 `objc_msgSend(foo, @selector(bar))`  

运行时会根据对象(reciever) 的isa 指针找到该对象所对应的类，然后会依次在对应的类，父类，爷爷类，根类中找对应的方法

Q：如何debug BAD_ACCESS 错误？

A:  

### Objective-C 语言高级特性 – Block，多线程

### 内存管理 – Objective-C 内存管理方式，常见的内存问题

Q: objective-C对象的内存布局是怎样的？

A:  

#### @property 内存相关

Q: weak关键字使用的场景？与assign有什么不同？

A：  

Q：copy关键字使用的场景？如何使用？

A：

#### ARC

Q: 什么是ARC？他与GC有什么区别？

Q: 引用计数是什么技术？

Q: 什么是循环引用计数？ARC中会造成循环引用计数的情况有哪些？为了避免这些有哪些需要注意的规则？

#### MRC

~~Q: 什么是MRC？它与ARC有什么区别和联系~~

### 性能调优

### 测试相关

Q：出现了一个不会100%重现的bug，可能的原因有哪些？能举例说明下你碰到的情况么？  
A:  

1. 程序中含有随机数或类似代码  
2. 线程问题 （multithread is devil）  
3. 特定的网络数据
4. 未意料到的复杂的重现重现条件  

### 设计模式

### Refactor

### iOS 安全

## 参考资料

设计模式：[邓同学的百度面试](http://studentdeng.github.io/blog/2014/02/11/baidu-interview/)

iOS 安全：[hackingiOS -- 念茜CSDN博客](http://blog.csdn.net/column/details/hackingios.html)

objc.io: [objc.io](http://objc.io)

objc.io 文章翻译：[objc.io 中文翻译列表](http://iosinit.com/?p=787)
