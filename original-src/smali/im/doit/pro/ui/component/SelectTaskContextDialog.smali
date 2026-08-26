.class public Lim/doit/pro/ui/component/SelectTaskContextDialog;
.super Ljava/lang/Object;
.source "SelectTaskContextDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;,
        Lim/doit/pro/ui/component/SelectTaskContextDialog$OnTaskContextFinishListner;
    }
.end annotation


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private listView:Lim/doit/pro/ui/component/LinearLayoutForListView;

.field private mActivity:Landroid/app/Activity;

.field private mDefaultTaskContext:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTaskContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/TaskContext;",
            ">;"
        }
    .end annotation
.end field

.field private onTaskContextFinishListner:Lim/doit/pro/ui/component/SelectTaskContextDialog$OnTaskContextFinishListner;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mActivity:Landroid/app/Activity;

    .line 57
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/TaskContextDao;->findAllNotDeleted()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mTaskContexts:Ljava/util/ArrayList;

    .line 59
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mTaskContexts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mTaskContexts:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SelectTaskContextDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mDefaultTaskContext:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SelectTaskContextDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->selectTaskContextDone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectTaskContextDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mTaskContexts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/SelectTaskContextDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/SelectTaskContextDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mDefaultTaskContext:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/SelectTaskContextDialog;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->dismissDialog()V

    return-void
.end method

.method private dismissDialog()V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f0b0114

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 110
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "view":Landroid/view/View;
    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 112
    :cond_0
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 114
    :cond_1
    return-void
.end method

.method private selectTaskContextDone(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->onTaskContextFinishListner:Lim/doit/pro/ui/component/SelectTaskContextDialog$OnTaskContextFinishListner;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->onTaskContextFinishListner:Lim/doit/pro/ui/component/SelectTaskContextDialog$OnTaskContextFinishListner;

    invoke-interface {v0, p1}, Lim/doit/pro/ui/component/SelectTaskContextDialog$OnTaskContextFinishListner;->finish(Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->dismissDialog()V

    .line 104
    return-void
.end method


# virtual methods
.method public setOnTaskContextFinishListner(Lim/doit/pro/ui/component/SelectTaskContextDialog$OnTaskContextFinishListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/SelectTaskContextDialog$OnTaskContextFinishListner;

    .prologue
    .line 52
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->onTaskContextFinishListner:Lim/doit/pro/ui/component/SelectTaskContextDialog$OnTaskContextFinishListner;

    .line 53
    return-void
.end method

.method public showDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "defaultTaskContextId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 64
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mDefaultTaskContext:Ljava/lang/String;

    .line 65
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d00fc

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mDialog:Landroid/app/Dialog;

    .line 66
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    const v2, 0x7f030061

    .line 68
    const/4 v3, 0x0

    .line 66
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->titleView:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->cancelBtn:Landroid/widget/Button;

    .line 71
    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/LinearLayoutForListView;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->listView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    .line 72
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->listView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    new-instance v2, Lim/doit/pro/ui/component/SelectTaskContextDialog$1;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/SelectTaskContextDialog$1;-><init>(Lim/doit/pro/ui/component/SelectTaskContextDialog;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LinearLayoutForListView;->setOnItemClickLinstener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->listView:Lim/doit/pro/ui/component/LinearLayoutForListView;

    new-instance v2, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;

    invoke-direct {v2, p0, v4}, Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/SelectTaskContextDialog;Lim/doit/pro/ui/component/SelectTaskContextDialog$ListAdapter;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LinearLayoutForListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 87
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->titleView:Landroid/widget/TextView;

    const v2, 0x7f0c00e8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 89
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 90
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog;->cancelBtn:Landroid/widget/Button;

    new-instance v2, Lim/doit/pro/ui/component/SelectTaskContextDialog$2;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/SelectTaskContextDialog$2;-><init>(Lim/doit/pro/ui/component/SelectTaskContextDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method
