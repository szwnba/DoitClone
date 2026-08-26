.class Lim/doit/pro/activity/TaskContextViewPagerActivity$TaskContextViewHolder;
.super Lim/doit/pro/activity/listview/ViewHolder;
.source "TaskContextViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskContextViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskContextViewHolder"
.end annotation


# instance fields
.field private nameTV:Landroid/widget/TextView;

.field final synthetic this$0:Lim/doit/pro/activity/TaskContextViewPagerActivity;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/TaskContextViewPagerActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    iput-object p1, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity$TaskContextViewHolder;->this$0:Lim/doit/pro/activity/TaskContextViewPagerActivity;

    .line 251
    invoke-direct {p0, p2}, Lim/doit/pro/activity/listview/ViewHolder;-><init>(Landroid/content/Context;)V

    .line 252
    const v0, 0x7f03006e

    invoke-static {p2, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 254
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskContextViewPagerActivity$TaskContextViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity$TaskContextViewHolder;->nameTV:Landroid/widget/TextView;

    .line 255
    return-void
.end method


# virtual methods
.method public setItemBackgroud(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 268
    return-void
.end method

.method public setViewContent(Lim/doit/pro/model/BaseEntityWithPos;ZZZZZZ)V
    .locals 3
    .param p1, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;
    .param p2, "isNotShowContext"    # Z
    .param p3, "isNotShowProject"    # Z
    .param p4, "isNotShowGoal"    # Z
    .param p5, "isSomeSelected"    # Z
    .param p6, "isNotShowProjectIcon"    # Z
    .param p7, "isNotShowGoalIcon"    # Z

    .prologue
    .line 262
    move-object v0, p1

    check-cast v0, Lim/doit/pro/model/TaskContext;

    .line 263
    .local v0, "taskContext":Lim/doit/pro/model/TaskContext;
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity$TaskContextViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    return-void
.end method
