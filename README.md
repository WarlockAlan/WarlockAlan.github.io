### **注意事項:**

* 請保持這個 repo 公開, 不然自動部署將無法工作
* 請不要刪除 issue, 他們將是博客的評論
* 請不要改動 Personal Settings 裡的任何一項

### **原理:**

* 博客用 Hexo 部署到 Gitpages 上面.
* 你可以訪問你的 [TravisCi](https://travis-ci.com) , 用 Github 登陸, 它幫助你自動構建你的博客
* 生成的文件放在 `gh-pages` 這個分支裡面, 你可以看到

### **如何寫博客:**

1. 訪問git倉庫中的 [source/_posts](https://github.com/WarlockAlan/WarlockAlan.github.io/tree/main/source/_posts)
2. 點擊右上角的 Add File -> Create a new file

![image.png](https://i.loli.net/2021/03/27/Y5zTPoBIlZtibXf.png)

3. 如上圖所示, 輸入文件名, 格式為 `標題.md`
4. 將下列模板填入大片空白中 ( 按照需求修改)


```
---
title: 此處寫入標題
date: 2099-12-31 23:59:59
categories:
 - 你的分類
 - 你的分類(如果有第二個)
---

# H1
## H2
### H3

normal text
**bold text**
*italicized text*
> blockquote
`code`
[title](https://www.example.com)
![alt text](image.jpg)
~~The world is flat.~~

1. First item
2. Second item
3. Third item

- First item
- Second item
- Third item

- [x] Write the press release
- [ ] Update the website
- [ ] Contact the media

| Syntax | Description |
| ----------- | ----------- |
| Header | Title |
| Paragraph | Text |


Here's a sentence with a footnote. [^1]
[^1]: This is the footnote.
```


5. 你隨時都可以通過 Preview 按鈕來預覽自己寫好的博文.
6. 點擊最下方的 Commit Changes 綠色按鈕發布博文

![image.png](https://i.loli.net/2021/03/27/yZESYXOAhMHGlU3.png)


7. 將電腦放置一段時間讓其自然生成, 刷新頁面後若途中黃色點變為綠色, 或者本教程開頭的圖標顯示為 Passing, 則成功.



如果網頁沒有顯示, 記得刷新瀏覽器;  
如果小圓點變為紅色, 檢查你的博文格式有沒有出問題;  
當然你也可以隨時聯繫我.
