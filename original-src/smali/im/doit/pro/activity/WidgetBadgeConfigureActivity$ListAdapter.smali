.class Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "WidgetBadgeConfigureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/WidgetBadgeConfigureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ChildViewHolder;,
        Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$GroupViewHolder;,
        Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$NoGroupChildViewHolder;,
        Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)V

    return-void
.end method


# virtual methods
.method public getChild(II)Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    invoke-static {v0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->access$1(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->getChild(II)Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 294
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 335
    if-nez p4, :cond_0

    .line 336
    new-instance v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ChildViewHolder;

    iget-object v1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ChildViewHolder;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;Landroid/content/Context;)V

    .line 340
    .local v0, "holder":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ChildViewHolder;
    :goto_0
    invoke-virtual {v0, p1, p2}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ChildViewHolder;->setViewContent(II)V

    .line 341
    return-object v0

    .end local v0    # "holder":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ChildViewHolder;
    :cond_0
    move-object v0, p4

    .line 338
    check-cast v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ChildViewHolder;

    .restart local v0    # "holder":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ChildViewHolder;
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 270
    iget-object v1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    invoke-static {v1}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->access$1(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 271
    .local v0, "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;>;"
    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const/4 v1, 0x0

    .line 274
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getGroup(I)Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    invoke-static {v0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->access$0(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->getGroup(I)Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    invoke-static {v0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->access$0(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    invoke-static {v0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->access$0(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 289
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->getGroup(I)Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;

    move-result-object v0

    iget v0, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->groupType:I

    return v0
.end method

.method public getGroupTypeCount()I
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x2

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 316
    if-nez p3, :cond_1

    .line 317
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->getGroupType(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 318
    new-instance v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$GroupViewHolder;

    .line 319
    iget-object v1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    .line 318
    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$GroupViewHolder;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;Landroid/content/Context;)V

    .line 327
    .local v0, "holder":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ViewHolder;
    :goto_0
    invoke-virtual {v0, p1}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ViewHolder;->setViewContent(I)V

    .line 328
    return-object v0

    .line 321
    .end local v0    # "holder":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ViewHolder;
    :cond_0
    new-instance v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$NoGroupChildViewHolder;

    .line 322
    iget-object v1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    .line 321
    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$NoGroupChildViewHolder;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;Landroid/content/Context;)V

    .line 324
    .restart local v0    # "holder":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ViewHolder;
    goto :goto_0

    .end local v0    # "holder":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ViewHolder;
    :cond_1
    move-object v0, p3

    .line 325
    check-cast v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ViewHolder;

    .restart local v0    # "holder":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 346
    const/4 v0, 0x1

    return v0
.end method
