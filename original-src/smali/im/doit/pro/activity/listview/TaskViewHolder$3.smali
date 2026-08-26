.class Lim/doit/pro/activity/listview/TaskViewHolder$3;
.super Ljava/lang/Object;
.source "TaskViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/listview/TaskViewHolder;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/listview/TaskViewHolder;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/listview/TaskViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/listview/TaskViewHolder$3;->this$0:Lim/doit/pro/activity/listview/TaskViewHolder;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder$3;->this$0:Lim/doit/pro/activity/listview/TaskViewHolder;

    invoke-static {v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->access$0(Lim/doit/pro/activity/listview/TaskViewHolder;)Lim/doit/pro/activity/listview/TaskViewHolder$OnMarkTodayClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder$3;->this$0:Lim/doit/pro/activity/listview/TaskViewHolder;

    invoke-static {v0}, Lim/doit/pro/activity/listview/TaskViewHolder;->access$0(Lim/doit/pro/activity/listview/TaskViewHolder;)Lim/doit/pro/activity/listview/TaskViewHolder$OnMarkTodayClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lim/doit/pro/activity/listview/TaskViewHolder$OnMarkTodayClickListener;->markToday(Landroid/view/View;)V

    .line 120
    :cond_0
    return-void
.end method
