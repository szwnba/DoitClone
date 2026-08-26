.class Lim/doit/pro/activity/ProjectListFragment$4;
.super Ljava/lang/Object;
.source "ProjectListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ProjectListFragment;->finishActionMode()V
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
    iput-object p1, p0, Lim/doit/pro/activity/ProjectListFragment$4;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$4;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    iget-object v0, v0, Lim/doit/pro/activity/ProjectListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 428
    return-void
.end method
