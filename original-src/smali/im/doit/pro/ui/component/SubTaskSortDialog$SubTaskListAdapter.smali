.class public Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SubTaskSortDialog.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SubTaskSortDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubTaskListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$ResetListPosition;,
        Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SubTaskSortDialog;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;)D
    .locals 2

    .prologue
    .line 210
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->getDelta()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;)Lim/doit/pro/ui/component/SubTaskSortDialog;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    return-object v0
.end method

.method private getDelta()D
    .locals 6

    .prologue
    .line 211
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private refreshPositionOfItem(II)V
    .locals 16
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 165
    move-object/from16 v0, p0

    iget-object v9, v0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    invoke-static {v9}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$4(Lim/doit/pro/ui/component/SubTaskSortDialog;)Ljava/util/ArrayList;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim/doit/pro/model/SubTask;

    .line 166
    .local v4, "item":Lim/doit/pro/model/SubTask;
    move-object/from16 v0, p0

    iget-object v9, v0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    invoke-static {v9}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$4(Lim/doit/pro/ui/component/SubTaskSortDialog;)Ljava/util/ArrayList;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    move-object/from16 v0, p0

    iget-object v9, v0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    invoke-static {v9}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$4(Lim/doit/pro/ui/component/SubTaskSortDialog;)Ljava/util/ArrayList;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 168
    const/4 v8, 0x0

    .local v8, "preItem":Lim/doit/pro/model/BaseEntityWithPos;
    const/4 v5, 0x0

    .line 170
    .local v5, "nextItem":Lim/doit/pro/model/BaseEntityWithPos;
    if-lez p2, :cond_1

    .line 171
    move-object/from16 v0, p0

    iget-object v9, v0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    invoke-static {v9}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$4(Lim/doit/pro/ui/component/SubTaskSortDialog;)Ljava/util/ArrayList;

    move-result-object v9

    add-int/lit8 v10, p2, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "preItem":Lim/doit/pro/model/BaseEntityWithPos;
    check-cast v8, Lim/doit/pro/model/BaseEntityWithPos;

    .line 172
    .restart local v8    # "preItem":Lim/doit/pro/model/BaseEntityWithPos;
    if-eqz v8, :cond_1

    .line 173
    invoke-virtual {v8}, Lim/doit/pro/model/BaseEntityWithPos;->isGrouper()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Lim/doit/pro/model/BaseEntityWithPos;->isTagFilter()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 174
    :cond_0
    const/4 v8, 0x0

    .line 177
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move/from16 v0, p2

    if-ge v0, v9, :cond_2

    .line 178
    move-object/from16 v0, p0

    iget-object v9, v0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    invoke-static {v9}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$4(Lim/doit/pro/ui/component/SubTaskSortDialog;)Ljava/util/ArrayList;

    move-result-object v9

    add-int/lit8 v10, p2, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "nextItem":Lim/doit/pro/model/BaseEntityWithPos;
    check-cast v5, Lim/doit/pro/model/BaseEntityWithPos;

    .line 179
    .restart local v5    # "nextItem":Lim/doit/pro/model/BaseEntityWithPos;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lim/doit/pro/model/BaseEntityWithPos;->isGrouper()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 180
    const/4 v5, 0x0

    .line 183
    :cond_2
    if-nez v8, :cond_3

    if-nez v5, :cond_3

    .line 184
    const-string v9, "cannot drag"

    invoke-static {v9}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 208
    :goto_0
    return-void

    .line 187
    :cond_3
    invoke-virtual {v4}, Lim/doit/pro/model/SubTask;->getPos()J

    move-result-wide v6

    .line 188
    .local v6, "newPos":J
    if-nez v8, :cond_6

    .line 189
    invoke-virtual {v5}, Lim/doit/pro/model/BaseEntityWithPos;->getPos()J

    move-result-wide v10

    sget-wide v12, Lim/doit/pro/utils/Constants;->GAP:J

    long-to-double v12, v12

    invoke-direct/range {p0 .. p0}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->getDelta()D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    sub-long v6, v10, v12

    .line 203
    :cond_4
    :goto_1
    invoke-virtual {v4, v6, v7}, Lim/doit/pro/model/SubTask;->setPos(J)V

    .line 204
    move-object/from16 v0, p0

    iget-object v9, v0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    invoke-static {v9}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$2(Lim/doit/pro/ui/component/SubTaskSortDialog;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 205
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v9

    iget-object v9, v9, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-virtual {v9, v4}, Lim/doit/pro/db/persist/SubTaskDao;->updateAndSaveLog(Lim/doit/pro/model/SubTask;)V

    .line 207
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    invoke-static {v9}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$3(Lim/doit/pro/ui/component/SubTaskSortDialog;)V

    goto :goto_0

    .line 190
    :cond_6
    if-nez v5, :cond_7

    .line 191
    invoke-virtual {v8}, Lim/doit/pro/model/BaseEntityWithPos;->getPos()J

    move-result-wide v10

    sget-wide v12, Lim/doit/pro/utils/Constants;->GAP:J

    long-to-double v12, v12

    invoke-direct/range {p0 .. p0}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->getDelta()D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long v6, v10, v12

    .line 192
    goto :goto_1

    .line 193
    :cond_7
    invoke-virtual {v5}, Lim/doit/pro/model/BaseEntityWithPos;->getPos()J

    move-result-wide v10

    invoke-virtual {v8}, Lim/doit/pro/model/BaseEntityWithPos;->getPos()J

    move-result-wide v12

    sub-long v2, v10, v12

    .line 194
    .local v2, "diff":J
    invoke-virtual {v8}, Lim/doit/pro/model/BaseEntityWithPos;->getPos()J

    move-result-wide v10

    long-to-double v12, v2

    invoke-direct/range {p0 .. p0}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->getDelta()D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long v6, v10, v12

    .line 196
    invoke-virtual {v8}, Lim/doit/pro/model/BaseEntityWithPos;->getPos()J

    move-result-wide v10

    sub-long v10, v6, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x64

    cmp-long v9, v10, v12

    if-ltz v9, :cond_8

    .line 197
    invoke-virtual {v5}, Lim/doit/pro/model/BaseEntityWithPos;->getPos()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x64

    cmp-long v9, v10, v12

    if-ltz v9, :cond_8

    .line 198
    const-wide v10, -0x7ffffffffffffffeL    # -1.0E-323

    cmp-long v9, v6, v10

    if-ltz v9, :cond_8

    const-wide v10, 0x7ffffffffffffffeL

    cmp-long v9, v6, v10

    if-lez v9, :cond_4

    .line 199
    :cond_8
    new-instance v9, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$ResetListPosition;

    move-object/from16 v0, p0

    iget-object v10, v0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    invoke-static {v10}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$4(Lim/doit/pro/ui/component/SubTaskSortDialog;)Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v10}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$ResetListPosition;-><init>(Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;Ljava/util/ArrayList;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$ResetListPosition;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto/16 :goto_0
.end method


# virtual methods
.method public drop(II)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 159
    if-eq p1, p2, :cond_0

    .line 160
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->refreshPositionOfItem(II)V

    .line 162
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$4(Lim/doit/pro/ui/component/SubTaskSortDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$4(Lim/doit/pro/ui/component/SubTaskSortDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lim/doit/pro/model/SubTask;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$4(Lim/doit/pro/ui/component/SubTaskSortDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/SubTask;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->getItem(I)Lim/doit/pro/model/SubTask;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 112
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "viewHolder":Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;
    if-nez p2, :cond_0

    .line 119
    new-instance v1, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;

    .end local v1    # "viewHolder":Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;
    iget-object v2, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$1(Lim/doit/pro/ui/component/SubTaskSortDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;-><init>(Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;Landroid/content/Context;)V

    .line 120
    .restart local v1    # "viewHolder":Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;
    iget-object v2, v1, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;->completeBtn:Landroid/widget/ImageView;

    .line 121
    new-instance v3, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$1;

    invoke-direct {v3, p0}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$1;-><init>(Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :goto_0
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->getItem(I)Lim/doit/pro/model/SubTask;

    move-result-object v0

    .line 132
    .local v0, "item":Lim/doit/pro/model/SubTask;
    invoke-virtual {v1, p1, v0}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;->setViewContent(ILim/doit/pro/model/SubTask;)V

    .line 133
    return-object v1

    .end local v0    # "item":Lim/doit/pro/model/SubTask;
    :cond_0
    move-object v1, p2

    .line 129
    check-cast v1, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter$SubTaskViewHolder;

    goto :goto_0
.end method
