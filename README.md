# The Project

## To-Do
### Current
#### ARB
- [ ] Make sense of relevant functions and variables
- [ ] Prepare a patch to bypass the failure of the ARB check
- [ ] Confirm functionality of the patch 
- [ ] Survey the OPID function and any relevant functions
- [ ] Upload functions in assembly and c++ to /opid
- [ ] Prepare a patch to bypass the check and/or the failure condition for OPID
- [ ] Confirm functionality for the OPID patch
- [ ] Find a way to distribute our patched binary - perhaps a script that patches it for us


#### OPID
[] - tbd

### Future
[] - Extract and patch bootloader with Magisk manager and get them back into a `.kdz`
  [] - Modify [kdztools](https://github.com/haise0/kdztools) and tell it how to decompile the new OPID partition and recompile the newer .kdz file formats.
  [] - Make sure that we build a .kdz that LGUP is okay with; if we can't, then carefully break LGUP to accept any .kdz
[] - tbd

## Summary
  A project dedicated to making sense of the `LGUP_Common.dll` binary file from LGE's LGUP software, with the goal in mind of freeing some built-in functionality to allow for firmware modifications of the LG Stylo 6, and in the future, potentially other new LG mobile devices. This includes root, carrier unlocking, potential bootloader unlocking, and more.


### Explanation
We focus (for now) on two things; the Anti Rollback Check or ARB Check, and the OPID check. These functions are in the .dll binary.
- We target the ARB Check because it an obvious restraint when it comes to flashing different firmware images. Downgrading can be a big part of that process, and there are people (for some reason) who prefer older versions. 
- We target the OPID verification to achieve the ability to carrier unlock; LGUP will pass an error telling you that you can't. There are several possible ways to get around this.

  To avoid copyright claims, I'm reraining from hosting those two files in the repository. These are the versions we are working with:
- LGUP 1.16 LAB [from here](https://androidfilehost.com/?fid=4349826312261753003)
- LGUP_Common.dll 1.17 patched, check out the LGUP_Common.dll from the tool in [this xda thread](https://forum.xda-developers.com/t/lgup-flash-utility-based-on-lgup-1-16-cmd-and-lgup-1-17-lgup_common-dll.4112121/)


## Rundown
### DLL Binary
- `LGUP_Common.dll` designates things like the commands that the app uses, their functions, the model number for the device you're interacting with, what functions in the app are and aren't activated (DEV version vs LAB version, etc), and plenty of other information and functionality that has not yet been documented here.
### Application
- `LGUP.exe` is the user interface program that essentially is just a hollow shell full of commands. There is also the `LGUP_cmd.exe` available with version 1.16 and higher, usually. Using that instead of the user program may provide some success or failure in places that `LGUP.exe` does not. For whatever reason.
### LG Firmware
- LG firmware files are typically compressed files with the `.kdz` label. These are full firmware images, not just the typical TWRP .zip you can flash over it. It replaces all partitions, including the user, super, recovery, bootloader, and the rest.

## Target Breakdown
### ARB Check
  The Anti Rollback Check is a function that checks the version of ARB on the device and compares it to that of the image being flashed, where if the device version is higher than the image's version, it prompts the user if they're sure they want to continue, and if the device version is lower, it likely updates it with the image's version.
- It is currently unconfirmed whether or not the binary's version of ARB is also compared to that of the device itself. 
- It is currently unconfirmed what the conditions are to fail the ARB check. \
  Some notes:
  The option to prompt the user for certainty is in the "second half" of the entire function, and I have a suspicion that it is a locked feature for carriers or developers, either hidden behind code embedded into the first half, which at the moment only has the confirmed functionality of telling the user the check failed, or hidden in another function that is being called, at any point before the certainty prompt is sent but likely in the first half. In both sections there are several other external functions being called upon. Labelling these variables and functions are likely crucial to understanding what's happening.

### OPID Check
Have not looked into that section yet. Tackling the ARB problem first.

## Notes 
- I will be updating this readme over time, at my own pace. For now, it will not be completely in depth, and is lacking a lot of information. Perform your own internet searches if you want to research anything unavailable here.
- If you have something to contribute, open an issue or make a pull request. The most help could be used with: 
  - making sense of the C++
  - making sense of the assembly
  - providing relevant information to the readme 

