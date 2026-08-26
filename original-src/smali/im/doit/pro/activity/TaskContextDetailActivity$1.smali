.class Lim/doit/pro/activity/TaskContextDetailActivity$1;
.super Ljava/lang/Object;
.source "TaskContextDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskContextDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskContextDetailActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskContextDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskContextDetailActivity$1;->this$0:Lim/doit/pro/activity/TaskContextDetailActivity;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextDetailActivity$1;->this$0:Lim/doit/pro/activity/TaskContextDetailActivity;

    invoke-static {v1}, Lim/doit/pro/activity/TaskContextDetailActivity;->access$0(Lim/doit/pro/activity/TaskContextDetailActivity;)Z

    move-result v0

    .line 111
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextDetailActivity$1;->this$0:Lim/doit/pro/activity/TaskContextDetailActivity;

    invoke-virtual {v1}, Lim/doit/pro/activity/TaskContextDetailActivity;->finish()V

    .line 114
    :cond_0
    return-void
.end method
