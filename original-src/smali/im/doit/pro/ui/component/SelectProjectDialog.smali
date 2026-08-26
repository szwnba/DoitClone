.class public Lim/doit/pro/ui/component/SelectProjectDialog;
.super Ljava/lang/Object;
.source "SelectProjectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;,
        Lim/doit/pro/ui/component/SelectProjectDialog$OnProjectFinishListner;
    }
.end annotation


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private listView:Lim/doit/pro/ui/component/LinearLayoutForListView;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;

.field private mDefaultProject:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mProjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation
.end field

.field private onProjectFinishListner:Lim/doit/pro/ui/component/SelectProjectDialog$OnProjectFinishListner;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mActivity:Landroid/app/Activity;

    .line 61
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectProjectDialog;->initProjects()V

    .line 63
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SelectProjectDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mDefaultProject:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SelectProjectDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectProjectDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectProjectDialog;->selectProjectDone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/SelectProjectDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mProjects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/SelectProjectDialog;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectProjectDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/SelectProjectDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mDefaultProject:Ljava/lang/String;

    return-void
.end method

.method private dismissDialog()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f0b0114

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 119
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "view":Landroid/view/View;
    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 121
    :cond_0
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 123
    :cond_1
    return-void
.end method

.method private initListView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    const v0, 0x7f0b0069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LinearLayoutForListView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->listView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    .line 90
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->listView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    new-instance v1, Lim/doit/pro/ui/component/SelectProjectDialog$2;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SelectProjectDialog$2;-><init>(Lim/doit/pro/ui/component/SelectProjectDialog;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LinearLayoutForListView;->setOnItemClickLinstener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/SelectProjectDialog;Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mAdapter:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;

    .line 105
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->listView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mAdapter:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LinearLayoutForListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 106
    return-void
.end method

.method private initProjects()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v1}, Lim/doit/pro/db/persist/ProjectDao;->findAllNotDead()Ljava/util/ArrayList;

    move-result-object v1

    .line 268
    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->status:Lim/doit/pro/model/enums/GroupByType;

    .line 266
    invoke-static {v1, v2}, Lim/doit/pro/utils/QueryUtils;->sortDatasWithoutGrouper(Ljava/util/ArrayList;Lim/doit/pro/model/enums/GroupByType;)Ljava/util/ArrayList;

    move-result-object v0

    .line 269
    .local v0, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lim/doit/pro/model/BaseEntityWithPos;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mProjects:Ljava/util/ArrayList;

    .line 270
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mProjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 271
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mProjects:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 272
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mProjects:Ljava/util/ArrayList;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mProjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 273
    return-void
.end method

.method private selectProjectDone(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->onProjectFinishListner:Lim/doit/pro/ui/component/SelectProjectDialog$OnProjectFinishListner;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->onProjectFinishListner:Lim/doit/pro/ui/component/SelectProjectDialog$OnProjectFinishListner;

    invoke-interface {v0, p1}, Lim/doit/pro/ui/component/SelectProjectDialog$OnProjectFinishListner;->finish(Ljava/lang/String;)V

    .line 112
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectProjectDialog;->dismissDialog()V

    .line 113
    return-void
.end method


# virtual methods
.method public setOnProjectFinishListner(Lim/doit/pro/ui/component/SelectProjectDialog$OnProjectFinishListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/SelectProjectDialog$OnProjectFinishListner;

    .prologue
    .line 56
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->onProjectFinishListner:Lim/doit/pro/ui/component/SelectProjectDialog$OnProjectFinishListner;

    .line 57
    return-void
.end method

.method public showDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "defaultProjectId"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mDefaultProject:Ljava/lang/String;

    .line 67
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d00fc

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mDialog:Landroid/app/Dialog;

    .line 69
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    const v2, 0x7f030061

    .line 71
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 69
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->titleView:Landroid/widget/TextView;

    .line 73
    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->cancelBtn:Landroid/widget/Button;

    .line 74
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/SelectProjectDialog;->initListView(Landroid/view/View;)V

    .line 76
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->titleView:Landroid/widget/TextView;

    const v2, 0x7f0c00ea

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 78
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 79
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog;->cancelBtn:Landroid/widget/Button;

    new-instance v2, Lim/doit/pro/ui/component/SelectProjectDialog$1;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/SelectProjectDialog$1;-><init>(Lim/doit/pro/ui/component/SelectProjectDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method
