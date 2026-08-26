.class public Lim/doit/pro/ui/component/SelectPriorityDialog;
.super Ljava/lang/Object;
.source "SelectPriorityDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter;,
        Lim/doit/pro/ui/component/SelectPriorityDialog$OnPriorityFinishListner;
    }
.end annotation


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private listView:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private mDefaultPriority:I

.field private mDialog:Landroid/app/Dialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPriorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onPriorityFinishListner:Lim/doit/pro/ui/component/SelectPriorityDialog$OnPriorityFinishListner;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mPriorities:Ljava/util/ArrayList;

    .line 51
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mPriorities:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mPriorities:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mPriorities:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mPriorities:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SelectPriorityDialog;I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mDefaultPriority:I

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SelectPriorityDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mPriorities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectPriorityDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/SelectPriorityDialog;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mDefaultPriority:I

    return v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/SelectPriorityDialog;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/SelectPriorityDialog;)Lim/doit/pro/ui/component/SelectPriorityDialog$OnPriorityFinishListner;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->onPriorityFinishListner:Lim/doit/pro/ui/component/SelectPriorityDialog$OnPriorityFinishListner;

    return-object v0
.end method

.method static synthetic access$6(Lim/doit/pro/ui/component/SelectPriorityDialog;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectPriorityDialog;->dismissDialog()V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public setOnPriorityFinishListner(Lim/doit/pro/ui/component/SelectPriorityDialog$OnPriorityFinishListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/SelectPriorityDialog$OnPriorityFinishListner;

    .prologue
    .line 44
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->onPriorityFinishListner:Lim/doit/pro/ui/component/SelectPriorityDialog$OnPriorityFinishListner;

    .line 45
    return-void
.end method

.method public showDialog(I)V
    .locals 5
    .param p1, "defaultPriority"    # I

    .prologue
    .line 58
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00fc

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mDialog:Landroid/app/Dialog;

    .line 59
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030062

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->titleView:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->cancelBtn:Landroid/widget/Button;

    .line 62
    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->listView:Landroid/widget/ListView;

    .line 63
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->titleView:Landroid/widget/TextView;

    const v2, 0x7f0c00ef

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 64
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->listView:Landroid/widget/ListView;

    new-instance v2, Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter;

    invoke-direct {v2, p0, p1}, Lim/doit/pro/ui/component/SelectPriorityDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/SelectPriorityDialog;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 66
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 67
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->listView:Landroid/widget/ListView;

    new-instance v2, Lim/doit/pro/ui/component/SelectPriorityDialog$1;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/SelectPriorityDialog$1;-><init>(Lim/doit/pro/ui/component/SelectPriorityDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog;->cancelBtn:Landroid/widget/Button;

    new-instance v2, Lim/doit/pro/ui/component/SelectPriorityDialog$2;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/SelectPriorityDialog$2;-><init>(Lim/doit/pro/ui/component/SelectPriorityDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method
