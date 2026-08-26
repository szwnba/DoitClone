.class public Lim/doit/pro/activity/listview/TagFilterViewHolder;
.super Lim/doit/pro/activity/listview/ViewHolder;
.source "TagFilterViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/listview/TagFilterViewHolder$OnDeleteClickListener;
    }
.end annotation


# instance fields
.field public deleteBtn:Landroid/widget/ImageView;

.field public nameTV:Landroid/widget/TextView;

.field private onDeleteClickListener:Lim/doit/pro/activity/listview/TagFilterViewHolder$OnDeleteClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lim/doit/pro/activity/listview/ViewHolder;-><init>(Landroid/content/Context;)V

    .line 29
    const v0, 0x7f03008a

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TagFilterViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/TagFilterViewHolder;->nameTV:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f0b0192

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/TagFilterViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/TagFilterViewHolder;->deleteBtn:Landroid/widget/ImageView;

    .line 32
    iget-object v0, p0, Lim/doit/pro/activity/listview/TagFilterViewHolder;->deleteBtn:Landroid/widget/ImageView;

    new-instance v1, Lim/doit/pro/activity/listview/TagFilterViewHolder$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/listview/TagFilterViewHolder$1;-><init>(Lim/doit/pro/activity/listview/TagFilterViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/listview/TagFilterViewHolder;)Lim/doit/pro/activity/listview/TagFilterViewHolder$OnDeleteClickListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lim/doit/pro/activity/listview/TagFilterViewHolder;->onDeleteClickListener:Lim/doit/pro/activity/listview/TagFilterViewHolder$OnDeleteClickListener;

    return-object v0
.end method

.method private setContextViewContent(Lim/doit/pro/ui/model/TagFilter;Z)V
    .locals 3
    .param p1, "tagFitler"    # Lim/doit/pro/ui/model/TagFilter;
    .param p2, "isNotShowContext"    # Z

    .prologue
    .line 55
    invoke-virtual {p1}, Lim/doit/pro/ui/model/TagFilter;->isUntagged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lim/doit/pro/activity/listview/TagFilterViewHolder;->nameTV:Landroid/widget/TextView;

    const v1, 0x7f0c0042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/listview/TagFilterViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Lim/doit/pro/ui/model/TagFilter;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lim/doit/pro/utils/StringUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public setItemBackgroud(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 64
    return-void
.end method

.method public setOnDeleteClickListener(Lim/doit/pro/activity/listview/TagFilterViewHolder$OnDeleteClickListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/activity/listview/TagFilterViewHolder$OnDeleteClickListener;

    .prologue
    .line 24
    iput-object p1, p0, Lim/doit/pro/activity/listview/TagFilterViewHolder;->onDeleteClickListener:Lim/doit/pro/activity/listview/TagFilterViewHolder$OnDeleteClickListener;

    .line 25
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
    .line 48
    move-object v0, p1

    check-cast v0, Lim/doit/pro/ui/model/TagFilter;

    .line 49
    .local v0, "tagFitler":Lim/doit/pro/ui/model/TagFilter;
    iget-object v1, p0, Lim/doit/pro/activity/listview/TagFilterViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Lim/doit/pro/ui/model/TagFilter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-direct {p0, v0, p2}, Lim/doit/pro/activity/listview/TagFilterViewHolder;->setContextViewContent(Lim/doit/pro/ui/model/TagFilter;Z)V

    .line 51
    return-void
.end method
