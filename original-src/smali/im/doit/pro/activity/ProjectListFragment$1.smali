.class Lim/doit/pro/activity/ProjectListFragment$1;
.super Ljava/lang/Object;
.source "ProjectListFragment.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ProjectListFragment;->initListener()V
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
    iput-object p1, p0, Lim/doit/pro/activity/ProjectListFragment$1;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateActionBarSubTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$1;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    iget-object v0, v0, Lim/doit/pro/activity/ProjectListFragment;->mUpdateSubtitleTextListener:Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;

    invoke-interface {v0, p1}, Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;->updateActionBarSubTitle(Ljava/lang/String;)V

    .line 241
    return-void
.end method
