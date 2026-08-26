.class Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder$1;
.super Ljava/lang/Object;
.source "GoalViewPagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;-><init>(Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder$1;->this$2:Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder$1;->this$2:Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;

    invoke-static {v0}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;->access$0(Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;)Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->access$0(Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;)Lim/doit/pro/activity/GoalViewPagerActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/GoalViewPagerActivity;->access$0(Lim/doit/pro/activity/GoalViewPagerActivity;)Lim/doit/pro/model/Goal;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder$1;->this$2:Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;

    invoke-static {v0}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;->access$0(Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;)Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->access$0(Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;)Lim/doit/pro/activity/GoalViewPagerActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/GoalViewPagerActivity;->access$3(Lim/doit/pro/activity/GoalViewPagerActivity;)V

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    iget-object v1, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder$1;->this$2:Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;

    invoke-static {v1}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;->access$0(Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;)Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->access$0(Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;)Lim/doit/pro/activity/GoalViewPagerActivity;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/GoalViewPagerActivity;->access$0(Lim/doit/pro/activity/GoalViewPagerActivity;)Lim/doit/pro/model/Goal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/GoalDao;->uncomplete(Lim/doit/pro/model/Goal;)V

    .line 232
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder$1;->this$2:Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;

    invoke-static {v0}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;->access$0(Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;)Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->access$0(Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;)Lim/doit/pro/activity/GoalViewPagerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/GoalViewPagerActivity;->finish()V

    goto :goto_0
.end method
