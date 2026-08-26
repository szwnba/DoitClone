.class Lim/doit/pro/widget/ListViewsFactory;
.super Ljava/lang/Object;
.source "WidgetListWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field completedBtnCheckedSrc:I

.field completedBtnUncheckedSrc:I

.field private dataType:Ljava/lang/String;

.field private dataUUID:Ljava/lang/String;

.field datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation
.end field

.field private isShowCompleteBtn:Z

.field private mAppWidgetId:I

.field private mContext:Landroid/content/Context;

.field titleTextColor:I

.field titleTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/widget/ListViewsFactory;->datas:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lim/doit/pro/widget/ListViewsFactory;->mContext:Landroid/content/Context;

    .line 59
    const-string v0, "appWidgetId"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lim/doit/pro/widget/ListViewsFactory;->mAppWidgetId:I

    .line 61
    const-string v0, "widget_data_type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/widget/ListViewsFactory;->dataType:Ljava/lang/String;

    .line 62
    const-string v0, "widget_data_uuid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/widget/ListViewsFactory;->dataUUID:Ljava/lang/String;

    .line 64
    const-string v0, "widget_show_complete_btn"

    .line 63
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lim/doit/pro/widget/ListViewsFactory;->isShowCompleteBtn:Z

    .line 67
    const v0, 0x7f09005d

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v0

    .line 68
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getWidgetFontScale()F

    move-result v1

    .line 66
    mul-float/2addr v0, v1

    iput v0, p0, Lim/doit/pro/widget/ListViewsFactory;->titleTextSize:F

    .line 69
    const-string v0, "#000000"

    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getWidgetBGColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lim/doit/pro/widget/ListViewsFactory;->titleTextColor:I

    .line 71
    const v0, 0x7f020124

    iput v0, p0, Lim/doit/pro/widget/ListViewsFactory;->completedBtnCheckedSrc:I

    .line 72
    const v0, 0x7f020127

    iput v0, p0, Lim/doit/pro/widget/ListViewsFactory;->completedBtnUncheckedSrc:I

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    const/high16 v0, -0x1000000

    iput v0, p0, Lim/doit/pro/widget/ListViewsFactory;->titleTextColor:I

    .line 75
    const v0, 0x7f020125

    iput v0, p0, Lim/doit/pro/widget/ListViewsFactory;->completedBtnCheckedSrc:I

    .line 76
    const v0, 0x7f020126

    iput v0, p0, Lim/doit/pro/widget/ListViewsFactory;->completedBtnUncheckedSrc:I

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lim/doit/pro/widget/ListViewsFactory;->datas:Ljava/util/ArrayList;

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/widget/ListViewsFactory;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 90
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/16 v6, 0x8

    const v10, 0x7f0b003a

    const v9, 0x7f0b008c

    .line 100
    const v4, 0x7f0300b8

    .line 101
    .local v4, "itemId":I
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lim/doit/pro/widget/ListViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0300b8

    invoke-direct {v5, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 102
    .local v5, "rv":Landroid/widget/RemoteViews;
    iget-object v7, p0, Lim/doit/pro/widget/ListViewsFactory;->datas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/BaseEntityWithPos;

    .line 103
    .local v3, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v3}, Lim/doit/pro/model/BaseEntityWithPos;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v10, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 104
    iget v7, p0, Lim/doit/pro/widget/ListViewsFactory;->titleTextSize:F

    invoke-virtual {p0, v5, v10, v7}, Lim/doit/pro/widget/ListViewsFactory;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 105
    iget v7, p0, Lim/doit/pro/widget/ListViewsFactory;->titleTextColor:I

    invoke-virtual {v5, v10, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 107
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v1, "extras":Landroid/os/Bundle;
    sget-object v7, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->EXTRA_DATA_ID:Ljava/lang/String;

    .line 109
    invoke-virtual {v3}, Lim/doit/pro/model/BaseEntityWithPos;->getUniqUuid()Ljava/lang/String;

    move-result-object v8

    .line 108
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v7, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->EXTRA_DATA_TYPE:Ljava/lang/String;

    .line 111
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 110
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "im.doit.pro.widget.WidgetTaskList3x3Provider.click"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 116
    const v7, 0x7f0b0038

    invoke-virtual {v5, v7, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 118
    invoke-virtual {v3}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 119
    :cond_0
    invoke-virtual {v3}, Lim/doit/pro/model/BaseEntityWithPos;->isEditable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 121
    iget-boolean v7, p0, Lim/doit/pro/widget/ListViewsFactory;->isShowCompleteBtn:Z

    if-eqz v7, :cond_1

    const/4 v6, 0x0

    .line 120
    :cond_1
    invoke-virtual {v5, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v0, "completeIntent":Landroid/content/Intent;
    const-string v6, "im.doit.pro.widget.WidgetTaskList3x3Provider.complete_click"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 126
    invoke-virtual {v5, v9, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 128
    invoke-virtual {v3}, Lim/doit/pro/model/BaseEntityWithPos;->isCompleted()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lim/doit/pro/widget/ListViewsFactory;->completedBtnCheckedSrc:I

    .line 127
    :goto_0
    invoke-virtual {v5, v9, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 134
    .end local v0    # "completeIntent":Landroid/content/Intent;
    :goto_1
    return-object v5

    .line 129
    .restart local v0    # "completeIntent":Landroid/content/Intent;
    :cond_2
    iget v6, p0, Lim/doit/pro/widget/ListViewsFactory;->completedBtnUncheckedSrc:I

    goto :goto_0

    .line 131
    .end local v0    # "completeIntent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v5, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onDataSetChanged()V
    .locals 7

    .prologue
    .line 153
    iget-object v5, p0, Lim/doit/pro/widget/ListViewsFactory;->datas:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lim/doit/pro/widget/ListViewsFactory;->datas:Ljava/util/ArrayList;

    .line 158
    :goto_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isLogin()Z

    move-result v5

    if-nez v5, :cond_2

    .line 189
    :cond_0
    :goto_1
    return-void

    .line 156
    :cond_1
    iget-object v5, p0, Lim/doit/pro/widget/ListViewsFactory;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 161
    :cond_2
    const-class v5, Lim/doit/pro/model/Box;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/widget/ListViewsFactory;->dataType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 162
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    iget-object v6, p0, Lim/doit/pro/widget/ListViewsFactory;->dataUUID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lim/doit/pro/db/persist/BoxDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Box;

    .line 163
    .local v0, "box":Lim/doit/pro/model/Box;
    if-eqz v0, :cond_0

    .line 164
    iget-object v5, p0, Lim/doit/pro/widget/ListViewsFactory;->datas:Ljava/util/ArrayList;

    invoke-static {v0}, Lim/doit/pro/utils/QueryUtils;->findDatasByBoxForWidget(Lim/doit/pro/model/Box;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 166
    .end local v0    # "box":Lim/doit/pro/model/Box;
    :cond_3
    const-class v5, Lim/doit/pro/model/Filter;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/widget/ListViewsFactory;->dataType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 167
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->filterDao:Lim/doit/pro/db/persist/FilterDao;

    iget-object v6, p0, Lim/doit/pro/widget/ListViewsFactory;->dataUUID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lim/doit/pro/db/persist/FilterDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Filter;

    .line 168
    .local v1, "filter":Lim/doit/pro/model/Filter;
    if-eqz v1, :cond_0

    .line 169
    iget-object v5, p0, Lim/doit/pro/widget/ListViewsFactory;->datas:Ljava/util/ArrayList;

    invoke-static {v1}, Lim/doit/pro/utils/QueryUtils;->findDatasByFilterForWidget(Lim/doit/pro/model/Filter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 171
    .end local v1    # "filter":Lim/doit/pro/model/Filter;
    :cond_4
    const-class v5, Lim/doit/pro/model/Project;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/widget/ListViewsFactory;->dataType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 172
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v6, p0, Lim/doit/pro/widget/ListViewsFactory;->dataUUID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/Project;

    .line 173
    .local v3, "project":Lim/doit/pro/model/Project;
    if-eqz v3, :cond_0

    .line 174
    iget-object v5, p0, Lim/doit/pro/widget/ListViewsFactory;->datas:Ljava/util/ArrayList;

    invoke-static {v3}, Lim/doit/pro/utils/QueryUtils;->findDatasByProjectForWidget(Lim/doit/pro/model/Project;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 176
    .end local v3    # "project":Lim/doit/pro/model/Project;
    :cond_5
    const-class v5, Lim/doit/pro/model/TaskContext;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/widget/ListViewsFactory;->dataType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 177
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    .line 178
    iget-object v6, p0, Lim/doit/pro/widget/ListViewsFactory;->dataUUID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lim/doit/pro/db/persist/TaskContextDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v4

    check-cast v4, Lim/doit/pro/model/TaskContext;

    .line 179
    .local v4, "taskContext":Lim/doit/pro/model/TaskContext;
    if-eqz v4, :cond_0

    .line 180
    iget-object v5, p0, Lim/doit/pro/widget/ListViewsFactory;->datas:Ljava/util/ArrayList;

    .line 181
    invoke-static {v4}, Lim/doit/pro/utils/QueryUtils;->findDatasByTaskContextForWidget(Lim/doit/pro/model/TaskContext;)Ljava/util/ArrayList;

    move-result-object v6

    .line 180
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 183
    .end local v4    # "taskContext":Lim/doit/pro/model/TaskContext;
    :cond_6
    const-class v5, Lim/doit/pro/model/Goal;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/widget/ListViewsFactory;->dataType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    iget-object v6, p0, Lim/doit/pro/widget/ListViewsFactory;->dataUUID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lim/doit/pro/db/persist/GoalDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Goal;

    .line 185
    .local v2, "goal":Lim/doit/pro/model/Goal;
    if-eqz v2, :cond_0

    .line 186
    iget-object v5, p0, Lim/doit/pro/widget/ListViewsFactory;->datas:Ljava/util/ArrayList;

    invoke-static {v2}, Lim/doit/pro/utils/QueryUtils;->findDatasByGoalForWidget(Lim/doit/pro/model/Goal;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lim/doit/pro/widget/ListViewsFactory;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/widget/ListViewsFactory;->datas:Ljava/util/ArrayList;

    .line 195
    return-void
.end method

.method protected setTextSize(Landroid/widget/RemoteViews;IF)V
    .locals 2
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "fontSize"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string v0, "setTextSize"

    invoke-virtual {p1, p2, v0, p3}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto :goto_0
.end method
