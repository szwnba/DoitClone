.class Lim/doit/pro/activity/ProjectListFragment$5;
.super Ljava/lang/Object;
.source "ProjectListFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectTaskContextDialog$OnTaskContextFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ProjectListFragment;->showSelectTaskContextDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectListFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ProjectListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ProjectListFragment$5;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/String;)V
    .locals 1
    .param p1, "taskContext"    # Ljava/lang/String;

    .prologue
    .line 468
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$5;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectListFragment;->access$1(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->setSelectedItemsTaskContext(Ljava/lang/String;)V

    .line 469
    return-void
.end method
