
undefined4 __fastcall arbCheck(void *param_1)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int **in_FS_OFFSET;
  uint in_stack_ffffffc4;
  void *pvVar4;
  uint uStack32;
  undefined *local_14;
  int *local_10;
  undefined *puStack12;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack12 = &LAB_10317018;
  local_10 = *in_FS_OFFSET;
  uStack32 = DAT_103ea8cc ^ (uint)&stack0xfffffffc;
  *in_FS_OFFSET = (int *)&local_10;
  local_14 = (undefined *)param_1;
  if (*(char *)(*(int *)((int)param_1 + 0x1e4630) + 0x744) == 'E') {
    FUN_1002d940(*(int *)((int)param_1 + 0x14),"Anti Rollback Status = E.\n");
    local_14 = &stack0xffffffc4;
    pvVar4 = (void *)(in_stack_ffffffc4 & 0xffffff00);
    FUN_100038c0(&stack0xffffffc4,(int **)&lpDefault_1032d7d3,(int *)0x0);
    local_8 = 0xffffffff;
    iVar2 = FUN_10069400(param_1,*(int *)((int)param_1 + 0x1e4630),0,pvVar4);
    if (iVar2 == 0) {
      if (*(int *)(*(int *)((int)param_1 + 0x10) + 0x19a4) == 2) {
        FUN_100023f0(*(void ***)((int)param_1 + 0x54));
        FUN_1001c730(*(int *)((int)param_1 + 8));
      }
      *in_FS_OFFSET = local_10;
      return 0;
    }
    FUN_1002d940(*(int *)((int)param_1 + 0x14),"Anti Rollback Check PASS.\n");
  }
  else {
    if (*(int *)((int)param_1 + 0x20) != 0) {
      (**(code **)(**(int **)((int)param_1 + 0x20) + 0x3c))();
      FUN_1002d940(*(int *)((int)param_1 + 0x14),&DAT_1033ea0c);
      iVar2 = *(int *)(*(int *)((int)param_1 + 0x10) + 0x814);
      if (0 < *(int *)(iVar2 + 0x745)) {
        iVar3 = (**(code **)(**(int **)((int)param_1 + 0x20) + 0x3c))();
        piVar1 = (int *)(iVar2 + 0x745);
        if (*piVar1 != iVar3 && iVar3 <= *piVar1) {
          (**(code **)(**(int **)((int)param_1 + 0x20) + 0x3c))();
          FUN_1002ad20(*(void **)((int)param_1 + 0xc),0x8001,
                       "Image ARB [%d] is lower than device [%d]. continue?\n");
          *in_FS_OFFSET = local_10;
          return 0;
        }
      }
    }
  }
  *in_FS_OFFSET = local_10;
  return 1;
}

