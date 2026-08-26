.class public Lim/doit/pro/activity/listview/GrouperViewHolder;
.super Lim/doit/pro/activity/listview/ViewHolder;
.source "GrouperViewHolder.java"


# instance fields
.field public groupCountTV:Landroid/widget/TextView;

.field public groupNameTV:Landroid/widget/TextView;

.field private mShowOne:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lim/doit/pro/activity/listview/ViewHolder;-><init>(Landroid/content/Context;)V

    .line 20
    const v0, 0x7f030085

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/GrouperViewHolder;->setItemBackgroud(I)V

    .line 22
    const v0, 0x7f0b0185

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/GrouperViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/GrouperViewHolder;->groupNameTV:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f0b0186

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/GrouperViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/GrouperViewHolder;->groupCountTV:Landroid/widget/TextView;

    .line 24
    return-void
.end method

.method private showGrouperCount(Lim/doit/pro/ui/model/GrouperForListView;)V
    .locals 3
    .param p1, "grouper"    # Lim/doit/pro/ui/model/GrouperForListView;

    .prologue
    .line 59
    iget-object v0, p0, Lim/doit/pro/activity/listview/GrouperViewHolder;->groupCountTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lim/doit/pro/activity/listview/GrouperViewHolder;->groupCountTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lim/doit/pro/ui/model/GrouperForListView;->getTotalCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method


# virtual methods
.method public setItemBackgroud(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 65
    return-void
.end method

.method public setShowOne(Z)V
    .locals 0
    .param p1, "showOne"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lim/doit/pro/activity/listview/GrouperViewHolder;->mShowOne:Z

    .line 28
    return-void
.end method

.method public setViewContent(Lim/doit/pro/model/BaseEntityWithPos;ZZZZZZ)V
    .locals 4
    .param p1, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;
    .param p2, "isNotShowContext"    # Z
    .param p3, "isNotShowProject"    # Z
    .param p4, "isNotShowGoal"    # Z
    .param p5, "isSomeSelected"    # Z
    .param p6, "isNotShowProjectIcon"    # Z
    .param p7, "isNotShowGoalIcon"    # Z

    .prologue
    const/4 v3, 0x0

    .line 35
    move-object v0, p1

    check-cast v0, Lim/doit/pro/ui/model/GrouperForListView;

    .line 37
    .local v0, "grouper":Lim/doit/pro/ui/model/GrouperForListView;
    iget-object v1, p0, Lim/doit/pro/activity/listview/GrouperViewHolder;->groupNameTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Lim/doit/pro/ui/model/GrouperForListView;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v0}, Lim/doit/pro/ui/model/GrouperForListView;->isFold()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/GrouperViewHolder;->showGrouperCount(Lim/doit/pro/ui/model/GrouperForListView;)V

    .line 41
    iget-object v1, p0, Lim/doit/pro/activity/listview/GrouperViewHolder;->groupNameTV:Landroid/widget/TextView;

    .line 42
    const v2, 0x7f02009a

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 41
    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/listview/GrouperViewHolder;->groupCountTV:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v1, p0, Lim/doit/pro/activity/listview/GrouperViewHolder;->groupNameTV:Landroid/widget/TextView;

    .line 50
    const v2, 0x7f02009b

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 46
    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-boolean v1, p0, Lim/doit/pro/activity/listview/GrouperViewHolder;->mShowOne:Z

    if-eqz v1, :cond_0

    .line 53
    invoke-direct {p0, v0}, Lim/doit/pro/activity/listview/GrouperViewHolder;->showGrouperCount(Lim/doit/pro/ui/model/GrouperForListView;)V

    goto :goto_0
.end method
