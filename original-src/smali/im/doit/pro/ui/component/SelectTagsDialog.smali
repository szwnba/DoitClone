.class public Lim/doit/pro/ui/component/SelectTagsDialog;
.super Ljava/lang/Object;
.source "SelectTagsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;,
        Lim/doit/pro/ui/component/SelectTagsDialog$OnSelectTagFinishListner;
    }
.end annotation


# static fields
.field private static final MAX_SELECTED:I = 0x5


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private listAdapter:Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;

.field private listView:Lim/doit/pro/ui/component/LinearLayoutForListView;

.field private mActivity:Landroid/app/Activity;

.field private mDialog:Landroid/app/Dialog;

.field private mInflater:Landroid/view/LayoutInflater;

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
            "Lim/doit/pro/model/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private okBtn:Landroid/widget/Button;

.field private onCancalClick:Landroid/view/View$OnClickListener;

.field private onOKClick:Landroid/view/View$OnClickListener;

.field private onSelectTagFinishListner:Lim/doit/pro/ui/component/SelectTagsDialog$OnSelectTagFinishListner;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mSelectedTags:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mTags:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Lim/doit/pro/ui/component/SelectTagsDialog$1;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/SelectTagsDialog$1;-><init>(Lim/doit/pro/ui/component/SelectTagsDialog;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->onCancalClick:Landroid/view/View$OnClickListener;

    .line 137
    new-instance v0, Lim/doit/pro/ui/component/SelectTagsDialog$2;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/SelectTagsDialog$2;-><init>(Lim/doit/pro/ui/component/SelectTagsDialog;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->onOKClick:Landroid/view/View$OnClickListener;

    .line 59
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mActivity:Landroid/app/Activity;

    .line 60
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SelectTagsDialog;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectTagsDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SelectTagsDialog;)Lim/doit/pro/ui/component/SelectTagsDialog$OnSelectTagFinishListner;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->onSelectTagFinishListner:Lim/doit/pro/ui/component/SelectTagsDialog$OnSelectTagFinishListner;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mSelectedTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/SelectTagsDialog;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectTagsDialog;->refreshView()V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/SelectTagsDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f0b0114

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 151
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 152
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "view":Landroid/view/View;
    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 154
    :cond_0
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 156
    :cond_1
    return-void
.end method

.method private initData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "selectedTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mSelectedTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    invoke-static {p1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mSelectedTags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 123
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mTags:Ljava/util/ArrayList;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->tagDao:Lim/doit/pro/db/persist/TagDao;

    invoke-virtual {v1}, Lim/doit/pro/db/persist/TagDao;->findAll()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 127
    return-void
.end method

.method private initViewAndViewContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 71
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d00fc

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mDialog:Landroid/app/Dialog;

    .line 72
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    const v2, 0x7f03005a

    .line 74
    const/4 v3, 0x0

    .line 72
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->titleView:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->cancelBtn:Landroid/widget/Button;

    .line 77
    const v1, 0x7f0b0117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->okBtn:Landroid/widget/Button;

    .line 78
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->titleView:Landroid/widget/TextView;

    const v2, 0x7f0c00f8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 79
    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/LinearLayoutForListView;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->listView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    .line 80
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->listView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    new-instance v2, Lim/doit/pro/ui/component/SelectTagsDialog$3;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/SelectTagsDialog$3;-><init>(Lim/doit/pro/ui/component/SelectTagsDialog;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LinearLayoutForListView;->setOnItemClickLinstener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance v1, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;

    invoke-direct {v1, p0, v4}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/SelectTagsDialog;Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;)V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->listAdapter:Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;

    .line 108
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->listView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->listAdapter:Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LinearLayoutForListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 109
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 110
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 111
    return-void
.end method

.method private refreshView()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->listView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LinearLayoutForListView;->removeAllViews()V

    .line 115
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->listView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->listAdapter:Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LinearLayoutForListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 116
    return-void
.end method


# virtual methods
.method public setOnSelectTagFinishListner(Lim/doit/pro/ui/component/SelectTagsDialog$OnSelectTagFinishListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/SelectTagsDialog$OnSelectTagFinishListner;

    .prologue
    .line 55
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->onSelectTagFinishListner:Lim/doit/pro/ui/component/SelectTagsDialog$OnSelectTagFinishListner;

    .line 56
    return-void
.end method

.method public showDialog(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "selectedTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectTagsDialog;->initData(Ljava/util/ArrayList;)V

    .line 65
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectTagsDialog;->initViewAndViewContent()V

    .line 66
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->cancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->onCancalClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->okBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog;->onOKClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method
