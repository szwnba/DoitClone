.class public Lim/doit/pro/ui/component/AddCommentDialog;
.super Ljava/lang/Object;
.source "AddCommentDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/AddCommentDialog$OnAddCommentFinishListner;
    }
.end annotation


# static fields
.field private static _self:Lim/doit/pro/ui/component/AddCommentDialog;


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private contentET:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private okBtn:Landroid/widget/Button;

.field private onAddCommentFinishListener:Lim/doit/pro/ui/component/AddCommentDialog$OnAddCommentFinishListner;

.field private onCancalClick:Landroid/view/View$OnClickListener;

.field private onOKClick:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v1, Lim/doit/pro/ui/component/AddCommentDialog$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/AddCommentDialog$1;-><init>(Lim/doit/pro/ui/component/AddCommentDialog;)V

    iput-object v1, p0, Lim/doit/pro/ui/component/AddCommentDialog;->onCancalClick:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v1, Lim/doit/pro/ui/component/AddCommentDialog$2;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/AddCommentDialog$2;-><init>(Lim/doit/pro/ui/component/AddCommentDialog;)V

    iput-object v1, p0, Lim/doit/pro/ui/component/AddCommentDialog;->onOKClick:Landroid/view/View$OnClickListener;

    .line 59
    iput-object p1, p0, Lim/doit/pro/ui/component/AddCommentDialog;->mContext:Landroid/content/Context;

    .line 60
    iget-object v1, p0, Lim/doit/pro/ui/component/AddCommentDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/ui/component/AddCommentDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/AddCommentDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00fc

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/AddCommentDialog;->mDialog:Landroid/app/Dialog;

    .line 63
    iget-object v1, p0, Lim/doit/pro/ui/component/AddCommentDialog;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03004e

    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x0

    .line 63
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lim/doit/pro/ui/component/AddCommentDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 67
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/AddCommentDialog;->initView(Landroid/view/View;)V

    .line 68
    invoke-direct {p0}, Lim/doit/pro/ui/component/AddCommentDialog;->initListener()V

    .line 69
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/AddCommentDialog;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lim/doit/pro/ui/component/AddCommentDialog;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/AddCommentDialog;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lim/doit/pro/ui/component/AddCommentDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/AddCommentDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog;->contentET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/AddCommentDialog;)Lim/doit/pro/ui/component/AddCommentDialog$OnAddCommentFinishListner;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog;->onAddCommentFinishListener:Lim/doit/pro/ui/component/AddCommentDialog$OnAddCommentFinishListner;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/AddCommentDialog;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog;->okBtn:Landroid/widget/Button;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog;->contentET:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 155
    :cond_0
    return-void
.end method

.method public static finish()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lim/doit/pro/ui/component/AddCommentDialog;->_self:Lim/doit/pro/ui/component/AddCommentDialog;

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lim/doit/pro/ui/component/AddCommentDialog;->_self:Lim/doit/pro/ui/component/AddCommentDialog;

    .line 56
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lim/doit/pro/ui/component/AddCommentDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Lim/doit/pro/ui/component/AddCommentDialog;->_self:Lim/doit/pro/ui/component/AddCommentDialog;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lim/doit/pro/ui/component/AddCommentDialog;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/AddCommentDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lim/doit/pro/ui/component/AddCommentDialog;->_self:Lim/doit/pro/ui/component/AddCommentDialog;

    .line 49
    :cond_0
    sget-object v0, Lim/doit/pro/ui/component/AddCommentDialog;->_self:Lim/doit/pro/ui/component/AddCommentDialog;

    return-object v0
.end method

.method private hideSoftInput()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog;->contentET:Landroid/widget/EditText;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 148
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog;->cancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/ui/component/AddCommentDialog;->onCancalClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog;->okBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/ui/component/AddCommentDialog;->onOKClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog;->contentET:Landroid/widget/EditText;

    new-instance v1, Lim/doit/pro/ui/component/AddCommentDialog$4;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/AddCommentDialog$4;-><init>(Lim/doit/pro/ui/component/AddCommentDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    const v0, 0x7f0b003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0c01bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    const v0, 0x7f0b0092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog;->cancelBtn:Landroid/widget/Button;

    .line 87
    const v0, 0x7f0b0117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog;->okBtn:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog;->okBtn:Landroid/widget/Button;

    const v1, 0x7f0c01a3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 89
    const v0, 0x7f0b0104

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog;->contentET:Landroid/widget/EditText;

    .line 90
    return-void
.end method


# virtual methods
.method public setOnAddCommentFinishListner(Lim/doit/pro/ui/component/AddCommentDialog$OnAddCommentFinishListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/AddCommentDialog$OnAddCommentFinishListner;

    .prologue
    .line 42
    iput-object p1, p0, Lim/doit/pro/ui/component/AddCommentDialog;->onAddCommentFinishListener:Lim/doit/pro/ui/component/AddCommentDialog$OnAddCommentFinishListner;

    .line 43
    return-void
.end method

.method public showDialog()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 73
    iget-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog;->contentET:Landroid/widget/EditText;

    new-instance v1, Lim/doit/pro/ui/component/AddCommentDialog$3;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/AddCommentDialog$3;-><init>(Lim/doit/pro/ui/component/AddCommentDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method
