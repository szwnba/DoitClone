.class Lim/doit/pro/activity/AttachFromEvernoteActivity$12;
.super Lim/doit/pro/ui/component/DProgressDialog$OnKeyDownListener;
.source "AttachFromEvernoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/AttachFromEvernoteActivity;->showProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$12;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    .line 628
    invoke-direct {p0}, Lim/doit/pro/ui/component/DProgressDialog$OnKeyDownListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I

    .prologue
    .line 632
    const/4 v0, 0x4

    if-ne v0, p2, :cond_0

    .line 633
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 634
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$12;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-virtual {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->finish()V

    .line 636
    :cond_0
    return-void
.end method
