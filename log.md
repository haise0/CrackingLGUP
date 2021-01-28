# Current Target
#### WinVerifyTrust - located in the signature verification function
# Objective
## 1/22/21 
- Currently working on disabling DLL signature verification to skip "The file ___ is not signed" error
## 1/23/2021 
  I managed to steer it from thinking it isn't signed to thinking that it *is* signed but that the signature is specifically not allowed, by changing the jump zero (JZ) statement in the assembly parts to jump-not-zero (JNZ). Working on steering it towards the verification block and wondering how to trick it into thinking it's all good. The code is comparing a variable (likely something I saw that might have been called the FID) to a value (things like 0xfff2f8a2). I can probably change it to check if it's *not* instead, and have it enter that block of code. However, all that's happening is it's changing the message; I believe the section at the end with WinVerifyTrust is the actual part that checks things out. That's my main target for now.
## 1/27/01
  The update is... that there is no update. I've been overwhelmed with some other things and haven't had a whole lot of time to be working on this. On top of that, I've been refamiliarizing myself with where I'm at and what to do, but got tangled up in indiscernable versions I've made, patches that I haven't been tracking, and files just everywhere that have been impossible to keep track of or differentiate. I am getting some software for project management soon, and I've archived all of the old files. I'm going to take what I've learned and start fresh; for better or worse. 
I will be restarting this log; this one will be relabeled as oldlog.md and stored in the ARCHIVE folder in the main branch.
To new beginnings.
---
