.class Lim/doit/pro/activity/TaskListFragment$8;
.super Ljava/lang/Object;
.source "TaskListFragment.java"

# interfaces
.implements Lim/doit/pro/activity/listview/ListViewAdapter$OnDeleteTagFilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskListFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskListFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskListFragment$8;->this$0:Lim/doit/pro/activity/TaskListFragment;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteTagFilter()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$8;->this$0:Lim/doit/pro/activity/TaskListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskListFragment;->setTagFitler(Lim/doit/pro/ui/model/TagFilter;)V

    .line 348
    return-void
.end method
