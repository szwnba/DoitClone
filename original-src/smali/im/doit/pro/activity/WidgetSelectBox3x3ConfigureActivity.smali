.class public Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;
.super Lim/doit/pro/activity/WidgetBaseConfigureActivity;
.source "WidgetSelectBox3x3ConfigureActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;,
        Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;,
        Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;
    }
.end annotation


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "im.doit.pro.widget.WidgetSelectBox3x3ConfigureActivity"

.field public static final PREF_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field public static final PREF_PREFIX_KEY:Ljava/lang/String; = "prefix_key_"

.field public static final PREF_PREFIX_KEY_TYPE:Ljava/lang/String; = "prefix_key_type_"


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
            "Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;",
            ">;>;"
        }
    .end annotation
.end field

.field private groupDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;",
            ">;"
        }
    .end annotation
.end field

.field mAppWidgetId:I

.field private mListAdapter:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;

.field private mListView:Landroid/widget/ExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lim/doit/pro/activity/WidgetBaseConfigureActivity;-><init>()V

    .line 37
    iput v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->mAppWidgetId:I

    .line 233
    iput v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->GROUP_TYPE_WITH_CHILDREN:I

    .line 234
    const/4 v0, 0x1

    iput v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->GROUP_TYPE_WITHOUT_CHILDREN:I

    .line 34
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->groupDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->childrenData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->mListAdapter:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->saveSelectedItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initData()V
    .locals 17

    .prologue
    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->groupDatas:Ljava/util/ArrayList;

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->childrenData:Ljava/util/ArrayList;

    .line 141
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v9, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    invoke-virtual {v2}, Lim/doit/pro/db/persist/BoxDao;->findAllNotHidden()Ljava/util/ArrayList;

    move-result-object v7

    .line 144
    .local v7, "boxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Box;>;"
    new-instance v2, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$5;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)V

    invoke-static {v7, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 152
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->groupDatas:Ljava/util/ArrayList;

    new-instance v4, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;

    const v5, 0x7f0c00ec

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .restart local v9    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->filterDao:Lim/doit/pro/db/persist/FilterDao;

    .line 174
    invoke-virtual {v2}, Lim/doit/pro/db/persist/FilterDao;->findAllNotHiddenNotDelete()Ljava/util/ArrayList;

    move-result-object v10

    .line 175
    .local v10, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Filter;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->childrenData:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->groupDatas:Ljava/util/ArrayList;

    new-instance v4, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;

    const v5, 0x7f0c00eb

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .restart local v9    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 187
    invoke-virtual {v2}, Lim/doit/pro/db/persist/ProjectDao;->findAllNotDead()Ljava/util/ArrayList;

    move-result-object v13

    .line 188
    .local v13, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->childrenData:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->groupDatas:Ljava/util/ArrayList;

    new-instance v4, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;

    const v5, 0x7f0c01b3

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .restart local v9    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v2}, Lim/doit/pro/db/persist/GoalDao;->findAllNotDead()Ljava/util/ArrayList;

    move-result-object v11

    .line 200
    .local v11, "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->childrenData:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->groupDatas:Ljava/util/ArrayList;

    new-instance v4, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;

    const v5, 0x7f0c00e9

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .restart local v9    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    .line 212
    invoke-virtual {v2}, Lim/doit/pro/db/persist/TaskContextDao;->findAllNotDeleted()Ljava/util/ArrayList;

    move-result-object v14

    .line 213
    .local v14, "taskContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/TaskContext;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->childrenData:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    return-void

    .line 152
    .end local v10    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Filter;>;"
    .end local v11    # "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    .end local v13    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    .end local v14    # "taskContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/TaskContext;>;"
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lim/doit/pro/model/Box;

    .line 153
    .local v12, "item":Lim/doit/pro/model/Box;
    invoke-virtual {v12}, Lim/doit/pro/model/Box;->getType()Lim/doit/pro/model/enums/BoxType;

    move-result-object v15

    .line 154
    .local v15, "type":Lim/doit/pro/model/enums/BoxType;
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->goals:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, v15}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lim/doit/pro/model/enums/BoxType;->projects:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, v15}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->contexts:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, v15}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->filters:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, v15}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->contacts:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, v15}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->nocontext:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, v15}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->noproject:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, v15}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    invoke-virtual {v12}, Lim/doit/pro/model/Box;->getType()Lim/doit/pro/model/enums/BoxType;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Lim/doit/pro/model/enums/BoxType;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "string"

    .line 162
    invoke-static {v2, v4}, Lim/doit/pro/activity/utils/ViewUtils;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "name":Ljava/lang/String;
    new-instance v1, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;

    .line 165
    const/4 v4, 0x1

    invoke-virtual {v12}, Lim/doit/pro/model/Box;->getUuid()Ljava/lang/String;

    move-result-object v5

    .line 166
    const-class v2, Lim/doit/pro/model/Box;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p0

    .line 164
    invoke-direct/range {v1 .. v6}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v1, "groupData":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->groupDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->childrenData:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 175
    .end local v1    # "groupData":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;
    .end local v3    # "name":Ljava/lang/String;
    .end local v12    # "item":Lim/doit/pro/model/Box;
    .end local v15    # "type":Lim/doit/pro/model/enums/BoxType;
    .restart local v10    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Filter;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lim/doit/pro/model/Filter;

    .line 176
    .local v12, "item":Lim/doit/pro/model/Filter;
    new-instance v8, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v4}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;)V

    .line 177
    .local v8, "data":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;
    invoke-virtual {v12}, Lim/doit/pro/model/Filter;->getUuid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;->id:Ljava/lang/String;

    .line 178
    invoke-virtual {v12}, Lim/doit/pro/model/Filter;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;->name:Ljava/lang/String;

    .line 179
    const-class v4, Lim/doit/pro/model/Filter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;->type:Ljava/lang/String;

    .line 180
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 188
    .end local v8    # "data":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;
    .end local v12    # "item":Lim/doit/pro/model/Filter;
    .restart local v13    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lim/doit/pro/model/Project;

    .line 189
    .local v12, "item":Lim/doit/pro/model/Project;
    new-instance v8, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v4}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;)V

    .line 190
    .restart local v8    # "data":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;
    invoke-virtual {v12}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;->id:Ljava/lang/String;

    .line 191
    invoke-virtual {v12}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;->name:Ljava/lang/String;

    .line 192
    const-class v4, Lim/doit/pro/model/Project;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;->type:Ljava/lang/String;

    .line 193
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 200
    .end local v8    # "data":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;
    .end local v12    # "item":Lim/doit/pro/model/Project;
    .restart local v11    # "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lim/doit/pro/model/Goal;

    .line 201
    .local v12, "item":Lim/doit/pro/model/Goal;
    new-instance v8, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v4}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;)V

    .line 202
    .restart local v8    # "data":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;
    invoke-virtual {v12}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;->id:Ljava/lang/String;

    .line 203
    invoke-virtual {v12}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;->name:Ljava/lang/String;

    .line 204
    const-class v4, Lim/doit/pro/model/Goal;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;->type:Ljava/lang/String;

    .line 205
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 213
    .end local v8    # "data":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;
    .end local v12    # "item":Lim/doit/pro/model/Goal;
    .restart local v14    # "taskContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/TaskContext;>;"
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lim/doit/pro/model/TaskContext;

    .line 214
    .local v12, "item":Lim/doit/pro/model/TaskContext;
    new-instance v8, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v4}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;)V

    .line 215
    .restart local v8    # "data":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;
    invoke-virtual {v12}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;->id:Ljava/lang/String;

    .line 216
    invoke-virtual {v12}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;->name:Ljava/lang/String;

    .line 217
    const-class v4, Lim/doit/pro/model/TaskContext;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;->type:Ljava/lang/String;

    .line 218
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method private saveSelectedItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 119
    .line 120
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->getPrefsName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 121
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "prefix_key_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->mAppWidgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "prefix_key_type_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->mAppWidgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v2, "resultValue":Landroid/content/Intent;
    const-string v3, "appWidgetId"

    iget v4, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->mAppWidgetId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->setResult(ILandroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->showWidget()V

    .line 130
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->finish()V

    .line 131
    return-void
.end method


# virtual methods
.method public getPrefsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    const-string v0, "im.doit.pro.widget.WidgetSelectBox3x3ConfigureActivity"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lim/doit/pro/activity/WidgetBaseConfigureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->isWidgetEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->initData()V

    .line 56
    const v3, 0x7f0300ba

    invoke-virtual {p0, v3}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->setContentView(I)V

    .line 58
    const v3, 0x7f0b003a

    invoke-virtual {p0, v3}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 59
    .local v2, "titleView":Landroid/widget/TextView;
    const v3, 0x7f0c023a

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 63
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 65
    const-string v3, "appWidgetId"

    .line 66
    const/4 v4, 0x0

    .line 65
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->mAppWidgetId:I

    .line 70
    :cond_1
    iget v3, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->mAppWidgetId:I

    if-nez v3, :cond_2

    .line 71
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->finish()V

    .line 73
    :cond_2
    const v3, 0x7f0b0069

    invoke-virtual {p0, v3}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ExpandableListView;

    iput-object v3, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->mListView:Landroid/widget/ExpandableListView;

    .line 74
    new-instance v3, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;)V

    iput-object v3, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->mListAdapter:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;

    .line 75
    iget-object v3, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->mListView:Landroid/widget/ExpandableListView;

    iget-object v4, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->mListAdapter:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 76
    iget-object v3, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->mListView:Landroid/widget/ExpandableListView;

    new-instance v4, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$1;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$1;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 84
    iget-object v3, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->mListView:Landroid/widget/ExpandableListView;

    new-instance v4, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$2;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$2;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 92
    iget-object v3, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->mListView:Landroid/widget/ExpandableListView;

    new-instance v4, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$3;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$3;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 105
    iget-object v3, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->mListView:Landroid/widget/ExpandableListView;

    new-instance v4, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$4;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$4;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    goto :goto_0
.end method

.method public showWidget()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/widget/WidgetTaskList3x3Provider;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    const-string v1, "im.doit.pro.widget.DoitBaseProvider.refresh"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    return-void
.end method
