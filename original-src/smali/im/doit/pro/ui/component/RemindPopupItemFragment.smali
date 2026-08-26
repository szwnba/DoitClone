.class public Lim/doit/pro/ui/component/RemindPopupItemFragment;
.super Landroid/support/v4/app/Fragment;
.source "RemindPopupItemFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lim/doit/pro/db/metadata/ReminderMessage;)Lim/doit/pro/ui/component/RemindPopupItemFragment;
    .locals 2
    .param p0, "reminder"    # Lim/doit/pro/db/metadata/ReminderMessage;

    .prologue
    .line 10
    new-instance v1, Lim/doit/pro/ui/component/RemindPopupItemFragment;

    invoke-direct {v1}, Lim/doit/pro/ui/component/RemindPopupItemFragment;-><init>()V

    .line 11
    .local v1, "newFragment":Lim/doit/pro/ui/component/RemindPopupItemFragment;
    invoke-virtual {p0}, Lim/doit/pro/db/metadata/ReminderMessage;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 12
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/RemindPopupItemFragment;->setArguments(Landroid/os/Bundle;)V

    .line 13
    return-object v1
.end method
