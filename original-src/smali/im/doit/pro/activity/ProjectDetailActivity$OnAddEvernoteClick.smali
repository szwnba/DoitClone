.class Lim/doit/pro/activity/ProjectDetailActivity$OnAddEvernoteClick;
.super Ljava/lang/Object;
.source "ProjectDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ProjectDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAddEvernoteClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectDetailActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnAddEvernoteClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;Lim/doit/pro/activity/ProjectDetailActivity$OnAddEvernoteClick;)V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ProjectDetailActivity$OnAddEvernoteClick;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;)V

    return-void
.end method

.method private showAttachFromEvernoteDailog()V
    .locals 3

    .prologue
    .line 433
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnAddEvernoteClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    .line 434
    const-class v2, Lim/doit/pro/activity/AttachFromEvernoteActivity;

    .line 433
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 435
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnAddEvernoteClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    .line 436
    const/16 v2, 0x2711

    .line 435
    invoke-virtual {v1, v0, v2}, Lim/doit/pro/activity/ProjectDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 437
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 425
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnAddEvernoteClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    .line 430
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectDetailActivity$OnAddEvernoteClick;->showAttachFromEvernoteDailog()V

    goto :goto_0
.end method
