.class public Lim/doit/pro/activity/WidgetBadgeConfigureActivity;
.super Lim/doit/pro/activity/WidgetBaseConfigureActivity;
.source "WidgetBadgeConfigureActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;,
        Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;,
        Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;
    }
.end annotation


# static fields
.field public static final INBOX:Ljava/lang/String; = "inbox"

.field public static final PREFS_NAME:Ljava/lang/String; = "im.doit.pro.widget.WidgetBadgeConfigureActivity"

.field public static final PREF_PREFIX_KEY:Ljava/lang/String; = "prefix_key_"

.field public static final PREF_PREFIX_KEY_TYPE:Ljava/lang/String; = "prefix_key_type_"

.field public static final TODAY:Ljava/lang/String; = "today"


# instance fields
.field private final GROUP_TYPE_WITHOUT_CHILDREN:I

.field private final GROUP_TYPE_WITH_CHILDREN:I

.field private childrenData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;",
            ">;>;"
        }
    .end annotation
.end field

.field private groupDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;",
            ">;"
        }
    .end annotation
.end field

.field mAppWidgetId:I

.field private mListAdapter:Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;

.field private mListView:Landroid/widget/ExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lim/doit/pro/activity/WidgetBaseConfigureActivity;-><init>()V

    .line 38
    iput v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->mAppWidgetId:I

    .line 235
    iput v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->GROUP_TYPE_WITH_CHILDREN:I

    .line 236
    const/4 v0, 0x1

    iput v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->GROUP_TYPE_WITHOUT_CHILDREN:I

    .line 34
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->groupDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->childrenData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->mListAdapter:Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->saveSelectedItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initData()V
    .locals 17

    .prologue
    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->groupDatas:Ljava/util/ArrayList;

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->childrenData:Ljava/util/ArrayList;

    .line 143
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v9, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    invoke-virtual {v2}, Lim/doit/pro/db/persist/BoxDao;->findAllNotHidden()Ljava/util/ArrayList;

    move-result-object v7

    .line 146
    .local v7, "boxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Box;>;"
    new-instance v2, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$5;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)V

    invoke-static {v7, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 154
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->groupDatas:Ljava/util/ArrayList;

    new-instance v4, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;

    const v5, 0x7f0c00ec

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .restart local v9    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->filterDao:Lim/doit/pro/db/persist/FilterDao;

    .line 176
    invoke-virtual {v2}, Lim/doit/pro/db/persist/FilterDao;->findAllNotHiddenNotDelete()Ljava/util/ArrayList;

    move-result-object v10

    .line 177
    .local v10, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Filter;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->childrenData:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->groupDatas:Ljava/util/ArrayList;

    new-instance v4, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;

    const v5, 0x7f0c00eb

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .restart local v9    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 189
    invoke-virtual {v2}, Lim/doit/pro/db/persist/ProjectDao;->findAllNotDead()Ljava/util/ArrayList;

    move-result-object v13

    .line 190
    .local v13, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->childrenData:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->groupDatas:Ljava/util/ArrayList;

    new-instance v4, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;

    const v5, 0x7f0c01b3

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .restart local v9    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v2}, Lim/doit/pro/db/persist/GoalDao;->findAllNotDead()Ljava/util/ArrayList;

    move-result-object v11

    .line 202
    .local v11, "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->childrenData:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->groupDatas:Ljava/util/ArrayList;

    new-instance v4, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;

    const v5, 0x7f0c00e9

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .restart local v9    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    .line 214
    invoke-virtual {v2}, Lim/doit/pro/db/persist/TaskContextDao;->findAllNotDeleted()Ljava/util/ArrayList;

    move-result-object v14

    .line 215
    .local v14, "taskContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/TaskContext;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->childrenData:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    return-void

    .line 154
    .end local v10    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Filter;>;"
    .end local v11    # "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    .end local v13    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    .end local v14    # "taskContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/TaskContext;>;"
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lim/doit/pro/model/Box;

    .line 155
    .local v12, "item":Lim/doit/pro/model/Box;
    invoke-virtual {v12}, Lim/doit/pro/model/Box;->getType()Lim/doit/pro/model/enums/BoxType;

    move-result-object v15

    .line 156
    .local v15, "type":Lim/doit/pro/model/enums/BoxType;
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->goals:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, v15}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->projects:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, v15}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->contexts:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, v15}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->filters:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, v15}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->contacts:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, v15}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->nocontext:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, v15}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->noproject:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, v15}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    invoke-virtual {v12}, Lim/doit/pro/model/Box;->getType()Lim/doit/pro/model/enums/BoxType;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Lim/doit/pro/model/enums/BoxType;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "string"

    .line 164
    invoke-static {v2, v4}, Lim/doit/pro/activity/utils/ViewUtils;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "name":Ljava/lang/String;
    new-instance v1, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;

    .line 167
    const/4 v4, 0x1

    invoke-virtual {v12}, Lim/doit/pro/model/Box;->getUuid()Ljava/lang/String;

    move-result-object v5

    .line 168
    const-class v2, Lim/doit/pro/model/Box;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p0

    .line 166
    invoke-direct/range {v1 .. v6}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v1, "groupData":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->groupDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->childrenData:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 177
    .end local v1    # "groupData":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;
    .end local v3    # "name":Ljava/lang/String;
    .end local v12    # "item":Lim/doit/pro/model/Box;
    .end local v15    # "type":Lim/doit/pro/model/enums/BoxType;
    .restart local v10    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Filter;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lim/doit/pro/model/Filter;

    .line 178
    .local v12, "item":Lim/doit/pro/model/Filter;
    new-instance v8, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v4}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;)V

    .line 179
    .local v8, "data":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;
    invoke-virtual {v12}, Lim/doit/pro/model/Filter;->getUuid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;->id:Ljava/lang/String;

    .line 180
    invoke-virtual {v12}, Lim/doit/pro/model/Filter;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;->name:Ljava/lang/String;

    .line 181
    const-class v4, Lim/doit/pro/model/Filter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;->type:Ljava/lang/String;

    .line 182
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 190
    .end local v8    # "data":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;
    .end local v12    # "item":Lim/doit/pro/model/Filter;
    .restart local v13    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lim/doit/pro/model/Project;

    .line 191
    .local v12, "item":Lim/doit/pro/model/Project;
    new-instance v8, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v4}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;)V

    .line 192
    .restart local v8    # "data":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;
    invoke-virtual {v12}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;->id:Ljava/lang/String;

    .line 193
    invoke-virtual {v12}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;->name:Ljava/lang/String;

    .line 194
    const-class v4, Lim/doit/pro/model/Project;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;->type:Ljava/lang/String;

    .line 195
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 202
    .end local v8    # "data":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;
    .end local v12    # "item":Lim/doit/pro/model/Project;
    .restart local v11    # "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lim/doit/pro/model/Goal;

    .line 203
    .local v12, "item":Lim/doit/pro/model/Goal;
    new-instance v8, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v4}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;)V

    .line 204
    .restart local v8    # "data":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;
    invoke-virtual {v12}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;->id:Ljava/lang/String;

    .line 205
    invoke-virtual {v12}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;->name:Ljava/lang/String;

    .line 206
    const-class v4, Lim/doit/pro/model/Goal;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;->type:Ljava/lang/String;

    .line 207
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 215
    .end local v8    # "data":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;
    .end local v12    # "item":Lim/doit/pro/model/Goal;
    .restart local v14    # "taskContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/TaskContext;>;"
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lim/doit/pro/model/TaskContext;

    .line 216
    .local v12, "item":Lim/doit/pro/model/TaskContext;
    new-instance v8, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v4}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;)V

    .line 217
    .restart local v8    # "data":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;
    invoke-virtual {v12}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;->id:Ljava/lang/String;

    .line 218
    invoke-virtual {v12}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;->name:Ljava/lang/String;

    .line 219
    const-class v4, Lim/doit/pro/model/TaskContext;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ChildData;->type:Ljava/lang/String;

    .line 220
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method private saveSelectedItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 122
    .line 123
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->getPrefsName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prefix_key_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prefix_key_type_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v1, "resultValue":Landroid/content/Intent;
    const-string v2, "appWidgetId"

    iget v3, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->setResult(ILandroid/content/Intent;)V

    .line 131
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->showWidget()V

    .line 132
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->finish()V

    .line 133
    return-void
.end method


# virtual methods
.method public getPrefsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const-string v0, "im.doit.pro.widget.WidgetBadgeConfigureActivity"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lim/doit/pro/activity/WidgetBaseConfigureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->isWidgetEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->initData()V

    .line 58
    const v3, 0x7f0300b2

    invoke-virtual {p0, v3}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->setContentView(I)V

    .line 60
    const v3, 0x7f0b003a

    invoke-virtual {p0, v3}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 61
    .local v2, "titleView":Landroid/widget/TextView;
    const v3, 0x7f0c0239

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 65
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 67
    const-string v3, "appWidgetId"

    .line 68
    const/4 v4, 0x0

    .line 67
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->mAppWidgetId:I

    .line 72
    :cond_1
    iget v3, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->mAppWidgetId:I

    if-nez v3, :cond_2

    .line 73
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->finish()V

    .line 76
    :cond_2
    const v3, 0x7f0b0069

    invoke-virtual {p0, v3}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ExpandableListView;

    iput-object v3, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->mListView:Landroid/widget/ExpandableListView;

    .line 77
    new-instance v3, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;)V

    iput-object v3, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->mListAdapter:Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;

    .line 78
    iget-object v3, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->mListView:Landroid/widget/ExpandableListView;

    iget-object v4, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->mListAdapter:Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 79
    iget-object v3, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->mListView:Landroid/widget/ExpandableListView;

    new-instance v4, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$1;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$1;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 87
    iget-object v3, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->mListView:Landroid/widget/ExpandableListView;

    new-instance v4, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$2;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$2;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 95
    iget-object v3, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->mListView:Landroid/widget/ExpandableListView;

    new-instance v4, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$3;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$3;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 108
    iget-object v3, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->mListView:Landroid/widget/ExpandableListView;

    new-instance v4, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$4;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$4;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    goto :goto_0
.end method

.method public showWidget()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/widget/WidgetBadgeProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    const-string v1, "im.doit.pro.widget.DoitBaseProvider.refresh"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    return-void
.end method
