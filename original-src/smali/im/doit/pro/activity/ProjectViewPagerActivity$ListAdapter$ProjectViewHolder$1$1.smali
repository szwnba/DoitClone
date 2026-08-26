.class Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1$1;
.super Ljava/lang/Object;
.source "ProjectViewPagerActivity.java"

# interfaces
.implements Lim/doit/pro/controller/CompleteProject$CompleteProjectFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;->completeProject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1$1;->this$3:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1$1;->this$3:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;)Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->access$1(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;)Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->finish()V

    .line 367
    return-void
.end method
