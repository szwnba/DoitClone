.class Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;
.super Ljava/lang/Object;
.source "ProjectViewPagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;->this$2:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;)Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;->this$2:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;

    return-object v0
.end method

.method private completeProject()V
    .locals 4

    .prologue
    .line 357
    new-instance v0, Lim/doit/pro/controller/CompleteProject;

    invoke-direct {v0}, Lim/doit/pro/controller/CompleteProject;-><init>()V

    .line 360
    .local v0, "completeProject":Lim/doit/pro/controller/CompleteProject;
    iget-object v1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;->this$2:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;

    invoke-static {v1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->access$1(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;)Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;

    move-result-object v1

    .line 361
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;->this$2:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->access$1(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;)Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    .line 362
    new-instance v3, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1$1;

    invoke-direct {v3, p0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1$1;-><init>(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;)V

    .line 359
    invoke-virtual {v0, v1, v2, v3}, Lim/doit/pro/controller/CompleteProject;->complete(Landroid/app/Activity;Lim/doit/pro/model/Project;Lim/doit/pro/controller/CompleteProject$CompleteProjectFinishListener;)V

    .line 369
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 348
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;->this$2:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->access$1(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;)Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/model/Project;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;->completeProject()V

    .line 354
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;->this$2:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;

    invoke-static {v1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->access$1(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;)Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/model/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/ProjectDao;->uncomplete(Lim/doit/pro/model/Project;)V

    .line 352
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;->this$2:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->access$1(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;)Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->finish()V

    goto :goto_0
.end method
