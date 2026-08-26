.class Lim/doit/pro/activity/TaskListFragment$7;
.super Ljava/lang/Object;
.source "TaskListFragment.java"

# interfaces
.implements Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;


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
    iput-object p1, p0, Lim/doit/pro/activity/TaskListFragment$7;->this$0:Lim/doit/pro/activity/TaskListFragment;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reloadData()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$7;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskListFragment;->access$12(Lim/doit/pro/activity/TaskListFragment;)V

    .line 340
    return-void
.end method
