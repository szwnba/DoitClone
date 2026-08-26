.class Lim/doit/pro/activity/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SettingsActivity$1;->this$0:Lim/doit/pro/activity/SettingsActivity;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/SettingsActivity$1;)Lim/doit/pro/activity/SettingsActivity;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity$1;->this$0:Lim/doit/pro/activity/SettingsActivity;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 330
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->lastSyncLogDao:Lim/doit/pro/db/persist/LastSyncLogDao;

    invoke-virtual {v4}, Lim/doit/pro/db/persist/LastSyncLogDao;->findLastErrorLog()Lim/doit/pro/model/LastSyncLog;

    move-result-object v3

    .line 331
    .local v3, "log":Lim/doit/pro/model/LastSyncLog;
    invoke-virtual {v3}, Lim/doit/pro/model/LastSyncLog;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "errorCode":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "dialog_title"

    const v5, 0x7f0c0087

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    const-string v4, "dialog_message_str"

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x7f0c021d

    invoke-static {v6}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 335
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v4, "dialog_positive_button"

    const v5, 0x7f0c002c

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    const-string v4, "dialog_negative_button"

    .line 339
    const v5, 0x7f0c021e

    .line 338
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    iget-object v4, p0, Lim/doit/pro/activity/SettingsActivity$1;->this$0:Lim/doit/pro/activity/SettingsActivity;

    .line 340
    invoke-static {v4, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 342
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v4, Lim/doit/pro/activity/SettingsActivity$1$1;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/SettingsActivity$1$1;-><init>(Lim/doit/pro/activity/SettingsActivity$1;)V

    invoke-virtual {v1, v4}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 349
    iget-object v4, p0, Lim/doit/pro/activity/SettingsActivity$1;->this$0:Lim/doit/pro/activity/SettingsActivity;

    invoke-virtual {v4}, Lim/doit/pro/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "syncLogDialog"

    invoke-virtual {v1, v4, v5}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 350
    return-void
.end method
