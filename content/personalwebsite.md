---
author:
- Kevin Cordero
date: October 1rd, 2024
subtitle: LUG x WICS workshop
title: Personal Website Workshops
---

# Personal Website Workshop
Design to Deployment

## Introductions
Hi! I’m Nandana
- Senior majoring in CS
- Co-President of WiCS
- Might have been your 251 TA
- Likes coding
- Might be bad at it
- Built my personal website this summer!

Hi. I'm Kevin
- Senior majoring in CS
- Treasurer of LUG
- Might be your 341 TA
- Likes Linux
- Might be good at it
- Also built my personal website this summer.

## Our Credentials

Here are our personal websites:  
Nandana : https://nandana.dev  
Kevin : https://olympicene.dev

Here are some other personal website from our friends we thought you might like:  
Flori (WiCS Dev Lead) : https://cheetodustflori.github.io/Personal-Website  
Megha Nayar (UIC student) : https://meghanayar.com

## Expectations
__This is not a tutorial.__ We're not gonna teach you React or any other framework.  
We're going over the process of building a person website from inspiration, design, developement, and deployment. In addition we'll give you some structure on where to start as well as some additional resources/ general advice.

## Why should you build your own website?
It's a personal showcase of you. You can show off literally anything. Past projects, your resume/achievements, a blog, games, links to other social media.   
It's also a great side project to begin with. We all want to build our own projects outside of school and a personal website is a great place to start. A static website is one of hte simplest things to build.  
__Also, recruiters love it.__  
Every Internship application asks for a 'Personal Website URL'

## Why not just use Workpress/Squarespace
Three main reasons. First off you miss out on important technical skills. The experience you gain from creating designing and deploying a website is huge. Second is you are limited in your creativity. You can make whatever you want and using a tool only limits what you can do. If you know the tools you can literally make whatever you want. And lastly is paywalls. All these tools are open source why should you pay for using them?

## Build Process

### Inspiration

Everyone needs inspiration don't just copy entire websites, steal individual ideas.  

Kevin's Inspiration:
- https://ttntm.me/
- http://bettermotherfuckingwebsite.com/
- Kept track of their inspiration with a list of bookmarks gathered in a doc.

Nandana’s Inspiration:
- https://v4.brittanychiang.com/
- https://www.taniarascia.com/
- Kept track of ideas through Figma

Other Resources for Inspiration:
- https://aboutideasnow.com An index of other personal websites
- https://webdesignmuseum.org
See how design has changed over time

### Design

[Figma](https://www.figma.com/) is a powerful tool for designing websites. Both of us used Figma, but neither of use started in Figma

Kevin's Design Start:
- Did not have a clear ideas of what I wanted
- Combined components of sites that I was inspired by
- Slowly understood what I liked
- Finalized on having Blog, Links,Projects, and Resume,


Nandana’s Design Start:
- Knew what I wanted to show first: Aboue me, Experience, Projects, Resume, Leadership
- Drew abstracts ideas of what each page should look based off inspiration

After putting some ideas on paper, you have to decide more general aspects of your website. For example:

Color Pallete: https://coolors.co  
Contrast Check: https://realtimecolors.com  
Fonts: https://fonts.google.com

Design Demos:
- [Kevin](https://www.figma.com/design/CwnoFYCbos76AovTIW4UKO/Personal-Website?node-id=0-1&node-type=canvas&t=Cx83TCAhhvU5Guix-0)
- [Nandana](https://www.figma.com/design/1vmCPqD24Zb9LzfLAcdZyr/nandana.dev?node-id=0-1&t=H7UbAPrrVmPziP4z-1)
- [Flori](https://www.figma.com/design/IWHFUp2ntpZHx991wrDvN3/personal-website?node-id=0-1&t=nXk7Asqfz5NJfdCU-1)

General Notes:

Design with Intention -
First understand the goals of your project then design along those constraints

Be Realistic - 
Be aware of your own abilities but don’t be afraid to experiment with new things!

As Detailed as Possible - 
It’s not a priority but a concise vision really makes development easy

How to learn Figma? Just play around with it, its very intuitive. You may want to look at a tutorial but you really don't need to finish it to begin prototyping on Figma.

### Developement

The first, arguably most important step in developement is choosing a tech stack.  What is a tech stack? In the broad strokes a tech stack is __the set of programming tools and languages that you use to build a project__.

Nandana's Tech Stack:
- React.js
- Tailwind CSS
- p5.js

React is a javascript frame work that helps you code out the website. All a developer needs to know is that it makes HTML reuse a lot easier.  

Tailwind helps with styling within HTML. It makes CSS in less lines and was used because she wanted to learn it.  

p5.js was used for animations. It's a javscript library that helps you make cool graphics. She learnt it through her ART 151 class.

Kevin's Tech Stack:
- Astro.js
- Typescript
- SCSS

Astro is a framework used for coding out the website. Its similar to react in how it makes component reuse easier. It also optimizes pages for loading faster as well as allowing you to use different frameworks like React, Vue, and Svelt all at once.

Typescript is used in lieu of Javascript because of developer preference for static typing.

SCSS is for styling and simplies CSS inheritence for a smoother developement experience.

However you do not need to use any/all of these technologies.  

You can make a good looking site even just with HTML and CSS 

We chose our tech stack because…
- It was what we were familiar with
- A need for Intractability
- Seeking flexibility for - unforeseen changes
- Ease of deployment
- Wanting to learn something new
- All the cool kids use this new tool
- Changing things about - Javascript we didn't like
- Adding features we miss from other languages
etc. 

There is also an external Tech Stack, comprised of all the tools we used to help us write the website in the first place.

Github - Used for version control. We stored our files in Github. It’s just a platform to keep all your code outside of your computer and keep a history. Learning how to use Github is a really important skill.

VSCODE - Used as an IDE or [I]ntegrated [D]evelopment [E]nvironment. Just where you write the code for the website.

NPM - Used to manage any packages or third party libraries that we would use for our website. It's where you download other people's code (to help your code)
and manages the various libraries you download.

### Deployment

What does it mean to deploy a website?  

When you create a website you are only editing it locally, on your computer. Only you can see this website.

When you deploy the website in public you make it so that your website is publicly visible, usually through a Domain Name like https://google.com or https://amazon.us.  

Domain names usually cost money - but some sites will let you use theirs for free EX. https://cheetodustflori.github.io/Personal-Website/

What did we use to deploy our site?

Kevin's Deployment:
- Github Pages - free
- I linked it with my own domain that I bought through porkbun.com/. 
- How to deploy using Github Pages : https://docs.github.com/en/pages/quickstart
- Very easy, no configuration necessary

Nanadana's Deployment
- Deployed using Amazon Web Services on an ubuntu instance of Lightsail. 
- You rent cloud space from Amazon (which is Amazon’s computer) and I used that to self host using Nginx.
- This was harder, took me a while to figure out but I really wanted to learn how it works. 
- Here is my notion guide

We recommend two main ways of deploying your website.

Vercel, Netlify, Cloudflare Pages, Github Pages - Really easy ways to get a website up, may cost money if you want to scale. But practiaally that will never happen in a personal site.

Self Hosting - Might be a bit harder, but you’ll learn a lot.

## Closing Advice

Have a flushed out Figma design so your coding experience is much easier  

Design is important to have a smooth coding experience but aesthetics are subjective so do whatever you want.  

The hardest part is always starting. Don’t be intimidated by what others have done.  

Tons of resources online, if you want to learn something it is already out there so take advantage of it!  

You have practically absolute freedom to put whatever you want on there, it’s literally your own. 




