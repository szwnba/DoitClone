.class Lim/doit/pro/activity/GoalDetailActivity$OnCompleteClick;
.super Ljava/lang/Object;
.source "GoalDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/GoalDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCompleteClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/GoalDetailActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/GoalDetailActivity;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lim/doit/pro/activity/GoalDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/GoalDetailActivity;Lim/doit/pro/activity/GoalDetailActivity$OnCompleteClick;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lim/doit/pro/activity/GoalDetailActivity$OnCompleteClick;-><init>(Lim/doit/pro/activity/GoalDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    const/4 v0, 0x1

    .line 246
    .local v0, "isSaveSuccess":Z
    iget-object v1, p0, Lim/doit/pro/activity/GoalDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    invoke-static {v1}, Lim/doit/pro/activity/GoalDetailActivity;->access$1(Lim/doit/pro/activity/GoalDetailActivity;)Lim/doit/pro/model/Goal;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Goal;->isChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lim/doit/pro/activity/GoalDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    invoke-static {v1}, Lim/doit/pro/activity/GoalDetailActivity;->access$0(Lim/doit/pro/activity/GoalDetailActivity;)Z

    move-result v0

    .line 249
    :cond_0
    if-nez v0, :cond_1

    .line 260
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/GoalDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    invoke-static {v1}, Lim/doit/pro/activity/GoalDetailActivity;->access$1(Lim/doit/pro/activity/GoalDetailActivity;)Lim/doit/pro/model/Goal;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Goal;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 253
    iget-object v1, p0, Lim/doit/pro/activity/GoalDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    invoke-static {v1}, Lim/doit/pro/activity/GoalDetailActivity;->access$2(Lim/doit/pro/activity/GoalDetailActivity;)V

    goto :goto_0

    .line 255
    :cond_2
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    iget-object v2, p0, Lim/doit/pro/activity/GoalDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    invoke-static {v2}, Lim/doit/pro/activity/GoalDetailActivity;->access$1(Lim/doit/pro/activity/GoalDetailActivity;)Lim/doit/pro/model/Goal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/GoalDao;->uncomplete(Lim/doit/pro/model/Goal;)V

    .line 256
    iget-object v1, p0, Lim/doit/pro/activity/GoalDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    invoke-static {v1}, Lim/doit/pro/activity/GoalDetailActivity;->access$3(Lim/doit/pro/activity/GoalDetailActivity;)V

    .line 257
    iget-object v1, p0, Lim/doit/pro/activity/GoalDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    invoke-static {v1}, Lim/doit/pro/activity/GoalDetailActivity;->access$1(Lim/doit/pro/activity/GoalDetailActivity;)Lim/doit/pro/model/Goal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Goal;->setChanged(Z)V

    .line 258
    iget-object v1, p0, Lim/doit/pro/activity/GoalDetailActivity$OnCompleteClick;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    invoke-virtual {v1}, Lim/doit/pro/activity/GoalDetailActivity;->finish()V

    goto :goto_0
.end method
