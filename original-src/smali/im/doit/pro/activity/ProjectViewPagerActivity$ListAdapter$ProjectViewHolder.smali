.class Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;
.super Lim/doit/pro/activity/listview/ViewHolder;
.source "ProjectViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProjectViewHolder"
.end annotation


# instance fields
.field private completeBtn:Landroid/widget/ImageView;

.field private goalTV:Landroid/widget/TextView;

.field private mEvernoteListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

.field private nameTV:Landroid/widget/TextView;

.field private onCompleteClick:Landroid/view/View$OnClickListener;

.field private onRemoveEvernoteClick:Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;

.field final synthetic this$1:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    iput-object p1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->this$1:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    .line 294
    invoke-direct {p0, p2}, Lim/doit/pro/activity/listview/ViewHolder;-><init>(Landroid/content/Context;)V

    .line 344
    new-instance v0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$1;-><init>(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;)V

    iput-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->onCompleteClick:Landroid/view/View$OnClickListener;

    .line 372
    new-instance v0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder$2;-><init>(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;)V

    iput-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->onRemoveEvernoteClick:Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;

    .line 295
    invoke-static {p1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;

    move-result-object v0

    .line 296
    const v1, 0x7f030092

    .line 295
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 297
    const v0, 0x7f0b016d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->completeBtn:Landroid/widget/ImageView;

    .line 298
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->nameTV:Landroid/widget/TextView;

    .line 299
    const v0, 0x7f0b018a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->goalTV:Landroid/widget/TextView;

    .line 300
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LinearLayoutForListView;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->mEvernoteListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    .line 301
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->completeBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->onCompleteClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    invoke-static {p1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/model/Project;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->setEvernoteViewContent(Lim/doit/pro/model/Project;)V

    .line 303
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;Lim/doit/pro/model/Project;)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->setEvernoteViewContent(Lim/doit/pro/model/Project;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;)Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->this$1:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    return-object v0
.end method

.method private setEvernoteViewContent(Lim/doit/pro/model/Project;)V
    .locals 5
    .param p1, "project"    # Lim/doit/pro/model/Project;

    .prologue
    .line 324
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->mEvernoteListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/LinearLayoutForListView;->removeAllViews()V

    .line 325
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->this$1:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getEvernoteList()Ljava/util/ArrayList;

    move-result-object v1

    .line 326
    .local v1, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->mEvernoteListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/LinearLayoutForListView;->setVisibility(I)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->mEvernoteListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/LinearLayoutForListView;->setVisibility(I)V

    .line 331
    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    new-instance v0, Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager;

    .line 333
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->this$1:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;

    move-result-object v2

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getMedias()Ljava/util/ArrayList;

    move-result-object v3

    .line 334
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->isEditable()Z

    move-result v4

    .line 332
    invoke-direct {v0, v2, v3, v4}, Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Z)V

    .line 335
    .local v0, "adapter":Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager;
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->onRemoveEvernoteClick:Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;

    invoke-virtual {v0, v2}, Lim/doit/pro/activity/listview/EvernoteListViewAdapterForViewPager;->setOnRemoveClickListener(Lim/doit/pro/activity/listview/EvernoteListViewAdapter$OnRemoveClickListener;)V

    .line 336
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->mEvernoteListView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    invoke-virtual {v2, v0}, Lim/doit/pro/ui/component/LinearLayoutForListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public setItemBackgroud(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 342
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
    .line 310
    move-object v1, p1

    check-cast v1, Lim/doit/pro/model/Project;

    .line 311
    .local v1, "project":Lim/doit/pro/model/Project;
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->completeBtn:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lim/doit/pro/activity/utils/ViewUtils;->setCompleteViewContent(Lim/doit/pro/model/BaseEntityWithPos;Landroid/widget/ImageView;)V

    .line 312
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getGoalName()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "goalName":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->goalTV:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    :goto_0
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->this$1:Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;)Lim/doit/pro/activity/ProjectViewPagerActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    invoke-direct {p0, v2}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->setEvernoteViewContent(Lim/doit/pro/model/Project;)V

    .line 321
    return-void

    .line 317
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->goalTV:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter$ProjectViewHolder;->goalTV:Landroid/widget/TextView;

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getGoalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
