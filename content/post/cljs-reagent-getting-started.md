+++
title = "Cljs Reagent Getting Started"
date = 2017-12-26T22:26:01+07:00
tags = [
    "ClojureScript",
    "re-frame",
    "reagent",
]
draft = true
+++



# เครื่องมือที่ต้องใช้
 - NodeJs runtime [ดาวน์โหลดได้จากที่นี่](https://nodejs.org/en/download/)
 - JDK สำหรับรัน Clojure [ดาวน์โหลดได้จากที่นี่](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
 - Leiningen เป็น Build tools สำหรับ Clojure [ดาวน์โหลดได้จากที่นี่](https://leiningen.org/)

# สร้างโปรเจค
โปรเจกนี้เราจะสร้างโดยใช้ reagent-frontend-template

```
lein new reagent-frontend <ชื่อโปรเจค>
// ในที่นี้จะตั้งชื่อว่า reagent-example  จึงใช้คำสั่งดังนี้
lein new reagent-frontend reagent-example
```

จากนั้นให้ cd เข้าไปในโปรเจค แล้วรันด้วยคำสั่ง
```
lein figwheel
```
สักพัก browser ก็จะเปิดเว็บ `http://localhost:3449/index.html` ขึ้นมา ซึ่งตอนนี้จะมีหน้าตาแบบนี้
![0](/img/cljs-reagent/0-started.png)


# โครงสร้างไฟล์ของโปรเจค
```
- /
  - /public
  |-- /css
  |-- /js
  |-- index.html
  - /src
  |-- reagent_example
   |-- core.cljs
```



# Reagent คือ
อะไร

# Hiccup Syntax
what is it?
 - tag
 - attributes
 - child
 - class
 - id

# Component

# Loop

# Function