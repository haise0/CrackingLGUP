# Current Target
#### WinVerifyTrust - located in the signature verification function
# Objective
## 1/22/21 
- Currently working on disabling DLL signature verification to skip "The file ___ is not signed" error
## 1/23/2021 
  I managed to steer it from thinking it isn't signed to thinking that it *is* signed but that the signature is specifically not allowed, by changing the jump zero (JZ) statement in the assembly parts to jump-not-zero (JNZ). Working on steering it towards the verification block and wondering how to trick it into thinking it's all good. The code is comparing a variable (likely something I saw that might have been called the FID) to a value (things like 0xfff2f8a2). I can probably change it to check if it's *not* instead, and have it enter that block of code. However, all that's happening is it's changing the message; I believe the section at the end with WinVerifyTrust is the actual part that checks things out. That's my main target for now.
