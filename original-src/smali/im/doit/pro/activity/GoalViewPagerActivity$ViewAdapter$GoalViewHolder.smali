.class Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;
.super Lim/doit/pro/activity/listview/ViewHolder;
.source "GoalViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoalViewHolder"
.end annotation


# instance fields
.field private completeBtn:Landroid/widget/ImageView;

.field private nameTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    iput-object p1, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;->this$1:Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;

    .line 219
    invoke-direct {p0, p2}, Lim/doit/pro/activity/listview/ViewHolder;-><init>(Landroid/content/Context;)V

    .line 220
    invoke-static {p1}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;->access$0(Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;)Lim/doit/pro/activity/GoalViewPagerActivity;

    move-result-object v0

    .line 221
    const v1, 0x7f030079

    .line 220
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 222
    const v0, 0x7f0b016d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;->completeBtn:Landroid/widget/ImageView;

    .line 223
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;->nameTV:Landroid/widget/TextView;

    .line 224
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;->completeBtn:Landroid/widget/ImageView;

    new-instance v1, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder$1;-><init>(Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;)Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;->this$1:Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;

    return-object v0
.end method


# virtual methods
.method public setItemBackgroud(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 250
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
    .line 243
    move-object v0, p1

    check-cast v0, Lim/doit/pro/model/Goal;

    .line 244
    .local v0, "goal":Lim/doit/pro/model/Goal;
    iget-object v1, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter$GoalViewHolder;->completeBtn:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lim/doit/pro/activity/utils/ViewUtils;->setCompleteViewContent(Lim/doit/pro/model/BaseEntityWithPos;Landroid/widget/ImageView;)V

    .line 246
    return-void
.end method
