.class public Lim/doit/pro/ui/component/TagFilterDialog;
.super Ljava/lang/Object;
.source "TagFilterDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;,
        Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;
    }
.end annotation


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private listAdapter:Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsAll:Z

.field private mIsUntagged:Z

.field private mSelectedTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private okBtn:Landroid/widget/Button;

.field private onCancalClick:Landroid/view/View$OnClickListener;

.field private onItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private onOKClick:Landroid/view/View$OnClickListener;

.field private onTagFilterFinishListner:Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mSelectedTags:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mTags:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Lim/doit/pro/ui/component/TagFilterDialog$1;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/TagFilterDialog$1;-><init>(Lim/doit/pro/ui/component/TagFilterDialog;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->onItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 132
    new-instance v0, Lim/doit/pro/ui/component/TagFilterDialog$2;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/TagFilterDialog$2;-><init>(Lim/doit/pro/ui/component/TagFilterDialog;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->onCancalClick:Landroid/view/View$OnClickListener;

    .line 140
    new-instance v0, Lim/doit/pro/ui/component/TagFilterDialog$3;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/TagFilterDialog$3;-><init>(Lim/doit/pro/ui/component/TagFilterDialog;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->onOKClick:Landroid/view/View$OnClickListener;

    .line 56
    iput-object p1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/TagFilterDialog;)Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->onTagFilterFinishListner:Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/TagFilterDialog;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lim/doit/pro/ui/component/TagFilterDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$10(Lim/doit/pro/ui/component/TagFilterDialog;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/TagFilterDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/TagFilterDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mSelectedTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/TagFilterDialog;Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mIsAll:Z

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/TagFilterDialog;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mIsUntagged:Z

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/ui/component/TagFilterDialog;)Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->listAdapter:Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lim/doit/pro/ui/component/TagFilterDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lim/doit/pro/ui/component/TagFilterDialog;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mIsAll:Z

    return v0
.end method

.method static synthetic access$9(Lim/doit/pro/ui/component/TagFilterDialog;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mIsUntagged:Z

    return v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 155
    :cond_0
    return-void
.end method

.method private initData(Lim/doit/pro/ui/model/TagFilter;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "tagFilter"    # Lim/doit/pro/ui/model/TagFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/ui/model/TagFilter;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mSelectedTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p1}, Lim/doit/pro/ui/model/TagFilter;->getTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mSelectedTags:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lim/doit/pro/ui/model/TagFilter;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    :cond_0
    invoke-virtual {p1}, Lim/doit/pro/ui/model/TagFilter;->isUntagged()Z

    move-result v0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mIsUntagged:Z

    .line 90
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mSelectedTags:Ljava/util/ArrayList;

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mIsUntagged:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mIsAll:Z

    .line 91
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mTags:Ljava/util/ArrayList;

    const v1, 0x7f0c0041

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mTags:Ljava/util/ArrayList;

    const v1, 0x7f0c0042

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 95
    return-void

    .line 90
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initViewAndViewContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00fc

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mDialog:Landroid/app/Dialog;

    .line 70
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03005b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->titleView:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->cancelBtn:Landroid/widget/Button;

    .line 73
    const v1, 0x7f0b0117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->okBtn:Landroid/widget/Button;

    .line 74
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->titleView:Landroid/widget/TextView;

    const v2, 0x7f0c017a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 75
    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->listView:Landroid/widget/ListView;

    .line 76
    new-instance v1, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;

    invoke-direct {v1, p0, v4}, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/TagFilterDialog;Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;)V

    iput-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->listAdapter:Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;

    .line 77
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lim/doit/pro/ui/component/TagFilterDialog;->listAdapter:Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 79
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 80
    return-void
.end method


# virtual methods
.method public setOnTagFilterFinishListener(Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;

    .prologue
    .line 52
    iput-object p1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->onTagFilterFinishListner:Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;

    .line 53
    return-void
.end method

.method public showDialog(Lim/doit/pro/ui/model/TagFilter;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "tagFilter"    # Lim/doit/pro/ui/model/TagFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/ui/model/TagFilter;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/TagFilterDialog;->initData(Lim/doit/pro/ui/model/TagFilter;Ljava/util/ArrayList;)V

    .line 62
    invoke-direct {p0}, Lim/doit/pro/ui/component/TagFilterDialog;->initViewAndViewContent()V

    .line 63
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->onItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->cancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->onCancalClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog;->okBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog;->onOKClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
