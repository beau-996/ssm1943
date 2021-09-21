07-ssm:SSM整合开发
SSM:SpringMVC + Spring + mybatis

SpringMVC:视图层，界面层，负责接收请求，显示处理结果
Spring :业务层，管理service，dao,工具类对象
mybatis:持久层，访问数据库

用户发起请求，springMVC接收请求--spring中的service对象--MyBatis处理数据

SSM整合，也交做SSI(IBatis),整合中有容器
1.第一个springMVC容器，管理Controller控制器对象
2.第二个容器 spring容器，管理service,Dao,工具类对象
我们要做的是把使用的对象交给合适的容器创建，管理。
把Controller还有web开发的相关对象交给springMVC容器，这些web用的对象写在springmvc配置文件中

service,dao对象定义在spring的配置文件中，让spring管理这些对象

spring容器和springMVC容器是有关系的，关系已经确定好了
springMVC容器是spring容器的子容器，类似Java中的继承，子可以访问父的内容
在子容器中的Controller是可以访问父容器中的service对象，就可以实现controller使用service对象

实现步骤；
使用bjpowernode的mysql库，表使用Student

1.新建maven web项目
2.加入依赖
springMVC,spring,mybatis,三个框架的依赖还有Jackson，MySQL驱动，druid连接池
jsp,servlet依赖

3.写web.xml
 1.注册DispatcherServlet ,目的：1.创建springmvc容器对象，才能创建Controller对象
                               2.创建的是servlet，才能接收用户请求

 2.注册spring 的监听器：ContextLoaderListener:目的；创建spring的容器对象，才能创建service，dao对象

 3.注册字符集过滤器，解决post请求乱码问题

 4.创建包，controller包，service包，dao ,实体类包名创建好

 5.写spring，springmvc，mybatis的配置文件
   1.springMVC配置文件
   2.spring配置文件
   3.mybatis主配置文件
   4.数据库的属性配置文件
6. 写代码，dao接口和mapper文件，service和实现类，controller，实体类
7.写jsp页面
