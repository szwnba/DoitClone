.class Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;
.super Ljava/lang/Object;
.source "ProjectDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ProjectDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCompleteClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectDetailActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;)V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;)Lim/doit/pro/activity/ProjectDetailActivity;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 340
    const/4 v1, 0x1

    .line 341
    .local v1, "isSaveSuccess":Z
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->isChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$1(Lim/doit/pro/activity/ProjectDetailActivity;)Z

    move-result v1

    .line 344
    :cond_0
    if-nez v1, :cond_1

    .line 365
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 348
    new-instance v0, Lim/doit/pro/controller/CompleteProject;

    invoke-direct {v0}, Lim/doit/pro/controller/CompleteProject;-><init>()V

    .line 349
    .local v0, "completeProject":Lim/doit/pro/controller/CompleteProject;
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    iget-object v3, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v3}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v3

    .line 350
    new-instance v4, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick$1;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick$1;-><init>(Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;)V

    .line 349
    invoke-virtual {v0, v2, v3, v4}, Lim/doit/pro/controller/CompleteProject;->complete(Landroid/app/Activity;Lim/doit/pro/model/Project;Lim/doit/pro/controller/CompleteProject$CompleteProjectFinishListener;)V

    goto :goto_0

    .line 360
    .end local v0    # "completeProject":Lim/doit/pro/controller/CompleteProject;
    :cond_2
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v3, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v3}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/ProjectDao;->uncomplete(Lim/doit/pro/model/Project;)V

    .line 361
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$4(Lim/doit/pro/activity/ProjectDetailActivity;)V

    .line 362
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lim/doit/pro/model/Project;->setChanged(Z)V

    .line 363
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-virtual {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->finish()V

    goto :goto_0
.end method
