.class public Lim/doit/pro/ui/component/DHomeMenuList;
.super Ljava/lang/Object;
.source "DHomeMenuList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;,
        Lim/doit/pro/ui/component/DHomeMenuList$OnHomeMenuListListener;
    }
.end annotation


# instance fields
.field private isFirst:Z

.field private mActivity:Landroid/app/Activity;

.field private mBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Box;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentBox:Lim/doit/pro/model/Box;

.field private mListener:Lim/doit/pro/ui/component/DHomeMenuList$OnHomeMenuListListener;

.field private mMenuAdapter:Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;

.field private mMenuList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ListView;Lim/doit/pro/ui/component/DHomeMenuList$OnHomeMenuListListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listView"    # Landroid/widget/ListView;
    .param p3, "onChangeBoxListener"    # Lim/doit/pro/ui/component/DHomeMenuList$OnHomeMenuListListener;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DHomeMenuList;->isFirst:Z

    .line 46
    iput-object p1, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mActivity:Landroid/app/Activity;

    .line 47
    invoke-direct {p0}, Lim/doit/pro/ui/component/DHomeMenuList;->initData()V

    .line 48
    iput-object p2, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mMenuList:Landroid/widget/ListView;

    .line 49
    iput-object p3, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mListener:Lim/doit/pro/ui/component/DHomeMenuList$OnHomeMenuListListener;

    .line 50
    new-instance v0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;-><init>(Lim/doit/pro/ui/component/DHomeMenuList;Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mMenuAdapter:Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;

    .line 51
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mMenuList:Landroid/widget/ListView;

    iget-object v1, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mMenuAdapter:Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mMenuList:Landroid/widget/ListView;

    new-instance v1, Lim/doit/pro/ui/component/DHomeMenuList$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/DHomeMenuList$1;-><init>(Lim/doit/pro/ui/component/DHomeMenuList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/DHomeMenuList;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mBoxes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/DHomeMenuList;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/DHomeMenuList;Lim/doit/pro/model/Box;)Z
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DHomeMenuList;->isCurrentBox(Lim/doit/pro/model/Box;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/DHomeMenuList;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mMenuList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/DHomeMenuList;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lim/doit/pro/ui/component/DHomeMenuList;->isFirst:Z

    return v0
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/DHomeMenuList;Lim/doit/pro/model/Box;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DHomeMenuList;->changeSelectedBox(Lim/doit/pro/model/Box;)V

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/ui/component/DHomeMenuList;Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lim/doit/pro/ui/component/DHomeMenuList;->isFirst:Z

    return-void
.end method

.method private changeSelectedBox(Lim/doit/pro/model/Box;)V
    .locals 3
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DHomeMenuList;->isCurrentBox(Lim/doit/pro/model/Box;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 108
    .local v0, "isChanged":Z
    :goto_0
    iput-object p1, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mCurrentBox:Lim/doit/pro/model/Box;

    .line 109
    if-eqz v0, :cond_1

    .line 110
    iget-object v1, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mListener:Lim/doit/pro/ui/component/DHomeMenuList$OnHomeMenuListListener;

    iget-object v2, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mCurrentBox:Lim/doit/pro/model/Box;

    invoke-interface {v1, v2}, Lim/doit/pro/ui/component/DHomeMenuList$OnHomeMenuListListener;->changeBox(Lim/doit/pro/model/Box;)V

    .line 114
    :goto_1
    return-void

    .line 107
    .end local v0    # "isChanged":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    .restart local v0    # "isChanged":Z
    :cond_1
    iget-object v1, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mListener:Lim/doit/pro/ui/component/DHomeMenuList$OnHomeMenuListListener;

    invoke-interface {v1}, Lim/doit/pro/ui/component/DHomeMenuList$OnHomeMenuListListener;->closeMenuList()V

    goto :goto_1
.end method

.method private checkCurrentBoxIsExist()V
    .locals 4

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "currentBoxIsExist":Z
    iget-object v2, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 85
    :goto_0
    if-nez v0, :cond_1

    .line 86
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    invoke-virtual {v2}, Lim/doit/pro/db/persist/BoxDao;->findToday()Lim/doit/pro/model/Box;

    move-result-object v2

    iput-object v2, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mCurrentBox:Lim/doit/pro/model/Box;

    .line 87
    const/4 v2, 0x1

    iput-boolean v2, p0, Lim/doit/pro/ui/component/DHomeMenuList;->isFirst:Z

    .line 89
    :cond_1
    return-void

    .line 79
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Box;

    .line 80
    .local v1, "item":Lim/doit/pro/model/Box;
    invoke-direct {p0, v1}, Lim/doit/pro/ui/component/DHomeMenuList;->isCurrentBox(Lim/doit/pro/model/Box;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 82
    goto :goto_0
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mCurrentBox:Lim/doit/pro/model/Box;

    .line 93
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lim/doit/pro/utils/BoxUtils;->prepareBoxesForView(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mBoxes:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method private isCurrentBox(Lim/doit/pro/model/Box;)Z
    .locals 3
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    const/4 v0, 0x1

    .line 97
    iget-object v1, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mCurrentBox:Lim/doit/pro/model/Box;

    invoke-virtual {v1}, Lim/doit/pro/model/Box;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mCurrentBox:Lim/doit/pro/model/Box;

    invoke-virtual {v1}, Lim/doit/pro/model/Box;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lim/doit/pro/model/Box;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    iget-object v1, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mCurrentBox:Lim/doit/pro/model/Box;

    invoke-virtual {v1}, Lim/doit/pro/model/Box;->getType()Lim/doit/pro/model/enums/BoxType;

    move-result-object v1

    invoke-virtual {p1}, Lim/doit/pro/model/Box;->getType()Lim/doit/pro/model/enums/BoxType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentBox()Lim/doit/pro/model/Box;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mCurrentBox:Lim/doit/pro/model/Box;

    return-object v0
.end method

.method public reloadDataAndRefresh()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lim/doit/pro/utils/BoxUtils;->prepareBoxesForView(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mBoxes:Ljava/util/ArrayList;

    .line 65
    invoke-direct {p0}, Lim/doit/pro/ui/component/DHomeMenuList;->checkCurrentBoxIsExist()V

    .line 66
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList;->mMenuAdapter:Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;->notifyDataSetChanged()V

    .line 67
    return-void
.end method
