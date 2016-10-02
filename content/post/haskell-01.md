+++
author = "sonk"
date = "2016-10-02T02:02:28+07:00"
description = "ทำความรู้จักกับภาษา Haskell"
tags = ["Haskell", "functional programming", "programming language"]
title = "Haskell 101.01 Get Started!"

+++

ในวงการโปรแกรมเมอร์ทุกวันนี้ เพื่อนๆpadawanน่าจะเคยได้ยินเรื่องเกี่ยวกับ functional programming ซึ่งเป็นเทรนด์ที่กำลังมาแรงในปัจจุบัน ทำให้ผมอยากลองเล่นภาษาที่เป็น pure functional programming language และภาษาที่ผมเลือกจะศึกษาก็คือ Haskell นั่นเอง
สำหรับภาษา Haskell นี้ผมคิดว่าจะทำเขียนเป็นซีรี่ย์ต่อกันไปเรื่อยๆ เพื่อที่ผมกับเพื่อนๆpadawanจะได้เรียนรู้ไปด้วยกัน
ในตอนแรกนี้ผมจะพาเพื่อนๆมาทำความรู้จัก ติดตั้ง และลองเขียน hello world ในภาษา Haskell กัน

# รู้จักกับ Haskell
ภาษา Haskell เป็น pure functional programming language โดยมี type system เป็น strong static typing
โดยเวอร์ชันแรกของภาษา Haskell ได้ออกมาในปี 1990 และเติบโตอย่างรวดเร็วผ่าน community open source อย่าง GHC (Glasgow Haskell Compiler)

# การติดตั้ง
ภาษา Haskell ได้สนับสนุนการใช้งานในหลากหลายระบบปฏิบัติการ ทั้งใน Linux, Mac OS และ Windows โดยการติดตั้ง Compiler ภาษา Haskell นั้นจะมีเลือกติดตั้งได้ทั้งแบบ minimal ที่จะมีเพียงlibraryพื้นฐาน หรือแบบ Haskell Platform ที่จะมีการติดตั้งlibraryอื่นๆเพิ่มเติมมาด้วย
โดยในที่นี้ จะขอยกตัวอย่างการติดตั้งเฉพาะแบบ Haskell Platform ใน Ubuntu และ Mac OS เท่านั้น

Ubuntu

      $ sudo apt-get install haskell-platform

Mac OS

      $ brew cask install haskell-platform

# Hello, World !! I'm Haskell.
หลังจากที่ได้ติดตั้ง Haskell Platform แล้ว เราก็จะเริ่มเขียน Haskell ด้วยกัน โดย Haskell Platform ก็จะมี Interpreter อย่าง GHCi(Glasgow Haskell Compiler Interactive) ติดมาด้วย ซึ่งจะทำให้เราสามารถเริ่มเขียน Haskell ผ่าน Terminal ได้ทันทีเลย

![hello-world-0](/img/haskell/haskell-01-1.png)

หลังจากนั้น shell ของเพื่อนๆก็จะกลายเป็น Prelude ซึ่งเป็น module ที่รวบรวม standard library ของภาษา Haskell
โดยคำสั่งที่เทียบเท่ากับการ print ของภาษาอื่นๆจะเป็น putStr หรือ putStrLn เพื่อที่จะขึ้นบรรทัดใหม่หลังข้อความที่ต้องการ print

![hello-world-1](/img/haskell/haskell-01-2.png)

# แหล่งไว้ศึกษาเพิ่มเติม
ในปัจจุบันภาษา Haskell มีแหล่งเรียนรู้มากมายที่ไม่ต้องเสียค่าใช้จ่าย ทั้งคอร์สเรียน หนังสือ ผมได้เลือกมาแนะนำเพื่อนๆ ดังนี้

1.  หนังสือ [Learn you a Haskell for Great Good!](http:http://learnyouahaskell.com/) โดยหนังสือจะฟรีในเวอร์ชันอ่านออนไลน์
2.  คอร์ส [Introduction to Functional Programming](https://www.edx.org/course/introduction-functional-programming-delftx-fp101x-0) โดยหลักๆแล้วเนื้อหาคอร์สนี้จะเกี่ยวกับ functional programming โดยผู้สอนจะใช้ภาษา Haskell ซึ่งเป็น pure functional programming language ในการสอน โดยการเรียนนั้นไม่มีค่าใช้จ่ายใดๆ จะเสียเงินเมื่อต้องการซื้อ Certificate ของคอร์สเท่านั้น  
