.class public Lim/doit/pro/utils/AlertDialogUtils;
.super Ljava/lang/Object;
.source "AlertDialogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static alertGcalErrorDialog(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "syncType"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "doitErrorCode"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string v0, "im.doit.pro.service.DoitSyncService.SYNC_GCAL_FINISH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/16 v0, 0x19c

    if-ne p2, v0, :cond_0

    .line 228
    invoke-static {p0, p3}, Lim/doit/pro/utils/AlertDialogUtils;->showPullGcalResultDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x1

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static alertNewVersionDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "currentVersion"    # Ljava/lang/String;
    .param p2, "newVersion"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "dialog_title"

    const v6, 0x7f0c0125

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const v5, 0x7f0c009b

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 99
    aput-object p1, v6, v7

    .line 97
    invoke-static {v5, v6}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "oldVersionFormat":Ljava/lang/String;
    const v5, 0x7f0c0126

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p2, v6, v7

    .line 100
    invoke-static {v5, v6}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "newVersionFormat":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "message":Ljava/lang/String;
    const-string v5, "dialog_message_str"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v5, "dialog_positive_button"

    const v6, 0x7f0c003e

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string v5, "dialog_negative_button"

    const v6, 0x7f0c003d

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    invoke-static {v0}, Lim/doit/pro/ui/component/DMessageDialog;->newInstance(Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v2

    .line 109
    .local v2, "newFragment":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v5, Lim/doit/pro/utils/AlertDialogUtils$2;

    invoke-direct {v5}, Lim/doit/pro/utils/AlertDialogUtils$2;-><init>()V

    .line 108
    invoke-virtual {v2, v5}, Lim/doit/pro/ui/component/DMessageDialog;->setOnPositiveButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v5

    .line 116
    new-instance v6, Lim/doit/pro/utils/AlertDialogUtils$3;

    invoke-direct {v6, p0}, Lim/doit/pro/utils/AlertDialogUtils$3;-><init>(Landroid/app/Activity;)V

    .line 115
    invoke-virtual {v5, v6}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "dialog"

    invoke-virtual {v2, v5, v6}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static alertSyncCommonErrorDialog(Landroid/app/Activity;ILjava/lang/String;)Z
    .locals 3
    .param p0, "acitivity"    # Landroid/app/Activity;
    .param p1, "code"    # I
    .param p2, "doitErrorCode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 236
    if-gtz p1, :cond_1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    const/16 v2, 0x1aa

    if-ne p1, v2, :cond_2

    .line 240
    invoke-static {p0}, Lim/doit/pro/utils/AlertDialogUtils;->alertVersionTooOldDialog(Landroid/app/Activity;)V

    move v0, v1

    .line 241
    goto :goto_0

    .line 242
    :cond_2
    const/16 v2, 0x192

    if-ne p1, v2, :cond_3

    .line 243
    invoke-static {p0}, Lim/doit/pro/utils/AlertDialogUtils;->showOrdinaryAccountDialog(Landroid/app/Activity;)V

    move v0, v1

    .line 244
    goto :goto_0

    .line 245
    :cond_3
    const/16 v2, 0x1a2

    if-ne p1, v2, :cond_0

    .line 246
    invoke-static {p0}, Lim/doit/pro/utils/AlertDialogUtils;->showExpiredAccountDialog(Landroid/app/Activity;)V

    move v0, v1

    .line 247
    goto :goto_0
.end method

.method public static alertSyncErrorDialog(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "syncType"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "doitErrorCode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 215
    invoke-static {p0, p2, p3}, Lim/doit/pro/utils/AlertDialogUtils;->alertSyncCommonErrorDialog(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lim/doit/pro/utils/AlertDialogUtils;->alertGcalErrorDialog(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static alertVersionTooOldDialog(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "dialog_title"

    const v3, 0x7f0c008e

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-string v2, "dialog_message"

    const v3, 0x7f0c008d

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string v2, "dialog_negative_button"

    const v3, 0x7f0c008f

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-static {v0}, Lim/doit/pro/ui/component/DMessageDialog;->newInstance(Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 61
    .local v1, "newFragment":Lim/doit/pro/ui/component/DMessageDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DMessageDialog;->setCancelable(Z)V

    .line 63
    new-instance v2, Lim/doit/pro/utils/AlertDialogUtils$1;

    invoke-direct {v2, p0}, Lim/doit/pro/utils/AlertDialogUtils$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-static {p1}, Lim/doit/pro/ui/component/DMessageDialog;->newInstance(Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v0

    .line 161
    .local v0, "newFragment":Lim/doit/pro/ui/component/DMessageDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DMessageDialog;->setCancelable(Z)V

    .line 162
    return-object v0
.end method

.method public static showClickGcalSyncDialog(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 288
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "im.doit.pro.receiver.DoitSyncReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v1, "sync_type"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 291
    const v1, 0x7f0c01bd

    invoke-static {v1}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    .line 292
    return-void
.end method

.method public static showConvertToProjectDialog(Landroid/app/Activity;Lim/doit/pro/model/Task;Lim/doit/pro/activity/listener/ConvertToProjectDoneListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "task"    # Lim/doit/pro/model/Task;
    .param p2, "l"    # Lim/doit/pro/activity/listener/ConvertToProjectDoneListener;

    .prologue
    .line 412
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lim/doit/pro/utils/AlertDialogUtils;->showProjectExistDialog(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-static {p1}, Lim/doit/pro/utils/TaskUtils;->convertTaskToProject(Lim/doit/pro/model/Task;)Lim/doit/pro/model/Project;

    move-result-object v1

    .line 416
    .local v1, "project":Lim/doit/pro/model/Project;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lim/doit/pro/activity/ProjectViewPagerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "project"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 419
    if-eqz p2, :cond_0

    .line 420
    invoke-virtual {p2}, Lim/doit/pro/activity/listener/ConvertToProjectDoneListener;->done()V

    goto :goto_0
.end method

.method public static showCurrentVersionIsNewestDialog(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "dialog_message"

    const v3, 0x7f0c0096

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    const-string v2, "dialog_negative_button"

    const v3, 0x7f0c0027

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    invoke-static {p0, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 148
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v2, Lim/doit/pro/utils/AlertDialogUtils$4;

    invoke-direct {v2, v1}, Lim/doit/pro/utils/AlertDialogUtils$4;-><init>(Lim/doit/pro/ui/component/DMessageDialog;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 156
    const-string v3, "showCurrentVersionIsNewestDialog"

    .line 155
    invoke-virtual {v1, v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static showDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;
    .locals 2
    .param p0, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 41
    .local v0, "dialog":Landroid/app/AlertDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 42
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 43
    return-object v0
.end method

.method public static showDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showEvernoteReAuthDialog(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 425
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 426
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "dialog_message"

    const v3, 0x7f0c0261

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    const-string v2, "dialog_positive_button"

    const v3, 0x7f0c002c

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 428
    const-string v2, "dialog_negative_button"

    const v3, 0x7f0c0262

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    invoke-static {p0, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 431
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v2, Lim/doit/pro/utils/AlertDialogUtils$13;

    invoke-direct {v2, p0}, Lim/doit/pro/utils/AlertDialogUtils$13;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 438
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method private static showExpiredAccountDialog(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 272
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "dialog_message"

    const v3, 0x7f0c0091

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    const-string v2, "dialog_negative_button"

    const v3, 0x7f0c0027

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    invoke-static {p0, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 276
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v2, Lim/doit/pro/utils/AlertDialogUtils$8;

    invoke-direct {v2, v1}, Lim/doit/pro/utils/AlertDialogUtils$8;-><init>(Lim/doit/pro/ui/component/DMessageDialog;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 283
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "showExpiredAccountDialog"

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public static showJustForProDialog(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 167
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isStandardAccount()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    const v2, 0x7f0c01b8

    .line 172
    .local v2, "msg":I
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "dialog_title"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string v3, "dialog_message"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v3, "dialog_positive_button"

    const v4, 0x7f0c002c

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    const-string v3, "dialog_negative_button"

    const v4, 0x7f0c003a

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    invoke-static {p0, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 178
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v3, Lim/doit/pro/utils/AlertDialogUtils$5;

    invoke-direct {v3, p0}, Lim/doit/pro/utils/AlertDialogUtils$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 186
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "not pro dialog"

    invoke-virtual {v1, v3, v4}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 187
    const/4 v3, 0x1

    return v3

    .line 170
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    .end local v2    # "msg":I
    :cond_0
    const v2, 0x7f0c01b9

    .restart local v2    # "msg":I
    goto :goto_0
.end method

.method public static showLinkEvernoteDialog(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 442
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 443
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 444
    .local v1, "menuNames":[Ljava/lang/String;
    const/4 v2, 0x0

    const v3, 0x7f0c0108

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 445
    const/4 v2, 0x1

    const v3, 0x7f0c0106

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 446
    new-instance v2, Lim/doit/pro/utils/AlertDialogUtils$14;

    invoke-direct {v2, p0}, Lim/doit/pro/utils/AlertDialogUtils$14;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 457
    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    .line 458
    return-void
.end method

.method public static showListViewMoveDailog(Landroid/app/Activity;Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listAdapter"    # Lim/doit/pro/activity/listview/ListViewAdapter;

    .prologue
    const/4 v7, 0x1

    .line 387
    .line 388
    invoke-virtual {p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 389
    .local v4, "selectedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    const/4 v1, 0x0

    .line 390
    .local v1, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    const/4 v2, 0x0

    .line 391
    .local v2, "isProject":Z
    invoke-virtual {p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedCount()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 392
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    check-cast v1, Lim/doit/pro/model/BaseEntityWithPos;

    .line 394
    .restart local v1    # "entity":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 399
    new-instance v0, Lim/doit/pro/ui/component/MoveToDialog;

    invoke-direct {v0, p0, v2, v7}, Lim/doit/pro/ui/component/MoveToDialog;-><init>(Landroid/app/Activity;ZZ)V

    .line 400
    .local v0, "dialog":Lim/doit/pro/ui/component/MoveToDialog;
    new-instance v5, Lim/doit/pro/utils/AlertDialogUtils$12;

    invoke-direct {v5, p1}, Lim/doit/pro/utils/AlertDialogUtils$12;-><init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    invoke-virtual {v0, v5}, Lim/doit/pro/ui/component/MoveToDialog;->setOnMoveFinishListner(Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;)V

    .line 407
    invoke-virtual {v0, v1, v2}, Lim/doit/pro/ui/component/MoveToDialog;->showDialog(Lim/doit/pro/model/BaseEntityWithPos;Z)V

    .line 408
    return-void

    .line 394
    .end local v0    # "dialog":Lim/doit/pro/ui/component/MoveToDialog;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/BaseEntityWithPos;

    .line 395
    .local v3, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v3}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 396
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static showMakeGoalCompleteDialog(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/activity/listener/OnCompleteGoalFinishListener;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "goalId"    # Ljava/lang/String;
    .param p2, "l"    # Lim/doit/pro/activity/listener/OnCompleteGoalFinishListener;

    .prologue
    .line 345
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v4, p1}, Lim/doit/pro/db/persist/GoalDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/Goal;

    .line 346
    .local v3, "goal":Lim/doit/pro/model/Goal;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lim/doit/pro/model/Goal;->isDead()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v3}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/TaskDao;->countLiveInGoal(Ljava/lang/String;)I

    move-result v1

    .line 350
    .local v1, "count":I
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v3}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/ProjectDao;->countLiveInGoal(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    .line 351
    if-gtz v1, :cond_0

    .line 354
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 356
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "dialog_message_str"

    .line 358
    const v5, 0x7f0c0093

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 355
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v4, "dialog_positive_button"

    const v5, 0x7f0c002c

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    const-string v4, "dialog_negative_button"

    const v5, 0x7f0c003b

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    invoke-static {p0, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v2

    .line 362
    .local v2, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v4, Lim/doit/pro/utils/AlertDialogUtils$10;

    invoke-direct {v4, p2}, Lim/doit/pro/utils/AlertDialogUtils$10;-><init>(Lim/doit/pro/activity/listener/OnCompleteGoalFinishListener;)V

    invoke-virtual {v2, v4}, Lim/doit/pro/ui/component/DMessageDialog;->setOnPositiveButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v4

    .line 368
    new-instance v5, Lim/doit/pro/utils/AlertDialogUtils$11;

    invoke-direct {v5, v3, p2}, Lim/doit/pro/utils/AlertDialogUtils$11;-><init>(Lim/doit/pro/model/Goal;Lim/doit/pro/activity/listener/OnCompleteGoalFinishListener;)V

    invoke-virtual {v4, v5}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 376
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "dialog"

    invoke-virtual {v2, v4, v5}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showOrdinaryAccountDialog(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 253
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 254
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "dialog_message"

    const v3, 0x7f0c0090

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    const-string v2, "dialog_positive_button"

    const v3, 0x7f0c002c

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    const-string v2, "dialog_negative_button"

    const v3, 0x7f0c003a

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    invoke-static {p0, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 258
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v2, Lim/doit/pro/utils/AlertDialogUtils$7;

    invoke-direct {v2, p0}, Lim/doit/pro/utils/AlertDialogUtils$7;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "showOrdinaryAccountDialog"

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public static showProjectExistDialog(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "projectName"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 193
    invoke-virtual {v3, p1}, Lim/doit/pro/db/persist/ProjectDao;->findByName(Ljava/lang/String;)Lim/doit/pro/model/Project;

    move-result-object v1

    .line 194
    .local v1, "dbProject":Lim/doit/pro/model/Project;
    if-eqz v1, :cond_0

    .line 195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "dialog_message"

    const v4, 0x7f0c0183

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string v3, "dialog_negative_button"

    const v4, 0x7f0c0028

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    invoke-static {p0, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v2

    .line 200
    .local v2, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "project exist"

    invoke-virtual {v2, v3, v4}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 201
    new-instance v3, Lim/doit/pro/utils/AlertDialogUtils$6;

    invoke-direct {v3, v2}, Lim/doit/pro/utils/AlertDialogUtils$6;-><init>(Lim/doit/pro/ui/component/DMessageDialog;)V

    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 208
    const/4 v3, 0x1

    .line 210
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static showPullGcalResultDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    const/4 v3, -0x1

    .line 301
    .local v3, "msg":I
    :try_start_0
    const-string v4, "E402"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 303
    invoke-static {p0}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v2

    .line 339
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 305
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v4, "E41201"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 307
    const v3, 0x7f0c01bf

    .line 318
    :cond_3
    :goto_1
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 319
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 320
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "dialog_message"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    const-string v4, "dialog_negative_button"

    const v5, 0x7f0c0027

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 322
    invoke-static {p0, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 323
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v4, Lim/doit/pro/utils/AlertDialogUtils$9;

    invoke-direct {v4, p0}, Lim/doit/pro/utils/AlertDialogUtils$9;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v4}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 335
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 336
    const-string v5, "DIALOG_TAG_GCAL_RESULT"

    .line 335
    invoke-virtual {v1, v4, v5}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    :cond_4
    const-string v4, "E41202"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 310
    const v3, 0x7f0c01c0

    .line 311
    goto :goto_1

    :cond_5
    const-string v4, "E41203"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 313
    const v3, 0x7f0c01bf

    .line 314
    goto :goto_1

    :cond_6
    const-string v4, "E41204"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 316
    const v3, 0x7f0c01be

    goto :goto_1
.end method
