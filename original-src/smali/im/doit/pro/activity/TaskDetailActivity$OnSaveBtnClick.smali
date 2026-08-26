.class Lim/doit/pro/activity/TaskDetailActivity$OnSaveBtnClick;
.super Ljava/lang/Object;
.source "TaskDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSaveBtnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailActivity;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailActivity$OnSaveBtnClick;->this$0:Lim/doit/pro/activity/TaskDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailActivity;Lim/doit/pro/activity/TaskDetailActivity$OnSaveBtnClick;)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailActivity$OnSaveBtnClick;-><init>(Lim/doit/pro/activity/TaskDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 336
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity$OnSaveBtnClick;->this$0:Lim/doit/pro/activity/TaskDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailActivity;->access$2(Lim/doit/pro/activity/TaskDetailActivity;)V

    .line 337
    return-void
.end method
