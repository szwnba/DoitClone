.class Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "WidgetSelectBox3x3ConfigureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;,
        Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$GroupViewHolder;,
        Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$NoGroupChildViewHolder;,
        Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)V

    return-void
.end method


# virtual methods
.method public getChild(II)Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    invoke-static {v0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->access$1(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->getChild(II)Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 292
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
    .line 333
    if-nez p4, :cond_0

    .line 334
    new-instance v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;

    .line 335
    iget-object v1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    .line 334
    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;Landroid/content/Context;)V

    .line 339
    .local v0, "holder":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;
    :goto_0
    invoke-virtual {v0, p1, p2}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;->setViewContent(II)V

    .line 340
    return-object v0

    .end local v0    # "holder":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;
    :cond_0
    move-object v0, p4

    .line 337
    check-cast v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;

    .restart local v0    # "holder":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 268
    iget-object v1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    invoke-static {v1}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->access$1(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 269
    .local v0, "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;>;"
    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    const/4 v1, 0x0

    .line 272
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getGroup(I)Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    invoke-static {v0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->access$0(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->getGroup(I)Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    invoke-static {v0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->access$0(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 263
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    invoke-static {v0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->access$0(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 287
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->getGroup(I)Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;

    move-result-object v0

    iget v0, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->groupType:I

    return v0
.end method

.method public getGroupTypeCount()I
    .locals 1

    .prologue
    .line 302
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
    .line 314
    if-nez p3, :cond_1

    .line 315
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->getGroupType(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 316
    new-instance v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$GroupViewHolder;

    .line 317
    iget-object v1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    .line 316
    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$GroupViewHolder;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;Landroid/content/Context;)V

    .line 325
    .local v0, "holder":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ViewHolder;
    :goto_0
    invoke-virtual {v0, p1}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ViewHolder;->setViewContent(I)V

    .line 326
    return-object v0

    .line 319
    .end local v0    # "holder":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ViewHolder;
    :cond_0
    new-instance v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$NoGroupChildViewHolder;

    .line 320
    iget-object v1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    .line 319
    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$NoGroupChildViewHolder;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;Landroid/content/Context;)V

    .line 322
    .restart local v0    # "holder":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ViewHolder;
    goto :goto_0

    .end local v0    # "holder":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ViewHolder;
    :cond_1
    move-object v0, p3

    .line 323
    check-cast v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ViewHolder;

    .restart local v0    # "holder":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 345
    const/4 v0, 0x1

    return v0
.end method
