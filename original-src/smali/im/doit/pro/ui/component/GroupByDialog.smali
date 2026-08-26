.class public Lim/doit/pro/ui/component/GroupByDialog;
.super Ljava/lang/Object;
.source "GroupByDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/GroupByDialog$ListAdapter;,
        Lim/doit/pro/ui/component/GroupByDialog$OnGroupByFinishListener;
    }
.end annotation


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private listView:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private mDefaultGroupby:Lim/doit/pro/model/enums/GroupByType;

.field private mDialog:Landroid/app/Dialog;

.field private mGroupbys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/enums/GroupByType;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private onGroupByFinishListner:Lim/doit/pro/ui/component/GroupByDialog$OnGroupByFinishListener;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lim/doit/pro/ui/component/GroupByDialog;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/GroupByDialog;Lim/doit/pro/model/enums/GroupByType;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lim/doit/pro/ui/component/GroupByDialog;->mDefaultGroupby:Lim/doit/pro/model/enums/GroupByType;

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/GroupByDialog;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lim/doit/pro/ui/component/GroupByDialog;->mGroupbys:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/GroupByDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog;->mGroupbys:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/GroupByDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/GroupByDialog;)Lim/doit/pro/model/enums/GroupByType;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog;->mDefaultGroupby:Lim/doit/pro/model/enums/GroupByType;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/GroupByDialog;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$6(Lim/doit/pro/ui/component/GroupByDialog;)Lim/doit/pro/ui/component/GroupByDialog$OnGroupByFinishListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog;->onGroupByFinishListner:Lim/doit/pro/ui/component/GroupByDialog$OnGroupByFinishListener;

    return-object v0
.end method

.method static synthetic access$7(Lim/doit/pro/ui/component/GroupByDialog;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lim/doit/pro/ui/component/GroupByDialog;->dismissDialog()V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public setOnGroupByFinishListener(Lim/doit/pro/ui/component/GroupByDialog$OnGroupByFinishListener;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/GroupByDialog$OnGroupByFinishListener;

    .prologue
    .line 43
    iput-object p1, p0, Lim/doit/pro/ui/component/GroupByDialog;->onGroupByFinishListner:Lim/doit/pro/ui/component/GroupByDialog$OnGroupByFinishListener;

    .line 44
    return-void
.end method

.method public showDialog(Lim/doit/pro/model/enums/GroupByType;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "selectedGroupBy"    # Lim/doit/pro/model/enums/GroupByType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/enums/GroupByType;",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/enums/GroupByType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "groupbys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/enums/GroupByType;>;"
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/GroupByDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00fc

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/GroupByDialog;->mDialog:Landroid/app/Dialog;

    .line 54
    iget-object v1, p0, Lim/doit/pro/ui/component/GroupByDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    const v2, 0x7f030062

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 54
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lim/doit/pro/ui/component/GroupByDialog;->titleView:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/ui/component/GroupByDialog;->cancelBtn:Landroid/widget/Button;

    .line 58
    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lim/doit/pro/ui/component/GroupByDialog;->listView:Landroid/widget/ListView;

    .line 59
    iget-object v1, p0, Lim/doit/pro/ui/component/GroupByDialog;->titleView:Landroid/widget/TextView;

    const v2, 0x7f0c0175

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 60
    iget-object v1, p0, Lim/doit/pro/ui/component/GroupByDialog;->listView:Landroid/widget/ListView;

    new-instance v2, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter;

    invoke-direct {v2, p0, p1, p2}, Lim/doit/pro/ui/component/GroupByDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/GroupByDialog;Lim/doit/pro/model/enums/GroupByType;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v1, p0, Lim/doit/pro/ui/component/GroupByDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 62
    iget-object v1, p0, Lim/doit/pro/ui/component/GroupByDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 63
    iget-object v1, p0, Lim/doit/pro/ui/component/GroupByDialog;->listView:Landroid/widget/ListView;

    new-instance v2, Lim/doit/pro/ui/component/GroupByDialog$1;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/GroupByDialog$1;-><init>(Lim/doit/pro/ui/component/GroupByDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    iget-object v1, p0, Lim/doit/pro/ui/component/GroupByDialog;->cancelBtn:Landroid/widget/Button;

    new-instance v2, Lim/doit/pro/ui/component/GroupByDialog$2;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/GroupByDialog$2;-><init>(Lim/doit/pro/ui/component/GroupByDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method
