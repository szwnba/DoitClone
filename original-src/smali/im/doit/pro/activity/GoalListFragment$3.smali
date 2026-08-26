.class Lim/doit/pro/activity/GoalListFragment$3;
.super Ljava/lang/Object;
.source "GoalListFragment.java"

# interfaces
.implements Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/GoalListFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/GoalListFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/GoalListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/GoalListFragment$3;->this$0:Lim/doit/pro/activity/GoalListFragment;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reloadData()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment$3;->this$0:Lim/doit/pro/activity/GoalListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/GoalListFragment;->access$6(Lim/doit/pro/activity/GoalListFragment;)V

    .line 184
    return-void
.end method
