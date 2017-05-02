
+++
title = "[CLJS][ReactNative] Create React Native app with ClojureScript"
tags = [
    "ClojureScript",
    "React Native",
    "re-frame",
    "reagent",
    "expo"
]
date = "2017-04-18T20:30:00+07:00"
author = "ziko"
description = ""
+++

ClojureScript is Lisp dialect which compile to Javascript ecosystem. So we can write any Javascript software with ClojureScript.
And ClojureScript is very good language to develop application's UI.
Because it have very good tools like Figwheel and REPL. [Figwheel](https://www.youtube.com/watch?v=j-kj2qwJa_E) is good hot load tool. You don't have to do tedios work like click, click,... to navigate to things you work on. It's work most of the time (AFIK: React try to do hot load but can't catch Figwheel yet). With Figwheel + REPL your feedback loop will be faster than you ever was before XD. 

In this blog I will show you how to get start on React Native withClojureScript (also with [re-frame](https://github.com/Day8/re-frame)
 and [Expo](https://docs.expo.io/versions/v15.0.0/index.html))
 **[more about cljs+expo](https://juxt.pro/blog/posts/native.html)

# Pre-requisite
 - NodeJs [link](https://nodejs.org/en/download/)
 - JDK to run Clojure [link](http://www.oracle.com/technetwork/java/javase/downloads/index.html)  
 - Leiningen - Build tools for Clojure [link](https://leiningen.org/)  

# Setup

1. Install Expo cli

        npm install -g exp


1. Create new project ([Expo+Cljs tutorial](https://docs.expo.io/versions/v15.0.0/guides/using-clojurescript.html))  

        lein new exponent mymobileapp

1. Change directory to mymobileapp and install required node-modules with command  

        yarn
        # or
        npm install

1. Start your project

        exp start

    ![app0](/img/cljs/app0.png)

1. Install [Expo](https://expo.io/) in your mobile then use Expo app to scan QR Code. You will geting error  😝  because you haven't compile your Cljs code yet.  😝 

1. Compile code by start Figwheel server

        lein figwheel

    Figwheel need to connect to your mobile so your terminal will stuck at here

        ;Prompt will show when Figwheel connects to your application


1. Exp will run in tunnel mode by default. You will have to change it to LAN so you mobile and Figwheel server can connect.
    Edit file at `.expo/settings.json`. By cahnge `hostType` to 

        "hostType": "lan"


1. Start exp and use Expo app to scan QR CODE again. In this time it will connected  😝 

        exp start

    ![app1](/img/cljs/app1.png)

1. Figwheel REPL will change to this.
    ![app2](/img/cljs/app2.png)

1. And last step, shake your mobile to invoke Developer Menu then disable Live Reload and Hot Reloading since Figwheel already done that.




# Let's Code
## (very) Bacis ClojureScript  
This is ClojureScript's syntax you need to know to understand some of code in this blog  

1. Vector or Array in other languages.

        ;; Cljs
        [1 2 3 4 5]

        // Js
        [1, 2, 3, 4, 5]


1. Map or HashMap which is like Object in Javascript.

        ;; Cljs
        {
            :name       "ClojureScript"
            :creator    "Rich Hickey"    
        }

        // Js
        {
            "name": "ClojureScript",
            "creator": "Rich Hickey"
        }

1. Function call - "add" is function that have two parameter.

        ;; Cljs
        (add 1 2)

        // Js
        add(1, 2)

    In ClojureScript it treat "," like whitespace.

## Reagent
We have to known reagent before go to re-frame because re-frame is Reagent framework
Reagent is ReactJs wrapper library in ClojureScript which will provide ReactJS interface for your ClojureScript code
In Reagent we can write React component using only ClojurScipt data-sttructor and function (no html or JSX)

    [component attributes child children]  ; Normal form
    [component]                            ; Minimal form
    [Text "Hello World"]                   ; Text is component, "Hello World" is a child

JSX

    <View style={{flex:1, justifyContent: "center", alignItems: "center"}}>
        <Text>Hello React Native</Text>
    </View>

Reagent

    [View                               ; component
        {:style {                       ; attributes
            :flex 1
            :justify-content "center"
            :align-items "center"
        }}
        [Text "Hello React Native"]]    ; child


## re-frame
re-frame is Reagent framework which have a job to do every thing like manage app state except `view` because that's Reagent job.  
re-frame's job is 1 - 4 ( [6-domino cascade](https://github.com/Day8/re-frame#it-is-a-6-domino-cascade))  
![reframe](/img/cljs/reframe-dominos.png)

## Figwheel - Hot Reloading
Let's try by change button's text to "Hello" and change text in alert box to "Hello from Button"
{{< gist jigkoxsee e4478ca1ad4e42112afb06742d0962d2>}}
When you save file it will update immediatly without reload. Click on button you will see that text in alert box already changed.

## REPL
Make alert box appear from your terminal!

1. Goto Figwheel REPL  
1. Switch namespace to where a code live  

        (in-ns 'mymobileapp.core)

1. Call alert function  ( alert function written at line 8 - 9)

        (alert "Hi from REPL!")


- more - [Me try to play with REPL] (https://www.facebook.com/jigkobenja/videos/vb.100000154047359/1638596939488758/?type=2&theater)


# Note - Command list
- Create project

        lein new exponent <project-name>

- Start exp

        exp start

- Start Figwheel Server

        lein figwheel

# Next
I will write a blog how to write a TODO app (if i have time 😁)