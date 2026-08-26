.class Lim/doit/pro/activity/GoalViewPagerActivity$2;
.super Ljava/lang/Object;
.source "GoalViewPagerActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/GoalViewPagerActivity;->completeGoal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/GoalViewPagerActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/GoalViewPagerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/GoalViewPagerActivity$2;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 313
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity$2;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lim/doit/pro/activity/GoalViewPagerActivity;->access$4(Lim/doit/pro/activity/GoalViewPagerActivity;Z)V

    .line 314
    return-void
.end method
