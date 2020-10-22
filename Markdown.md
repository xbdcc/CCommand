# Markdown语法指南

## 标题
使用`#`可以表示1-6级标题，一个`#`代表一级标题，两个`#`代表二级标题，以此类推
- 如一级标题`# 这是一级标题`显示效果：
  # 这是一级标题
- 如二级标题`## 这是二级标题`显示效果：
  ## 这是二级标题

## 换行
- 使用两个或两个以上空格键换行，此方法对段落有效，对标题无效
- Markdown中也可以嵌套Html语法，所以也可以用<br>对段落或标题换行

## 列表
可使用一个`-`或`*`或`+`加空格后输入文本，有序列表则为数字`1.`，`2.`等等
- 列表`- `符号显示效果
* 列表`* `符号显示效果
+ 列表`+ `符号显示效果
  + 二级列表，`+ `前键入一个Tab效果
    + 三级列表，`+ `前键入两个Tab效果，以此类推
    
1. 有序列表`1. `显示效果
2. 有序列表`2. `显示效果

## 表格
- 表格中每两项之间以`|`符号分隔开，首项前面和尾项后面可有可无
- 第一行为标题
- 第二行为表格内容文本对齐方式，如`:--`为巨左对齐，`:-:`为局中对齐，`--:`为居又对齐，若为`---`则仅标题居中默认文本居左对齐。其中`-`都可以有多个
- 第三行及之后为表格内容   
如例：
```
|时间|行程|附录|
|---|:---|:--|
|4.29|08:50 康乐园到深圳湾口岸|打的或公交直达半小时左右|
|4.29|09:30 到达深圳湾口岸11/12号车位坐9:45车到香港机场|一小时半左右|
|4.29|11:30左右香港机场等机|13:25-14:25 香港机场-内排机场|
|4.29|16点左右内排机场打的去silk queen hotel|
|4.29|17点半左右吃晚饭逛还剑湖，河内大教堂|
|4.30|八点多酒店吃早餐|
|4.30|晚上七点半晚餐|
```
显示效果如下：
|时间|行程|附录|
|---|:---|:--|
|4.29|08:50 康乐园到深圳湾口岸|打的或公交直达半小时左右|
|4.29|09:30 到达深圳湾口岸11/12号车位坐9:45车到香港机场|一小时半左右|
|4.dddd29|11:30左右香港机场等机|13:25-14:25 香港机场-内排机场|
|4.29|16点左右内排机场打的去silk queen hotel|
|4.29|17点半左右吃晚饭逛还剑湖，河内大教堂|
|4.30|八点多酒店吃早餐|
|4.30|晚上七点半晚餐|

再如:  
```
日期|路线|时间|车费
:-:|:-:|:-:|:-:
12月22日|蛇口港——九洲港——拱北口岸——澳门|8:00——9:00——9:50——11:00|船票125，公交1
12月23日|九洲港——蛇口港|上午坐船回深圳
```

显示效果如下
日期|路线|时间|车费
:-:|:-:|:-:|:-:
12月22日|蛇口港——九洲港——拱北口岸——澳门|8:00——9:00——9:50——11:00|船票125，公交1
12月23日|九洲港——蛇口港|上午坐船回深圳

## 引用
### 区块引用
- 使用`>`符号

### 显示图片
- `![图片信息](图片链接)`  
如`![小不点](http://xbdcc.cn/xbd/xbd.jpg)`显示效果如下：  
![小不点](http://xbdcc.cn/xbd/xbd.jpg)

- 表格显示图片，可以用上面的表格方式，内容里填图片就行了，如：

|微信赞赏|支付宝打赏|微信转账|
|:-:|:-:|:-:|
|![微信赞赏](http://xbdcc.cn/image/GrabRedEnvelope/wechat_reward.jpg)|![支付宝搭上](http://xbdcc.cn/image/GrabRedEnvelope/alipay.jpg)|![微信转账](http://xbdcc.cn/image/GrabRedEnvelope/wechat.jpg)|

- 也可以以Html显示，如：
```html
<figure>
<img src="http://xbdcc.cn/image/GrabRedEnvelope/wechat_reward.jpg" height="300"/>
<img src="http://xbdcc.cn/image/GrabRedEnvelope/alipay.jpg" height="300"/>
</figure>

## 打赏
<table>
    <tr>
        <td>
            <img src="http://xbdcc.cn/image/GrabRedEnvelope/wechat_reward.jpg" height="300"/>
        </td>
        <td>
            <img src="http://xbdcc.cn/image/GrabRedEnvelope/alipay.jpg" height="300"/>
        </td>
    </tr>
</table>
```



### 锚点
- 通过锚点指向超链接，如
```
[Carlos]: (https://github.com/xbdcc/ "Github of Carlos")
[@Carlos][Carlos]
```

- 通过锚点跳转到标签`id`指定位置 
```
[点击跳转查看](#jump)
<p id = "jump">跳转到的位置</p>
```
示例如：
[点击跳转查看](#jump)    
<p id = "jump">跳转到的位置</p>

- 通过锚点跳转到指定路径
```
[command_scripts]:command_scripts    
[command_scripts][command_scripts]
```

示例如：   

[command_scripts]:command_scripts    
[command_scripts][command_scripts]

### 超链接
- `[显示文本](跳转链接)`，如`[CComand](https://github.com/xbdcc/CCommand/)`显示效果如:[CComand](https://github.com/xbdcc/CCommand/)    
- `[显示文本](跳转链接 "文本显示标题")`，如`[CComand](https://github.com/xbdcc/CCommand/, "Command")`显示效果如:[CComand](https://github.com/xbdcc/CCommand/ "Command")    
再如其他例，参考链接：  
- [Markdown基本语法](https://files.cnblogs.com/files/artwalker/o_skirt.bmp）
- [Markdown在线编辑器](http://www.mdeditor.com/)

### 参考链接
- [Typora 完全使用详解](https://sspai.com/post/54912)



