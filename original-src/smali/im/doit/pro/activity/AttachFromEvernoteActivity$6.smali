.class Lim/doit/pro/activity/AttachFromEvernoteActivity$6;
.super Ljava/lang/Object;
.source "AttachFromEvernoteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AttachFromEvernoteActivity;
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
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)Lim/doit/pro/activity/AttachFromEvernoteActivity;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 407
    iget-object v2, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-virtual {v2}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 408
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 410
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v2}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$9(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$6;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v3}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$17(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->newInstance(Ljava/lang/String;Ljava/util/List;)Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    move-result-object v0

    .line 411
    .local v0, "dialog":Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;
    new-instance v2, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$6$1;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity$6;)V

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->setOnNotebookFinishListner(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$OnNotebookFinishListner;)V

    .line 430
    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 431
    return-void
.end method
