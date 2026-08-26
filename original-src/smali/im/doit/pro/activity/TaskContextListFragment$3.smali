.class Lim/doit/pro/activity/TaskContextListFragment$3;
.super Ljava/lang/Object;
.source "TaskContextListFragment.java"

# interfaces
.implements Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskContextListFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskContextListFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskContextListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskContextListFragment$3;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reloadData()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$3;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskContextListFragment;->access$5(Lim/doit/pro/activity/TaskContextListFragment;)V

    .line 182
    return-void
.end method
