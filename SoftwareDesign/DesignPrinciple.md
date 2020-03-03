# 设计原则

## 常见原则

### SOLID

#### Single Responsibility Principle (SRP)

单一职责原则：一个类只负责一件事，并且把这件事做好。  
单一原则被认为是高内聚低耦合在面向对象设计的引申。

#### Open Closed Principle(OCP)

开闭原则， 对扩展开放、对修改关闭。

#### Liskov Substitution Principle(LSP)

里氏替换原则，子类对象可以替换任意基类出现的地方，并且能够不改变对外的表现。

常见违反LSP原则的例子就是在基类中含有if-else结构判断子类类型的代码。

#### Interface Segmentation Principle(ISP)

接口隔离原则： 把功能实现在接口中，而不是类中；使用多个专门的接口比一个总接口要好。

#### Dependency Inverse Principle(DIP)

依赖倒置原则：高层模块不应当依赖低层的具体实现，而是应当依赖于高层的抽象。  
常见的依赖倒置原则的例子就是Tomcat与部署在容器中的Java应用之间的关系，Tomcat属于高层模块，他依赖的并不是每一个Java应用的实现，而是符合J2EE标准的Sevelet抽象。

### DRY - Don`t Repeat Yourself

不要重复自己，这里的重复指代的对象有实现逻辑（用一样的方式做事）、功能语义（做的是同一件事）和代码执行。  
实现逻辑重复但是功能语义不同，不算违反DRY原则；
功能语义相同但是实现逻辑不同，依然违反DRY原则；

### KISS - Keep It Stupid Simple

在不影响后续系统扩展性的前提下，尽可能选择简洁的设计。

### YAGNIT - You Ain't Ganna Need It

原意是不要为未发生的事情过早设计，强调避免过早设计的原则。

### Law of Demeter

迪米特法则又称为最小知识原则和“不要和陌生人说话”原则。

### Convention Over Configuration

惯例优于配置原则，常见的例子：Spring profile 配置惯例

### Separation of Concerns

关注点分离原则，通过各种手段将需要关注的关注点分开，如果问题能够分解成独立且规模较小的问题，就是相对容易解决的。相反规模较大，且关注点多的问题对于能力有限的程序员是困难的，并不能兼顾到问题的各个方面。
